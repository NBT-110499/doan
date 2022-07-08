package vn.t3h.t3h_2202.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import vn.t3h.t3h_2202.entity.UserEntity;

import java.util.List;

public interface UserRepository extends JpaRepository<UserEntity , Long> {
    UserEntity findFirstByUserName(String userName);
    UserEntity findFirstByEmail(String email);
    UserEntity findFirstByToken(String token);



}
