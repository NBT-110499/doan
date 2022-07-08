package vn.t3h.t3h_2202.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import vn.t3h.t3h_2202.entity.CartEntity;
import vn.t3h.t3h_2202.entity.ProductEntity;
import vn.t3h.t3h_2202.entity.UserEntity;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class CartDto {
    public Long id;
    public Long idUser;
    public Long idProduct;
    public Long quantity;
    public Long total1;
    public Long total;
    public ProductEntity productEntity;
    public UserEntity userEntity;

    public CartEntity conVertEntity(){
        CartEntity cartEntity = new CartEntity();
        cartEntity.setId(id);
        cartEntity.setIduser(idUser);
        cartEntity.setIdproduct(idProduct);
        cartEntity.setQuantity(quantity);
        return cartEntity;
    }
}
