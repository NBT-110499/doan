package vn.t3h.t3h_2202.entity;

import lombok.Data;
import net.bytebuddy.dynamic.loading.InjectionClassLoader;
import org.springframework.boot.autoconfigure.web.WebProperties;

import javax.persistence.*;
import java.util.Objects;
@Data
@Entity
@Table(name = "brand", schema = "2202", catalog = "")
public class BrandEntity {

    @Id
    @Column(name = "ID")
    @GeneratedValue( strategy = GenerationType.IDENTITY)
    private Long id;
    @Basic
    @Column(name = "NAME")
    private String name;
    @Basic
    @Column(name = "DESCRIPTION")
    private String description;

}
