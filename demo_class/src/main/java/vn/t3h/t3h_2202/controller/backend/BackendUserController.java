package vn.t3h.t3h_2202.controller.backend;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import vn.t3h.t3h_2202.dto.UserDto;
import vn.t3h.t3h_2202.paging.PagingAndSortObject;
import vn.t3h.t3h_2202.paging.PagingAndSortParam;
import vn.t3h.t3h_2202.service.UserService;
//import vn.t3h.t3h_2202.util.DBUtils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.util.List;

@Controller
@RequestMapping("user")
public class BackendUserController {

    @Autowired
    UserService userService;
    @PreAuthorize("hasRole('ADMIN')")
    @GetMapping("create")
    public String loadPageCreate(Model model) {
//        model.addAttribute()
        return "user/create";
    }
    @PreAuthorize("hasRole('ADMIN')")
    @RequestMapping({"sginup"})
    public String sginup(Model model) {
        return "user/sginup";
    }
    @PreAuthorize("hasRole('ADMIN')")
    @GetMapping("list")
    public String loadPageList(@PagingAndSortParam(path = "user") PagingAndSortObject pagingAndSortObject) throws SQLException {
        userService.danhsach(pagingAndSortObject);
        return "user/list";
    }
    @GetMapping("change-pass")
    public String loadChangepass(Model model) {
//        model.addAttribute()
        return "user/change-pass";
    }
    @PostMapping(value = "change-pass", consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE)
    public String changepass(@RequestParam String oldPass, @RequestParam String newPass, String rePass, RedirectAttributes redirectAttributes) {
        redirectAttributes.addFlashAttribute("message", userService.changePass(oldPass, newPass,rePass));
        return "redirect:/user/change-pass";
    }
    @PostMapping(value = "create-form", consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE)
    public String createUserForm(UserDto userDto, RedirectAttributes redirectAttributes,
                                 HttpServletResponse response, HttpServletRequest request) {
        userService.saveUser(userDto);
        redirectAttributes.addFlashAttribute("message", "Tạo mới tài khoản " + userDto.getFullName() + " thành công!");
        return "redirect:/user/create";
    }
    @GetMapping("edit/{id}")
    public String loadPageEdit(Model model, @PathVariable Long id) {
        model.addAttribute("user", userService.detail(id));
        return "user/edit";
    }
    @PostMapping(value = "edit-form", consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE)
    public String editUserForm(UserDto userDto, RedirectAttributes redirectAttributes,
                                 HttpServletResponse response, HttpServletRequest request) throws SQLException {
        userService.editUser(userDto);
        redirectAttributes.addFlashAttribute("message", "Cập nhật tài khoản " + userDto.getFullName() + " thành công!");
        return "redirect:/user/list";
    }
    @GetMapping("edit1/{id}")
    public String loadPageEdit1(Model model, @PathVariable Long id) {
        model.addAttribute("user", userService.detail(id));
        return "user/edit";
    }
    @PostMapping(value = "edit1-form", consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE)
    public String editUserForm1(UserDto userDto, RedirectAttributes redirectAttributes,
                               HttpServletResponse response, HttpServletRequest request) throws SQLException {
        userService.editUser1(userDto);
        redirectAttributes.addFlashAttribute("message", "Cập nhật tài khoản " + userDto.getFullName() + " thành công!");
        return "redirect:/user/list";
    }
    @RequestMapping(value = "/delete")
    public String deleteUser(@RequestParam Long Id, Model model) throws SQLException {
        userService.deleteById(Id);
        return "redirect:/user/list";
    }


}
