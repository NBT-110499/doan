package vn.t3h.t3h_2202.entity;

import lombok.Data;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Objects;
@Data
@Entity
@Table(name = "product", schema = "2202", catalog = "")
public class ProductEntity {
    @Id
    @Column(name = "ID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Basic
    @Column(name = "NAME")
    private String name;
    @Basic
    @Column(name = "BRAND_ID")
    private Long brandId;
    @Basic
    @Column(name = "PRICE")
    private Long price;
    @Basic
    @Column(name = "DESCRIPTION")
    private String description;
    @Basic
    @Column(name = "CATEGORY_ID")
    private Long categoryId;
    @Basic
    @Column(name = "IMAGE")
    private String image;
    @Basic
    @Column(name = "CREATE_BY")
    private Long createBy;
    @Basic
    @Column(name = "CPU")
    private String cpu;
    @Basic
    @Column(name = "RAM")
    private String ram;
    @Basic
    @Column(name = "DISPLAY")
    private String display;

}
