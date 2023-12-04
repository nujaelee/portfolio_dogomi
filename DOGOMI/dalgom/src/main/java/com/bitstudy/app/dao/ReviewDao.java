package com.bitstudy.app.dao;

import com.bitstudy.app.domain.ReviewDto;
import com.bitstudy.app.domain.SearchCondition;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;
import java.util.HashMap;

@Repository
public class ReviewDao {
    @Autowired
    SqlSession session;
    String namespace = "com.bitstudy.app.dao.reviewMapper.";
    public int insert(ReviewDto dto){
        return session.insert(namespace+"insert", dto);
    }
    public List<ReviewDto> selectAll(){
        return session.selectList(namespace+"selectAll");
    }
    public List<ReviewDto> selectPage(Map map){
        return session.selectList(namespace+"selectPage", map);
    }
// ===========서영============
    public List<ReviewDto> selectUserReview(Map map){
        return session.selectList(namespace+"select_user_review", map);
    }

    public int selectUserReCnt(Integer user_no){
        return session.selectOne(namespace+"select_user_reCnt", user_no);
    }

    public List<ReviewDto> selectTcReview(Map map){
        return session.selectList(namespace+"select_tc_review", map);
    }

    public int selectTcReCnt(Integer tc_no){
        return session.selectOne(namespace+"select_tc_reCnt", tc_no);
    }
// ==========================
    public int update(Map map){ return session.update(namespace+"update", map);}

    public int update2(ReviewDto dto){ return session.update(namespace+"update2", dto);}

    public ReviewDto select(int bno){
        return session.selectOne(namespace+"select", bno);
    }

    public int count(){
        return session.selectOne(namespace+"count");
    }
    public int deleteAll(){
        return session.delete(namespace+"deleteAll");
    }
    public int delete(Integer re_no, Integer user_no){
        Map map = new HashMap();
        map.put("re_no", re_no);
        map.put("user_no", user_no);
        return session.delete(namespace+"delete", map);
    }
    public int deleteForAdmin(int re_no){
        return session.delete(namespace+"deleteForAdmin", re_no);

    }
    public List<ReviewDto> searchSelectPage(SearchCondition rsc) {
        return session.selectList(namespace+"searchSelectPage",rsc);
    }

    public int searchSelectCount(SearchCondition rsc) {
        return session.selectOne(namespace+"searchSelectCount",rsc);
    }

    public int delete(Integer re_no, String user_id){
        Map map = new HashMap();
        map.put("re_no", re_no);
        map.put("user_id", user_id);
        return session.delete(namespace+"delete", map);
    }
}
