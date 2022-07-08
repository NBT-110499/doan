package vn.t3h.t3h_2202.service;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import vn.t3h.t3h_2202.dto.ResponseDto;
import vn.t3h.t3h_2202.dto.UserDto;
import vn.t3h.t3h_2202.entity.UserContactEntity;
import vn.t3h.t3h_2202.entity.UserEntity;
import vn.t3h.t3h_2202.paging.PagingAndSortObject;
import vn.t3h.t3h_2202.repository.ProductRepository;
import vn.t3h.t3h_2202.repository.UserContractRepository;
import vn.t3h.t3h_2202.repository.UserRepository;

import javax.transaction.Transactional;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.UUID;

//import vn.t3h.t3h_2202.util.DBUtils;

@Service// tạo ra 1 object được lưu trong spring bean
@Transactional
public class UserService {

//    private beanA beanA =new ;
//    private beanB beanb;
//    private beanC beanc;

    @Autowired
    UserRepository userRepository;
    @Autowired
    UserContractRepository userContractRepository;
    @Autowired
    PasswordEncoder passwordEncoder;

    public UserDto saveUser(UserDto userDto) {
        UserEntity userEntity = userDto.conVertEntity();
        userEntity.setPassword(passwordEncoder.encode(userDto.getPassword()));
        userRepository.save(userEntity);
        return userDto;
    }

    public UserDto editUser(UserDto userDto) {
        UserEntity entity = userRepository.findById(userDto.getId()).get();
        if (entity == null) {
            System.out.println("Không tồn tại user");
            throw new RuntimeException("user không tồn tại");
        }
        UserEntity userEntity = userDto.conVertEntity();
        userEntity.setPassword(entity.getPassword());
        userRepository.save(userEntity);
        return userDto;
    }

    public UserDto detail(Long id) {
        UserEntity userEntity = userRepository.findById(id).get();
        UserDto dto = new UserDto();
        BeanUtils.copyProperties(userEntity, dto);
        return dto;
    }

    public UserDto editUser1(UserDto userDto) {
        UserEntity entity = userRepository.findById(userDto.getId()).get();
        if (entity == null) {
            System.out.println("Không tồn tại user");
            throw new RuntimeException("user không tồn tại");
        }
        UserEntity userEntity = userDto.conVertEntity();
        userRepository.save(userEntity);
        return userDto;
    }

    public String changePass(String oldPass, String newPass, String rePass) {
        Long id = ((UserEntity) SecurityContextHolder.getContext().getAuthentication().getPrincipal()).getId();
        UserEntity userEntity = userRepository.findById(id).get();

        if (!passwordEncoder.matches(oldPass, userEntity.getPassword())) {
            return "Mật khẩu cũ không đúng nhập lại";
        } else {
            userEntity.setPassword(passwordEncoder.encode(newPass));
            userEntity.setRestPassword(passwordEncoder.encode(rePass));
            return "Đổi mật khẩu thành công đăng xuất để đăng nhập lại";
        }
    }

    @Autowired
    ProductRepository productRepository;

    public void danhsach(PagingAndSortObject pagin1gAndSortObject) throws SQLException {
        pagin1gAndSortObject.findAll(userRepository);
    }

    @Autowired
    EmailService emailService;

    public ResponseDto verifyPassword(String token) {
        UserEntity userEntity = userRepository.findFirstByToken(token);
        if (userEntity == null || userEntity.getTimeReset() == null || userEntity.getRestPassword() == null)
            return ResponseDto.builder()
                    .code(0).message("Token không đúng").build();

        if (System.currentTimeMillis() - userEntity.getTimeReset().getTime() > 30_000) {
            return ResponseDto.builder()
                    .code(0).message("Token hết hạn 30 giây").build();
        }
        userEntity.setPassword(passwordEncoder.encode(userEntity.getRestPassword()));
        userEntity.setToken(null);
        userEntity.setRestPassword(null);
        userEntity.setTimeReset(null);
        userRepository.save(userEntity);
        return ResponseDto.builder()
                .code(1).message("Đổi mật khẩu thành công").build();
    }

    public ResponseDto sendEmailForgotPassword(String email, String resetPassword) {
        UserEntity userEntity = userRepository.findFirstByEmail(email);
        if (userEntity == null) return ResponseDto.builder()
                .code(0).message("Email không tồn tại").build();
        String token = UUID.randomUUID().toString();


        String title = "XÁC NHẬN EMAIL QUÊN MẬT KHẨU";
        String body = "Click vào đây để xác nhận mật khẩu mới: " + resetPassword +
                " <a href=http://localhost:8080/verify-forgot/" + token + ">Đổi mật khẩu</a>";
        try {
            emailService.sendMail(title, body, email);
        } catch (Exception e) {
            return ResponseDto.builder()
                    .code(0).message("Gửi mail không thành công").build();
        }
        userEntity.setToken(token);
        userEntity.setRestPassword(resetPassword);
        userEntity.setTimeReset(new Timestamp(System.currentTimeMillis()));
        userRepository.save(userEntity);
        return ResponseDto.builder()
                .code(1).message("Gửi mail thành công, kiểm tra hòm thư để xác nhận").build();

    }
    public void deleteById(Long userId) {
        userRepository.deleteById(userId);
    }
}