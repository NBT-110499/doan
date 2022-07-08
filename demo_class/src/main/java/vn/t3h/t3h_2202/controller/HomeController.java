package vn.t3h.t3h_2202.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import vn.t3h.t3h_2202.dto.CartDto;
import vn.t3h.t3h_2202.dto.ProductDto;
import vn.t3h.t3h_2202.dto.ResponseDto;
import vn.t3h.t3h_2202.dto.ReviewDto;
import vn.t3h.t3h_2202.entity.ProductEntity;
import vn.t3h.t3h_2202.entity.UserEntity;
import vn.t3h.t3h_2202.paging.PagingAndSortObject;
import vn.t3h.t3h_2202.paging.PagingAndSortParam;
import vn.t3h.t3h_2202.service.*;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.security.Principal;
import java.sql.SQLException;
import java.util.List;

@Controller

public class HomeController {
    @Autowired
    ProductService productService;
    @Autowired
    UserService userService;
    @Autowired
    CategoryService categoryService;
    @Autowired
    BrandService brandService;
    @Autowired
    CartService cartService;
    @Autowired
    ReviewService reviewService;

    @GetMapping({"/", "home", "home/page", "home/page/1" })
    public String testHome(Model model) {
        model.addAttribute("product", productService.findTop6());
        model.addAttribute("danhsachCategory", categoryService.getall());
        model.addAttribute("danhsachBrand", brandService.getall());
        model.addAttribute("menu", "home");
        return "home";
    }
    @RequestMapping("category/{id}")
    public String category(Model model, @PathVariable Long id) {
        model.addAttribute("product", productService.listProductByCategory(id));
        model.addAttribute("danhsachCategory", categoryService.getall());
        model.addAttribute("category", categoryService.detail(id));
        return "product";
    }
    @RequestMapping("brand/{id}")
    public String brand(Model model, @PathVariable Long id) {
        model.addAttribute("product", productService.listProductByBrand(id));
        model.addAttribute("danhsachBrand", brandService.getall());
        model.addAttribute("brand", brandService.detail(id));
        return "product";
    }
    @RequestMapping("product/{id}")
    public String product(Model model, @PathVariable Long id) {
        model.addAttribute("product", productService.detail(id));
        model.addAttribute("danhsachCategory", categoryService.getall());
        model.addAttribute("category", categoryService.detail(id));
        model.addAttribute("danhsachBrand", brandService.getall());
        model.addAttribute("brand", brandService.detail(id));
        model.addAttribute("review", reviewService.findAllByProductId(id));
        Long id2 = null;
        try{
            id2 =  ((UserEntity) SecurityContextHolder.getContext().getAuthentication().getPrincipal()).getId();
            System.out.println(id2);
        }
        catch (Exception e){
            System.out.println("Chua dang nhap");
        }
        if ( id2!= null)
            model.addAttribute("user", userService.detail(id2));
        return "product-detail";
    }

    @RequestMapping({"login"})
    public String login(Model model) {
        return "login";
    }

    @RequestMapping({"forgotpassword"})
    public String forgot_pasword(Model model) {
        return "forgotpassword";
    }

    @RequestMapping({"verify-forgot/{token}"})
    public String verify_forgot(@PathVariable String token, RedirectAttributes redirectAttributes, Model model) {
        ResponseDto responseDto = userService.verifyPassword(token);
        if (responseDto.getCode() != 1) {
            model.addAttribute("message", responseDto.getMessage());
            return "forgotpassword";
        }
        redirectAttributes.addFlashAttribute("message", responseDto.getMessage());
        return "redirect:/login";
    }

    @PostMapping(value = "doForgot", consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE)
    public String doForgot(@RequestParam String email, @RequestParam String resetPassword, Model model,
                           HttpServletResponse response, HttpServletRequest request) throws SQLException {
        ResponseDto responseDto = userService.sendEmailForgotPassword(email, resetPassword);
        model.addAttribute("message", responseDto.getMessage());
        return "forgotpassword";
    }
    @PostMapping(value = "review-form", consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE)
    public String createForm(ReviewDto reviewDto,ProductEntity productEntity, RedirectAttributes redirectAttributes, Principal principal,
                             HttpServletResponse response, HttpServletRequest request) throws SQLException {
        //   redirectAttributes.addFlashAttribute("message", "Cập nhật tài khoản "  + " thành công!");
//        ((UserEntity) SecurityContextHolder.getContext().getAuthentication().getPrincipal()).getId();
//        ((UserEntity) SecurityContextHolder.getContext().getAuthentication().getPrincipal()).getId();
//        id3 = ((ProductEntity) productService
        reviewService.saveReview(reviewDto);
        return "redirect:/product/" ;
    }

    @RequestMapping({"login2"})
    public String login2(Model model) {
        return "login2";
    }
    @PreAuthorize("hasRole('ADMIN')")
    @RequestMapping({"sginup"})
    public String sginup(Model model) {
        return "sginup";
    }

    @RequestMapping("product")
    public String productfrontend(Model model) {
        model.addAttribute("product", productService.findTop6());
        model.addAttribute("danhsachCategory", categoryService.getall());
        model.addAttribute("danhsachBrand", brandService.getall());
        model.addAttribute("menu", "product");
        return "product";
    }
    @RequestMapping("about")
    public String about(Model model) {
        model.addAttribute("menu", "about");
        return "about";
    }
    @RequestMapping("laptop")
    public String laptop(Model model) {
        model.addAttribute("menu", "laptop");
        return "laptop";
    }
    @RequestMapping("computer")
    public String computer(Model model) {
        model.addAttribute("menu", "computer");
        return "computer";
    }
    @RequestMapping("end")
    public String end(Model model) {
        return "end";
    }
    @PreAuthorize("hasRole('ADMIN')")
    @RequestMapping({"listproduct2"})
    public String loadPageList(@PagingAndSortParam(path = "product") PagingAndSortObject pagingAndSortObject) throws SQLException {
        productService.danhsach(pagingAndSortObject);
        return "listproduct2";
    }


//    @RequestMapping("list")
//    public String viewHomePage(Model model, @RequestParam("keyword") String keyword) {
//        List<ProductEntity> listProducts = productService.listAll(keyword);
//        model.addAttribute("listProducts", listProducts);
//        model.addAttribute("keyword", keyword);
//
//        return "backend/product/list";
//    }
}
