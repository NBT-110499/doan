package vn.t3h.t3h_2202.dto;

import lombok.Data;
import vn.t3h.t3h_2202.entity.CheckoutEntity;

@Data
public class CheckoutDto {
    public Long id;
    public Long userId;
    public String name;
    public String address;
    public String phone;
    public String notice;
    public Long money;

    public CheckoutEntity convertEntity(){
        CheckoutEntity checkoutEntity =new CheckoutEntity();
        checkoutEntity.setUserid(userId);
        checkoutEntity.setName(name);
        checkoutEntity.setAddress(address);
        checkoutEntity.setPhone(phone);
        checkoutEntity.setNotice(notice);
        checkoutEntity.setMoney(money);
        return checkoutEntity;
    }
}
