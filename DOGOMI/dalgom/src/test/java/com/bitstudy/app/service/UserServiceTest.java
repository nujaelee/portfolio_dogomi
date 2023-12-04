package com.bitstudy.app.service;

import com.bitstudy.app.dao.UserDao;
import com.bitstudy.app.domain.UserDto;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/**/root-context.xml"})
public class UserServiceTest {
    @Autowired
    UserDao userDao;

    @Test
    public void getUser() {
        UserDto userDto = userDao.selectUser(1);
//        System.out.println(userDto);
        assertTrue(userDto.getUser_no() == 1);
    }

    @Test
    public void modifyUser() {
        UserDto userDto = userDao.selectUser(1);
        userDto.setUser_pw("1124");
        userDto.setUser_email("young_laon@naver.com");

        assertTrue(userDao.modifyUser(userDto) == 1);
    }
}