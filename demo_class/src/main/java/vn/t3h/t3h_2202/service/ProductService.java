package vn.t3h.t3h_2202.service;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import vn.t3h.t3h_2202.dto.ProductDto;
import vn.t3h.t3h_2202.dto.ResponseListDto;
import vn.t3h.t3h_2202.entity.ProductEntity;
import vn.t3h.t3h_2202.entity.UserEntity;
import vn.t3h.t3h_2202.paging.PagingAndSortObject;
import vn.t3h.t3h_2202.repository.ProductRepository;
//import vn.t3h.t3h_2202.util.DBUtils;

import java.sql.SQLException;
import java.util.List;

@Service
public class ProductService {
    @Autowired
    ProductRepository productRepository;



    public ProductDto saveProduct(ProductDto productDto) {
        ProductEntity productEntity = productDto.conVertEntity1();
        productEntity.setCreateBy(((UserEntity)SecurityContextHolder
                .getContext().getAuthentication().getPrincipal()).getId());
        productRepository.save(productEntity);
        return productDto;
    }

    public ProductDto editProduct(ProductDto productDto) {
        ProductEntity entity = productRepository.findById(productDto.getId()).get();
        if (entity == null) {
            System.out.println("Không tồn tại product");
            throw new RuntimeException("product không tồn tại");
        }
        ProductEntity productEntity = productDto.conVertEntity1();
        productEntity.setCreateBy(((UserEntity)SecurityContextHolder
                .getContext().getAuthentication().getPrincipal()).getId());
        productRepository.save(productEntity);
        return productDto;
    }

    public ProductDto detail(long id) {
        ProductEntity productEntity = productRepository.findById(id).get();
        ProductDto dto = new ProductDto();
        BeanUtils.copyProperties(productEntity, dto);
        return dto;
    }


    public void danhsach(PagingAndSortObject pagingAndSortObject) throws SQLException {
        pagingAndSortObject.findAll(productRepository);
    }
    public List<ProductEntity> findTop6(){
        return productRepository.findTop6();
    }

    public List<ProductEntity> listProductByCategory(Long category){
        return productRepository.findAllByCategoryId(category);
    }
    public List<ProductEntity> listProductByBrand(Long brand){
        return productRepository.findAllByBrandId(brand);
    }
    public ProductEntity detail(Long id){
        return productRepository.findById(id).orElse(null);
    }


    public List<ProductEntity> listAll(String keyword) {
//        Long uid = null;
//        if (!"ADMIN".equals(((UserEntity)SecurityContextHolder
//                .getContext().getAuthentication().getPrincipal()).getRole())) {
//            uid = ((UserEntity)SecurityContextHolder
//                    .getContext().getAuthentication().getPrincipal()).getId();
//        }
//        return productRepository.search(keyword, uid);
        if( keyword != null){
        return productRepository.search(keyword);}
        return productRepository.findAll();
    }
    public void deleteById(Long productId) {
        productRepository.deleteById(productId);
    }

}
