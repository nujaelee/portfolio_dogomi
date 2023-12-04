package com.bitstudy.app.service;

import com.bitstudy.app.dao.CommunityDao;
import com.bitstudy.app.domain.CommunityDto;
import com.bitstudy.app.domain.SearchCondition;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;
@Service
public class CommunityService {
    @Autowired
    CommunityDao cmtDao;

    public int getCount() {
        return cmtDao.count();
    }

    /* 삭제 관련 */
    public int remove(Integer cu_no, String user_id) {
        return cmtDao.delete(cu_no, user_id);
    }

    /* 쓰기 관련 */
    public int write(CommunityDto dto) {
        return cmtDao.insert(dto);
    }

    // 게시글 하나 가져올때 조회수 1도 올리기   /* (글 불러오기)조회 1개 관련 */
    public CommunityDto read(Integer cu_no) {
        CommunityDto cmtDto = cmtDao.select(cu_no); // 게시글 1개 가져오고
        return cmtDto;
    }

    /* (글 불러오기)특정 범위 내로 불러오기 */
    public List<CommunityDto> getPage(Map map) {
        return cmtDao.selectPage(map);
    }

    /* 게시글 전체 불러오기 */
    public List<CommunityDto> getList() {
        return cmtDao.selectAll();
    }

    /* 유저 정보가 일치하는 게시글 불러오기 */
    public List<CommunityDto> getUserCu(Map map){
        return cmtDao.selectUserCu(map);
    }

    /* 유저 정보 일치하는 게시글 개수 */
    public int getUserCuCnt(Integer user_no){
        return cmtDao.selectUserCuCnt(user_no);
    }

    /* 게시글 수정 */
    public int modify(Map map) {
        return cmtDao.update(map);
    }

    public int modify2(CommunityDto cmtDto) {
        return cmtDao.update2(cmtDto);
    }

    /* 검색 */
    public List<CommunityDto> getSearchResultPage(SearchCondition sc) {
        return cmtDao.searchSelectPage(sc);
    }

    public int getSearchResultCount(SearchCondition sc) {
        return cmtDao.searchSelectCount(sc);
    }
}
