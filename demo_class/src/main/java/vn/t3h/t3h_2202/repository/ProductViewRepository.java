package vn.t3h.t3h_2202.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import vn.t3h.t3h_2202.entity.ProductEntity;
import vn.t3h.t3h_2202.entity.ProductViewEntity;

import java.util.List;

public interface ProductViewRepository extends JpaRepository<ProductViewEntity, Long> {
    //  @Query("select p from ProductEntity p order by p.id ")
    @Query(value = "select * from product_view  order by id limit 6" , nativeQuery = true)
    List<ProductViewEntity> findTop7();
}
