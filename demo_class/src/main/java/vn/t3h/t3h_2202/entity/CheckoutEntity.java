package vn.t3h.t3h_2202.entity;

import lombok.Data;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Data
@Table(name = "checkout", schema = "2202", catalog = "")
public class CheckoutEntity {
    @Id
    @Column(name = "ID")
    @GeneratedValue( strategy = GenerationType.IDENTITY)
    private Long id;
    @Basic
    @Column(name = "USERID")
    private Long userid;
    @Basic
    @Column(name = "NAME")
    private String name;
    @Basic
    @Column(name = "ADDRESS")
    private String address;
    @Basic
    @Column(name = "PHONE")
    private String phone;
    @Basic
    @Column(name = "NOTICE")
    private String notice;
    @Basic
    @Column(name = "MONEY")
    private Long money;
}
