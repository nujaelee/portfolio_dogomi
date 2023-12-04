package com.bitstudy.app.dao;

import com.bitstudy.app.domain.BookDto;
import com.bitstudy.app.domain.BookUserTeDto;
import com.bitstudy.app.domain.BookUserTeUserDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.awt.print.Book;
import java.util.List;
import java.util.Map;

@Repository
public class BookDao {
    @Autowired
    SqlSession session;

    String namespace="com.bitstudy.app.dao.bookMapper."; /* 주의: 마지막에 . 있음 */

    public List<BookUserTeDto> joinBookUserTe(Map map){
        return session.selectList(namespace+"book_joinUserTe", map);
    }

    public List<BookUserTeUserDto> joinBookUserTeUser(Map map){
        return session.selectList(namespace+"book_joinUserTeUser", map);
    }

    public int joinBookCnt(Integer tc_no){
        return session.selectOne(namespace+"book_joinCnt", tc_no);
    }

    public int joinBookUserCnt(Integer user_no){
        return session.selectOne(namespace+"book_joinCntUser", user_no);
    }

    public int insert(BookDto bdto){
        return session.insert(namespace+"insert", bdto);
    }

    public BookUserTeDto selectBookJoinOne(Integer b_no){
        return session.selectOne(namespace+"select_bookjoin", b_no);
    }

    public BookUserTeUserDto selectBookJoinUserOne(Integer b_no){
        return session.selectOne(namespace+"select_bookjoinUser", b_no);
    }

    public Integer count(BookDto bdto){
        return session.selectOne(namespace+"count", bdto);
    }

    public List<BookDto> selectBookList(/*Map map*/ Integer tc_no){
        return session.selectList(namespace+"select_book_list", tc_no);
    }

    public Integer updateBookState(Map map){
        return session.update(namespace+"update_book_state", map);
    }

    public Integer selectBookListCnt(Integer tc_no){
        return session.selectOne(namespace+"select_book_list_cnt", tc_no);
    }

    public List<BookDto> selectByUser(int user_no){
        return session.selectList(namespace+"selectByUser", user_no);
    }

    public List<BookUserTeUserDto> book_joinUserTeUserByInt(int user_no){
        return session.selectList(namespace+"book_joinUserTeUserByInt", user_no);
    }
}
