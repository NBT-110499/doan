package vn.t3h.t3h_2202.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import vn.t3h.t3h_2202.entity.CartEntity;

import java.util.List;

public interface CartRepository  extends JpaRepository<CartEntity,Long > {
    @Query(value = "select * from cart  " +
            " where cart.IDUSER = ?1 ", nativeQuery = true)
    List<CartEntity> findAllByUserId(Long id);
    @Modifying
    @Query(value = "delete from cart where IDUSER = ?1 and IDPRODUCT = ?2" , nativeQuery = true)
    void deleteItem(Long idUser, Long idProduct);
}
