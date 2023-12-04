package com.bitstudy.app.service;

import com.bitstudy.app.dao.UserDao;
import com.bitstudy.app.domain.UserDto;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserService {
    @Autowired
    UserDao userDao;

    public UserDto getUserId(String user_id){
        return userDao.selectUserId(user_id);
    }

    public UserDto getUser(Integer user_no){
        return userDao.selectUser(user_no);
    }

    public int modifyUser(UserDto userDto){
        return userDao.modifyUser(userDto);
    }

    public int dropUser(Integer user_no){
        return userDao.dropUser(user_no);
    }
}
