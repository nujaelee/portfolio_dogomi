package com.bitstudy.app.service;

import com.bitstudy.app.dao.BookDao;
import com.bitstudy.app.dao.CommentDao;
import com.bitstudy.app.dao.CommunityDao;
import com.bitstudy.app.domain.BookDto;
import com.bitstudy.app.domain.BookUserTeDto;
import com.bitstudy.app.domain.BookUserTeUserDto;
import com.bitstudy.app.domain.CommentDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.Map;

@Service
public class BookService {

    @Autowired
    BookDao bookDao;
    public List<BookDto> selectByUser(int user_no){return bookDao.selectByUser(user_no);}

    public List<BookUserTeUserDto> book_joinUserTeUserByInt(int user_no){
        return bookDao.book_joinUserTeUserByInt(user_no);
    }

    public List<BookUserTeDto> getBookUserTe(Map map){
        return bookDao.joinBookUserTe(map);
    }

    public List<BookUserTeUserDto> getBookUserTeUser(Map map){
        return bookDao.joinBookUserTeUser(map);
    }

    public int getBookJoinCnt(Integer tc_no){
        return bookDao.joinBookCnt(tc_no);
    }

    public int getBookJoinUserCnt(Integer user_no){
        return bookDao.joinBookUserCnt(user_no);
    }

    public BookUserTeDto getBookJoinOne(Integer b_no){
        return bookDao.selectBookJoinOne(b_no);
    }

    public BookUserTeUserDto getBookJoinUserOne(Integer b_no){
        return bookDao.selectBookJoinUserOne(b_no);
    }

    public int add(BookDto bookDto){
        return bookDao.insert(bookDto);
    }

    public Integer bookChkCount(BookDto bookDto){
        return bookDao.count(bookDto);
    }

    public List<BookDto> getBookList(/*Map map*/ Integer tc_no){
        return bookDao.selectBookList(tc_no);
    }

    public Integer changeBookState(Map map){
        return bookDao.updateBookState(map);
    }

    public Integer getBookListCnt(Integer tc_no){
        return bookDao.selectBookListCnt(tc_no);
    }

}
