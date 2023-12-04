package com.bitstudy.app.service;

import com.bitstudy.app.dao.TeDao;
import com.bitstudy.app.domain.SearchDto;
import com.bitstudy.app.domain.TcTeDto;
import com.bitstudy.app.domain.TeDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class TeService {
    @Autowired
    TeDao teDao;

    public List<TeDto> getTeList(Integer tc_no){
        return teDao.selectTeList(tc_no);
    }

    public int inputTe(TeDto teDto){
        return teDao.insertTe(teDto);
    }

    public int modifyTe(Map map){
        return teDao.updateTe(map);
    }

    public int dropTeAll(Integer tc_no){
        return teDao.dropTeAll(tc_no);
    }

    public int dropTe(Integer te_no){
        return teDao.dropTe(te_no);
    }

    public List<TcTeDto> getTcTeList(SearchDto sd){
        return  teDao.selectjoin(sd);
    }
    public List<TeDto> getTeListTe(){
        return teDao.selectTe();
    }

    public TeDto getTeOne(Integer te_no){
        return teDao.selectTeOne(te_no);
    }
}
