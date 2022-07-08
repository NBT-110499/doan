package vn.t3h.t3h_2202.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import vn.t3h.t3h_2202.entity.BrandEntity;
import vn.t3h.t3h_2202.entity.CategoryEntity;
import vn.t3h.t3h_2202.entity.ProductEntity;

import java.math.BigDecimal;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ProductDto {
    Long id;
    String name;
    String description;
    Long price;
    Long brandId;
    Long categoryId;
    String image;
    Long createBy;
    String cpu;
    String ram;
    String display;
    public ProductEntity conVertEntity1() {
        ProductEntity productEntity = new ProductEntity();
        productEntity.setName(name);
        productEntity.setDescription(description);
        productEntity.setPrice(price);
        productEntity.setCategoryId(categoryId);
        if (id != null)
            productEntity.setId(id);
        productEntity.setBrandId(brandId);
        productEntity.setImage(image);
        productEntity.setCreateBy(createBy);
        productEntity.setCpu(cpu);
        productEntity.setRam(ram);
        productEntity.setDisplay(display);
        return productEntity;
    }
}