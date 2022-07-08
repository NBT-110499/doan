package vn.t3h.t3h_2202.entity;

import lombok.Data;

import javax.persistence.*;
import java.util.Objects;
@Data
@Entity
@Table(name = "category", schema = "2202", catalog = "")
public class CategoryEntity {
    @Id
    @Column(name = "ID")
    @GeneratedValue( strategy = GenerationType.IDENTITY)
    private Long id;
    @Basic
    @Column(name = "PARENT_ID")
    private Long parentId;
    @Basic
    @Column(name = "NAME")
    private String name;
    @Basic
    @Column(name = "DESCRIPTION")
    private String description;
    @Basic
    @Column(name = "CONFIGURATION")
    private String configuration;
}
