package vn.t3h.t3h_2202.entity;

import lombok.Data;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import javax.persistence.*;
import java.sql.Timestamp;
import java.util.*;

@Data
@Entity
@Table(name = "user", schema = "2202", catalog = "")
public class UserEntity  implements UserDetails {
    @Id
    @Column(name = "ID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @Basic
    @Column(name = "USER_NAME")
    private String userName;
    @Basic
    @Column(name = "PASSWORD")
    private String password;
    @Basic
    @Column(name = "FULL_NAME")
    private String fullName;
    @Basic
    @Column(name = "EMAIL")
    private String email;
    @Basic
    @Column(name = "PHONE")
    private String phone;
    @Basic
    @Column(name = "GENDER")
    private Integer gender;
    @Basic
    @Column(name = "STATUS")
    private Integer status;
    @Basic
    @Column(name = "ROLE")
    private String role;
    @Basic
    @Column(name = "TOKEN")
    private String token;
    @Basic
    @Column(name = "RESET_PASSWORD")
    private String restPassword;
    @Basic
    @Column(name = "TIME_RESET")
    private Timestamp timeReset;

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        Set<GrantedAuthority> authoritySet = new HashSet<>();
        authoritySet.add(new SimpleGrantedAuthority("ROLE_" + this.role));
        return authoritySet;
    }

    @Override
    public String getUsername() {
        return this.userName;
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return status <= 0? false : true;
    }
}
