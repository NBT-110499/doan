package vn.t3h.t3h_2202.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import vn.t3h.t3h_2202.entity.CategoryEntity;
import vn.t3h.t3h_2202.paging.PagingAndSortObject;
import vn.t3h.t3h_2202.repository.CategoryRepository;

import javax.transaction.Transactional;
import java.util.List;
@Service
@Transactional
public class CategoryService {
    @Autowired
    CategoryRepository categoryRepository;
    public void danhsach1(PagingAndSortObject pagingAndSortObject){
        pagingAndSortObject.findAll(categoryRepository);
    }
    public List<CategoryEntity> getall(){
        return categoryRepository.findAll();
    }
    public CategoryEntity detail(Long id){
        return categoryRepository.findById(id).orElse(null);
    }
}
