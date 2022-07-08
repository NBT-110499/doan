package vn.t3h.t3h_2202.entity;

import lombok.Data;

import javax.persistence.*;
import java.util.Objects;

@Entity
@Data
@Table(name = "contact", schema = "2202", catalog = "")
public class ContactEntity {
    @Id
    @Column(name = "ID")
    @GeneratedValue( strategy = GenerationType.IDENTITY)
    private Long id;
    @Basic
    @Column(name = "NAME")
    private String name;
    @Basic
    @Column(name = "EMAIL")
    private String email;
    @Basic
    @Column(name = "PHONE")
    private String phone;
    @Basic
    @Column(name = "MESSAGE")
    private String message;

}
