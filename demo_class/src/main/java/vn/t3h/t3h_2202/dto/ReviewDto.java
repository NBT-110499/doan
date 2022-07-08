package vn.t3h.t3h_2202.dto;

import lombok.Data;
import vn.t3h.t3h_2202.entity.ReviewEntity;

@Data
public class ReviewDto {
    private Long id;
    private Long idProduct;
    private String name;
    private String email;
    private String comment;

    public ReviewEntity convertEntity(){
        ReviewEntity reviewEntity = new ReviewEntity();
        reviewEntity.setIdProduct(idProduct);
        reviewEntity.setEmail(email);
        reviewEntity.setName(name);
        reviewEntity.setComment(comment);
        return  reviewEntity;
    }
}
