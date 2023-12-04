package com.bitstudy.app.dao;

import com.bitstudy.app.domain.CommentDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public class CommentDao {
    @Autowired
    SqlSession session;

    String namespace="com.bitstudy.app.dao.commentMapper."; /* 주의: 마지막에 . 있음 */

    public List<CommentDto> cmmt_select(Integer cu_no){
        return session.selectList(namespace+"cmmt_select", cu_no);
    }
    public int delete(Integer co_no, String user_id){

        Map map = new HashMap();
        map.put("co_no", co_no);
        map.put("user_id", user_id);
//        System.out.println("딜리트 맵의값"+map);
        return session.delete(namespace+"delete",map);
    }

    public int update(CommentDto commentDto){
        return session.update(namespace+"update", commentDto);
    }

    public int insert(CommentDto commentDto){
        return session.insert(namespace+"insert", commentDto);
    }

}
