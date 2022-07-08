package vn.t3h.t3h_2202.entity;

import lombok.Data;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Data
@Table(name = "cart", schema = "2202", catalog = "")
public class CartEntity {
    @Id
    @Column(name = "ID")
    @GeneratedValue( strategy = GenerationType.IDENTITY)
    private Long id;
    @Basic
    @Column(name = "IDUSER")
    private Long iduser;
    @Basic
    @Column(name = "IDPRODUCT")
    private Long idproduct;
    @Basic
    @Column(name = "QUANTITY")
    public Long quantity;
    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "IDPRODUCT", referencedColumnName = "ID",insertable=false,updatable = false)
    public ProductEntity productEntity;
    @OneToOne(cascade = CascadeType.ALL)
    @JoinColumn(name = "IDUSER", referencedColumnName = "ID",insertable=false,updatable = false)
    public UserEntity userEntity;

}
