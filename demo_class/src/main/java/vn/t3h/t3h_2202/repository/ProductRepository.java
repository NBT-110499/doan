package vn.t3h.t3h_2202.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import vn.t3h.t3h_2202.entity.ProductEntity;

import java.util.List;

public interface ProductRepository  extends JpaRepository<ProductEntity , Long> {
    //  @Query("select p from ProductEntity p order by p.id ")
    @Query(value = "select * from Product  order by id limit 6" , nativeQuery = true)
    List<ProductEntity> findTop6();

    List<ProductEntity> findAllByCategoryId(Long CategoryId);
    List<ProductEntity> findAllByBrandId(Long BrandId);

//    @Query("select p from ProductEntity p where  (?1 is null or p.name like %?1%) and (?2 is null or p.createBy = ?2)")
//    List<ProductEntity> search(String keyword, Long userId);
    @Query("select p from ProductEntity p where p.name like %?1% ")
    List<ProductEntity> search(String keyword);

}
