package com.bitstudy.app.dao;

import com.bitstudy.app.domain.SearchDto;
import com.bitstudy.app.domain.TcDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public class TcDao {
    @Autowired
    SqlSession session;

    String namespace="com.bitstudy.app.dao.tcMapper.";

    public TcDto selectTc(Integer tc_no){
        return session.selectOne(namespace+"select_tc_info", tc_no);
    }

    public TcDto selectTcID(String tc_name){
        return session.selectOne(namespace+"select_tc_info_ID", tc_name);
    }

    public int updateTc(Map map){
        return session.update(namespace+"update_tc_info", map);
    }

    public int dropTc(Integer tc_no){
        return session.delete(namespace+"tc_drop", tc_no);
    }

    public List<TcDto> selectTcList(SearchDto searchDto) {
        return session.selectList(namespace+"selectTcList", searchDto);
    }

    public int selectTcListCount(SearchDto searchDto) {
        return session.selectOne(namespace+"selectTcListCount",searchDto);
    }

    public List<TcDto> selectTcSearchPage(SearchDto searchDto) {
        return session.selectList(namespace+"selectTcSearchPage",searchDto);
    }

    public int selectTcSearchPageCount(SearchDto searchDto) {
        return session.selectOne(namespace+"selectTcSearchPageCount",searchDto);
    }
    public TcDto tcSelect(Integer tc_no){
        return session.selectOne(namespace+"tcSelect", tc_no);
    }

    /* ********************* 훈련소 회원가입 ********************** */
    /* 데이터 넣기 */
    public int insertTc(TcDto tcDto) {
        return session.insert(namespace + "insertTc", tcDto);
    }

    /* 데이터  중복 검사 */
    public int countSltTc(String tc_id) {
        return session.selectOne(namespace + "countSltTc", tc_id);
    }

    /* ************** 훈련소 로그인 *********** */
    public TcDto sltTc(Map map) {
        return session.selectOne(namespace + "sltTc", map);
    }

    /* 아이디로 훈련소 정보 가져와 */
    public TcDto selectTcDtoID(String tc_id){
        return session.selectOne(namespace+"select_tc_id", tc_id);
    }

    //11/28 웅 추가 모든훈련소 이름, 번호만 가져오기
    public List<TcDto> loadListAll(){return session.selectList(namespace+"loadListAll");}

}
