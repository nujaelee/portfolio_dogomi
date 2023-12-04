package com.bitstudy.app.dao;

import com.bitstudy.app.domain.CsDto;
import com.bitstudy.app.domain.NoticeDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class CsDao {

    @Autowired
    SqlSession session;

    String namespace="com.bitstudy.app.dao.csMapper.";

    public List<CsDto> selectCsList() {

        List<CsDto> list = session.selectList(namespace+"selectCsList");

        return list;
    }

    public String selectCsInfo(int cs_no) {

        String content = session.selectOne(namespace+"selectCsInfo", cs_no);

        return content;
    }

}
