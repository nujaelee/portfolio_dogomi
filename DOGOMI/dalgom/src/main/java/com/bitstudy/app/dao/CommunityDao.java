package com.bitstudy.app.dao;

import com.bitstudy.app.domain.CommunityDto;
import com.bitstudy.app.domain.SearchCondition;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Repository
public class CommunityDao {

    @Autowired
    SqlSession session;

    String namespace="com.bitstudy.app.dao.communityMapper.";

    // 글 하나 불러오기
    public CommunityDto select(int cu_no) {
        return session.selectOne(namespace+"select", cu_no);
    }
    public int increaseViewCnt(Integer cu_no) {
        return session.update(namespace+"increaseViewCnt", cu_no);
    }

    /* 유저 정보 일치하는 게시글 불러오기 */
    public List<CommunityDto> selectUserCu(Map map){
        return session.selectList(namespace+"select_user_community", map);
    }

    /* 유저 정보 일치하는 게시글 개수 */
    public int selectUserCuCnt(Integer user_no){
        return session.selectOne(namespace+"select_user_coCnt", user_no);
    }

    public int count()  {
        return session.selectOne(namespace+"count");
    }

    public int deleteAll() {
        return session.delete(namespace+"deleteAll");
    }

    /* 글 하나 삭제 - 삭제시 글쓴이가 현재 로그인 한 사람인지 확인하는 용도로 writer 정보 필요. 글 하나 지워야 하니까 글 고유번호 필요 */
    public int delete(Integer cu_no, String user_id) {
        Map map = new HashMap();
        map.put("cu_no", cu_no);
        map.put("user_id", user_id);

        return session.delete(namespace+"delete", map);
    }

    /* 관리자용 삭제 - 글번호만 필요*/
    public int deleteForAdmin(Integer cu_no) {
        return session.delete(namespace+"deleteForAdmin", cu_no);
    }

    public int insert(CommunityDto cto) {
        return session.insert(namespace+"insert", cto);
    }

    // 전체 불러오기
    public List<CommunityDto> selectAll() {
        return session.selectList(namespace+"selectAll");
    }

    public List<CommunityDto> selectPage(Map map) {
        return session.selectList(namespace+"selectPage", map);
    }

    public int update(Map map) {
        return session.update(namespace+"update", map);
    }
    public int update2(CommunityDto cmtDto) {
        return session.update(namespace+"update2", cmtDto);
    }

    public List<CommunityDto> searchSelectPage(SearchCondition sc) {
        return session.selectList(namespace+"searchSelectPage",sc);
    }

    public int searchSelectCount(SearchCondition sc) {
        return session.selectOne(namespace+"searchSelectCount",sc);
    }
    // 댓글 써지면 comment 테이블에 댓글 정보 삽입 후
    // community 테이블의 조회수를 +1 / -1 해줘야함
    public int updateCommentCount(Integer cu_no, int count) {
        Map map = new HashMap();
        map.put("cu_no",cu_no);
        map.put("count",count);

        return session.update(namespace+"updateCommentCount", map);
    }

}
