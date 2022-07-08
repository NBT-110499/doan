package vn.t3h.t3h_2202.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import vn.t3h.t3h_2202.entity.ReviewEntity;

import java.util.List;


public interface ReviewRepository extends JpaRepository<ReviewEntity, Long> {
    @Query(value = "select * from review  " +
            "where review.idproduct=?1" +
            " order by id limit 10", nativeQuery = true)
    List<ReviewEntity> findAllByIdproduct(Long id);
}
