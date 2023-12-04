package com.bitstudy.app.service;

import com.bitstudy.app.dao.ReviewDao;
import com.bitstudy.app.domain.ReviewDto;
import com.bitstudy.app.domain.SearchCondition;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class ReviewService {
    @Autowired
    ReviewDao reviewDao;
// ===========서영============
    public List<ReviewDto> getUserReview(Map map){
        return reviewDao.selectUserReview(map);
    }

    public int getUserReCnt(Integer user_no){
        return reviewDao.selectUserReCnt(user_no);
    }

    public List<ReviewDto> getTcReview(Map map){
        return reviewDao.selectTcReview(map);
    }

    public int getTcReCnt(Integer tc_no){
        return reviewDao.selectTcReCnt(tc_no);
    }
// ==========================

    public int remove(Integer re_no, Integer user_no){
        return reviewDao.count();
    }

    public int write(ReviewDto dto){
        return reviewDao.insert(dto);
    }

    public ReviewDto read(Integer re_no){
        ReviewDto reviewDto = reviewDao.select(re_no);
        return  reviewDto;
    }

    public List<ReviewDto> getPage(Map map){
        return reviewDao.selectPage(map);
    }

    public List<ReviewDto> getList(){
        return reviewDao.selectAll();
    }

    public int modify(Map map){
        return reviewDao.update(map);
    }

    public int modify2(ReviewDto dto){
        return reviewDao.update2(dto);
    }

    public List<ReviewDto> getSearchResultPage(SearchCondition rsc) {
        return reviewDao.searchSelectPage(rsc);
    }

    public int getSearchResultCount(SearchCondition rsc) {
        return reviewDao.searchSelectCount(rsc);
    }

    public int remove(Integer re_no, String user_id){
        return reviewDao.delete(re_no, user_id);
    }
}
