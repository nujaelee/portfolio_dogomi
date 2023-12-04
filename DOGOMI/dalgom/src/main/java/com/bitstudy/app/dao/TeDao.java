package com.bitstudy.app.dao;

import com.bitstudy.app.domain.*;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public class TeDao {
    @Autowired
    SqlSession session;

    String namespace = "com.bitstudy.app.dao.teMapper.";

    public List<TeDto> selectTeList(Integer tc_no){
        return session.selectList(namespace+"select_te_list", tc_no);
    }

    public int insertTe(TeDto teDto){
        return session.insert(namespace+"input_te", teDto);
    }

    public int updateTe(Map map){
        return session.update(namespace+"update_te", map);
    }

    public int dropTeAll(Integer tc_no){
        return session.delete(namespace+"te_drop_all", tc_no);
    }

    public int dropTe(Integer te_no){
        return session.delete(namespace+"te_drop", te_no);
    }

    public List<TeDto> select(int tc_no) {
        return session.selectList(namespace+"select",tc_no);
    }
    public List<TcTeDto> selectjoin(SearchDto sd){return  session.selectList(namespace+"selectjoin", sd);}
    public List<TeDto> selectTe(){
        return session.selectList(namespace+"selectTe");
    }

    public TeDto selectTeOne(Integer te_no){
        return session.selectOne(namespace+"select_te", te_no);
    }
}
