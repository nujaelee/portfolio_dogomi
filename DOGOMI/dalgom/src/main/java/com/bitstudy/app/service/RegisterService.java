package com.bitstudy.app.service;

import com.bitstudy.app.dao.PetDao;
import com.bitstudy.app.dao.TcDao;
import com.bitstudy.app.dao.UserDao;
import com.bitstudy.app.domain.PetDto;
import com.bitstudy.app.domain.TcDto;
import com.bitstudy.app.domain.UserDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RegisterService {

    /* **************** 견주 회원가입 ****************** */
    @Autowired
    UserDao userDao;
    /* 견주 데이터 넣기 */
    public int insertUser(UserDto userDto) {
        return userDao.insertUser(userDto);
    }

    /* 견주 아이디 중복검사 */
    public Integer countSltUser(String user_id) {
        return userDao.countSltUser(user_id);
    }

}
