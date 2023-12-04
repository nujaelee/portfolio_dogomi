package com.bitstudy.app.service;

import com.bitstudy.app.dao.TcDao;
import com.bitstudy.app.domain.SearchDto;
import com.bitstudy.app.domain.TcDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

@Service
public class TcService {
    @Autowired
    TcDao tcDao;

    public TcDto getTcDtoId(String tc_id){
        return tcDao.selectTcDtoID(tc_id);
    }

    public TcDto getTc(Integer tc_no){
        return tcDao.selectTc(tc_no);
    }

    public TcDto getTcID(String tc_name){
        return tcDao.selectTcID(tc_name);
    }

    public int modifyTc(Map map){
        return tcDao.updateTc(map);
    }

    public int dropTc(Integer tc_no){
        return tcDao.dropTc(tc_no);
    }

    public List<TcDto> selectTcList(SearchDto searchDto) {
        return tcDao.selectTcList(searchDto);
    }

    public int selectTcListCount(SearchDto searchDto) {
        return tcDao.selectTcListCount(searchDto);
    }
    public List<TcDto> getSearchResultPage(SearchDto searchDto) {
        return tcDao.selectTcSearchPage(searchDto);
    }

    public int getSearchResultCount(SearchDto searchDto) {
        return tcDao.selectTcSearchPageCount(searchDto);
    }

    public TcDto read(Integer tc_no){
        return tcDao.tcSelect(tc_no);
    }

    /* ************ 훈련소 회원가입 **************** */
    /* 훈련소 데이터 넣기 */
    public int insertTc(TcDto tcDto) {
        return tcDao.insertTc(tcDto);
    }

    /* 훈련소 아이디 중복검사 */
    public Integer countSltTc(String tc_id) {
        return tcDao.countSltTc(tc_id);
    }

    /* ********* 훈련소 로그인 ******** */
    public TcDto sltTc(Map map) {
        return tcDao.sltTc(map);
    }

    //11/28 웅 추가 모든훈련소 이름, 번호만 가져오기
    public List<TcDto> loadListAll(){
        return tcDao.loadListAll();
    }
}
