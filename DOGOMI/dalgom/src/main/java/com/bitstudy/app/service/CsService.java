package com.bitstudy.app.service;

import com.bitstudy.app.dao.CsDao;
import com.bitstudy.app.dao.NoticeDao;
import com.bitstudy.app.domain.CsDto;
import com.bitstudy.app.domain.NoticeDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CsService {

    @Autowired
    CsDao csDao;

    @Autowired
    NoticeDao noticeDao;

    public List<CsDto> selectCsList() {

        List<CsDto> list = csDao.selectCsList();

        return list;
    }

    public String selectCsInfo(int cs_no) {

        String content = csDao.selectCsInfo(cs_no);

        return content;
    }

    public List<NoticeDto> selectNoticeList(int nt_state) {

        List<NoticeDto> list = noticeDao.selectNoticeList(nt_state);

        return list;
    }

    public String selectNoticeInfo(int nt_no) {

        String content = noticeDao.selectNoticeInfo(nt_no);

        return content;
    }

//    public int selectNtState(int nt_no) {
//
//        int nt_state = noticeDao.selectNtState(nt_no);
//
//        return nt_state;
//    }




}
