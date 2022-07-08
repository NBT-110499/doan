//package vn.t3h.t3h_2202.util;
//
//import vn.t3h.t3h_2202.dto.CartDto;
//
//import javax.servlet.http.HttpServletRequest;
//
//public class Utils {
//    public static CartDto getCartInSession(HttpServletRequest request) {
//        CartDto cartDto = (CartDto) request.getSession().getAttribute("MyCart");
//        if (cartDto == null){
//            cartDto = new CartDto();
//            request.getSession().setAttribute("Mycart",cartDto);
//        }
//        return cartDto;
//    }
//    public static void removeCartInSession(HttpServletRequest request){
//        request.getSession().setAttribute("Mycart");
//    }
//    public static void storeLastOrderedCartInSession(HttpServletRequest request, CartDto cartDto){
//        request.getSession().setAttribute("lastorderedCart",cartDto);
//    }
//    public static void getLastOrderedCartInSession(HttpServletRequest request){
//        return (CartDto) request.getSession().setAttribute("lastOrderedCart");
//    }
//}
