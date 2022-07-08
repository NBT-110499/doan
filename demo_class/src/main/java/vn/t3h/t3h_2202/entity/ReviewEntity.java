package vn.t3h.t3h_2202.entity;

import lombok.Data;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Data
@Table(name = "review", schema = "2202", catalog = "")
public class ReviewEntity {
    @Id
    @Column(name = "ID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Basic
    @Column(name = "IDPRODUCT")
    private Long idProduct;
    @Basic
    @Column(name = "NAME")
    private String name;
    @Basic
    @Column(name = "EMAIL")
    private String email;
    @Basic
    @Column(name = "COMMENT")
    private String comment;

}
