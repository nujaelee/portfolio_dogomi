package com.bitstudy.app.service;

import com.bitstudy.app.dao.BookDao;
import com.bitstudy.app.dao.JjimDao;
import com.bitstudy.app.domain.BookDto;
import com.bitstudy.app.domain.JjimDto;
import com.bitstudy.app.domain.JjimTeDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class JjimService {
    @Autowired
    JjimDao jjimDao;

    public Integer getJjimUserCnt(Integer user_no){
        return jjimDao.jjimUserCnt(user_no);
    }

    public List<JjimTeDto> getJjimTeList(Map map){
        return jjimDao.jjimUserList(map);
    }

    public JjimTeDto getJjimTeOne(Integer jjim_no){
        return jjimDao.jjimUserOne(jjim_no);
    }

    public Integer Jjimadd(JjimDto jjimDto){
        return jjimDao.insert(jjimDto);
    }

    public Integer jjimdelete(JjimDto jjimDto){
        return jjimDao.delete(jjimDto);
    }
    public int jjimcount(JjimDto jjimDto){
        return jjimDao.jjimcount(jjimDto);
    }

    public List<JjimDto> jjimList(Integer user_no){
        return  jjimDao.jList(user_no);
    }

}
