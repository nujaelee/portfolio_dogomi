package com.bitstudy.app.dao;

import com.bitstudy.app.domain.BookDto;
import com.bitstudy.app.domain.BookUserTeDto;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.HashMap;
import java.util.Map;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class BookDaoTest {
    @Autowired
    BookDao bookDao;

    @Test
    public void selectBookList() {
        /*map.put("tc_no", 1);
        map.put("offset", 1);
        map.put("pageSize", 10);*/
//        System.out.println(bookDao.selectBookList(1));

    }

    @Test
    public void updateBookState() {

        BookUserTeDto bookUserTeDto = bookDao.selectBookJoinOne(1);
        Map map = new HashMap();
        map.put("book_state", "예약취소");
        map.put("te_no", bookUserTeDto.getTe_no());
        map.put("b_no", bookUserTeDto.getB_no());

        bookDao.updateBookState(map);
    }
}