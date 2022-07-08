package vn.t3h.t3h_2202.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import vn.t3h.t3h_2202.dto.ReviewDto;
import vn.t3h.t3h_2202.entity.ReviewEntity;
import vn.t3h.t3h_2202.repository.ReviewRepository;

import java.util.List;

@Service
public class ReviewService {
    @Autowired
    ReviewRepository reviewRepository;
    public ReviewDto saveReview(ReviewDto reviewDto){
        ReviewEntity reviewEntity = reviewDto.convertEntity();
        reviewRepository.save(reviewEntity);
        return  reviewDto;
    }

    public List<ReviewEntity> findAllByProductId(Long id){return reviewRepository.findAllByIdproduct(id);};
}
