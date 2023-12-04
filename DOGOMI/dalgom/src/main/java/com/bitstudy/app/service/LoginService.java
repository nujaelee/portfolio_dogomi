package com.bitstudy.app.service;

import com.bitstudy.app.dao.TcDao;
import com.bitstudy.app.dao.UserDao;
import com.bitstudy.app.domain.TcDto;
import com.bitstudy.app.domain.UserDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Map;

@Service
public class LoginService {


    @Autowired
    UserDao userDao;

    /* *************** 견주 로그인 **************** */
    public UserDto sltUser(Map map) {
        return userDao.sltUser(map);
    }



}
