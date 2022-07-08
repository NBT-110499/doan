package vn.t3h.t3h_2202.controller.backend;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import vn.t3h.t3h_2202.dto.CartDto;
import vn.t3h.t3h_2202.entity.UserEntity;
import vn.t3h.t3h_2202.service.CartService;

import javax.servlet.http.HttpServletRequest;
import javax.transaction.Transactional;
import java.sql.SQLException;

@Controller
@RequestMapping("sercurity")
public class CartController {
    @Autowired
    CartService cartService;

    @RequestMapping("cart/{id}")
    public String cartPage(Model model, @PathVariable Long id){
     model.addAttribute("cart",cartService.findCartByUserId(id));
        model.addAttribute("totalmoney",cartService.sumMoney(id));
        model.addAttribute("userId",id);
        return "security/cart" ;
    }
    @PostMapping(value = "addCart-form",consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE)
    public String addCart(CartDto cartDto, RedirectAttributes redirectAttributes,
                          HttpServletRequest response, HttpServletRequest  requestm
    ) throws SQLException {
        Long id2 = null;
        try{
            id2 =  ((UserEntity) SecurityContextHolder.getContext().getAuthentication().getPrincipal()).getId();
            System.out.println(id2);
        }
        catch (Exception e){
            System.out.println("Chua dang nhap");
        }
        if (id2 == null){
            System.out.println("dang nhap di");
        }
        if (id2 != null )
            cartService.saveCart(cartDto);
        else System.out.println("Dang nhap de them gio hang");
        //       Long id2 = ((UserEntity)SecurityContextHolder.getContext().getAuthentication().getPrincipal()).getId();

        return  "redirect:/sercurity/cart/" +id2;
    }
    @Transactional
    @RequestMapping("/delete/{idUser}/{idProduct}")
    public String deleseUser(@PathVariable Long idUser , @PathVariable Long idProduct) throws SQLException{
//        System.out.println("User Id:" +idUser);
        cartService.deleteCart(idUser,idProduct);
        return "redirect:/sercurity/cart/" +idUser;
    }
//    @RequestMapping("/{id}")
//    public String cartPage11( Model model, @PathVariable Long id){
//        model.addAttribute("cart",cartService.findCartByUserId(id));
//        model.addAttribute("totalmoney",cartService.sumMoney(id));
//        model.addAttribute("userId",id);
//
//        return "cart" ;
//    }

}
