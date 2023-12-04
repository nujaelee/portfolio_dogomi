package com.bitstudy.app.dao;

import com.bitstudy.app.domain.NoticeDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class NoticeDao {

    @Autowired
    SqlSession session;

    String namespace="com.bitstudy.app.dao.noticeMapper.";

    public List<NoticeDto> selectNoticeList(int nt_state) {

        List<NoticeDto> list = session.selectList(namespace+"selectNoticeList", nt_state);

        return list;
    }

    public String selectNoticeInfo(int nt_no) {

        String content = session.selectOne(namespace+"selectNoticeInfo", nt_no);

        return content;
    }

//    public int selectNtState(int nt_no) {
//
//        int nt_state = session.selectOne(namespace+"selectNtState", nt_no);
//
//        return nt_state;
//    }

}
