package com.bitstudy.app.dao;

import com.bitstudy.app.domain.UserDto;
import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.util.Map;
import java.util.Optional;

@Repository
public class UserDao {
    @Autowired
    SqlSession session;

    String namespace = "com.bitstudy.app.dao.userMapper.";

    public UserDto selectUserId(String user_id){
        return session.selectOne(namespace + "user_select_id", user_id);
    }

    /* ****************** 견주 회원가입 ******************* */
    /* 데이터 넣기 */
    public int insertUser(UserDto userDto) {
        return session.insert(namespace + "insertUser", userDto);
    }

    /* 아이디 중복 검사 */
    public Integer countSltUser(String user_id) {
        return session.selectOne(namespace + "countSltUser", user_id);
    }


    /* ******************견주 로그인***************** */
    public UserDto sltUser(Map map) {
        return session.selectOne(namespace + "sltUser", map);
    }

    // 유저 정보 다갖고왕
    public UserDto selectUser(Integer user_no){
        return session.selectOne(namespace+"user_select_mypage",user_no);
    }

    public UserDto selectUser(String user_name){
        return session.selectOne(namespace+"user_select", user_name);
    }

    // 유저 정보 수정하게 해
    public int modifyUser(UserDto userDto){
        return session.update(namespace+"user_modify", userDto);
    }

    // 유저 정보 없애!
    public int dropUser(Integer user_no){
        return session.delete(namespace+"user_drop", user_no);
    }


    public UserDto selectUserTest(String user_id) throws Exception {
//        System.out.println("user_id="+user_id);
//        System.out.println(Optional.ofNullable(session.selectOne(namespace + "select", user_id)));
//        System.out.println(namespace+"select, " + user_id);
        return session.selectOne(namespace+"select" , user_id);
    }






}
