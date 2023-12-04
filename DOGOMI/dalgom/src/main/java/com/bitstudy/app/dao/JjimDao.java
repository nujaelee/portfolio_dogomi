package com.bitstudy.app.dao;

import com.bitstudy.app.domain.JjimDto;
import com.bitstudy.app.domain.JjimTeDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

@Repository
public class JjimDao {
    @Autowired
    SqlSession session;

    String namespace="com.bitstudy.app.dao.jjimMapper."; /* 주의: 마지막에 . 있음 */

    public Integer jjimUserCnt(Integer user_no){
        return session.selectOne(namespace+"jjimUserCnt", user_no);
    }

    public List<JjimTeDto> jjimUserList(Map map){
        return session.selectList(namespace+"jjim_join_user", map);
    }

    public JjimTeDto jjimUserOne(Integer jjim_no){
        return session.selectOne(namespace+"jjim_join_user_one", jjim_no);
    }

    public int insert(JjimDto jjim){
        return session.insert(namespace+"insert", jjim);
    }
    public int delete(JjimDto jjim){
        return session.delete(namespace+"delete", jjim);
    }
    public int jjimcount(JjimDto jjim){
        return session.selectOne(namespace+"jjimcount", jjim);

    }
    public List<JjimDto> jList(Integer user_no){
        return session.selectList(namespace+"jList", user_no);
    }

}
