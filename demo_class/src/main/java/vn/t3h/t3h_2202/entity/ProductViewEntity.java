package vn.t3h.t3h_2202.entity;

import lombok.Data;

import javax.persistence.*;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Objects;

@Entity
@Data
@Table(name = "product_view", schema = "2202", catalog = "")
public class ProductViewEntity {
    @Id
    @Column(name = "ID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Basic
    @Column(name = "NAME")
    private String name;
    @Basic
    @Column(name = "PRICE")
    private BigInteger price;
    @Basic
    @Column(name = "IMAGE")
    private String image;
    @Basic
    @Column(name = "CATEGORY_ID")
    private Long categoryId;
}


