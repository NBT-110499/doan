package vn.t3h.t3h_2202.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import vn.t3h.t3h_2202.entity.ProductEntity;
import vn.t3h.t3h_2202.entity.ProductViewEntity;
import vn.t3h.t3h_2202.paging.PagingAndSortObject;
import vn.t3h.t3h_2202.repository.ProductViewRepository;

import java.sql.SQLException;
import java.util.List;

@Service
public class ProductViewService {
    @Autowired
    ProductViewRepository productViewRepository;
    public List<ProductViewEntity> findTop7(){
        return productViewRepository.findTop7();
    }
    public void danhsachView(PagingAndSortObject pagingAndSortObject) throws SQLException {
        pagingAndSortObject.findAll(productViewRepository);
    }
}
