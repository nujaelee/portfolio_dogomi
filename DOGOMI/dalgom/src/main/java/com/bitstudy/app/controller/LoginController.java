package com.bitstudy.app.controller;

import com.bitstudy.app.dao.TcDao;
import com.bitstudy.app.dao.UserDao;
import com.bitstudy.app.domain.TcDto;
import com.bitstudy.app.domain.UserDto;
import com.bitstudy.app.service.LoginService;
import com.bitstudy.app.service.TcService;
import com.bitstudy.app.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.Map;

@Controller
public class LoginController {
    /* 훈련소 로그인 */
    @Autowired
    TcService tcService;

    /* 견주 로그인 */
    @Autowired
    LoginService loginService;

    @Autowired
    UserService userService;

    @GetMapping("/login/login")
    public String loginForm(HttpSession session) {
        return "loginForm";
    }

    /* 로그아웃되면서 세션 삭제 */
    @GetMapping("/login/logout")
    public String logout(HttpSession session) {
        session.invalidate();
        return "index";
    }

    @PostMapping("/login/user_login")
    public String user_login(String user_id, String user_pw, boolean rememberUserId, HttpServletRequest request, HttpServletResponse response) throws Exception {

        /*DB에 아이디 확인하러 갑니다 */
        if (!userLoginChk(user_id, user_pw)) {
            String userLoginMsg = URLEncoder.encode("일치하는 회원이 없습니다.", "UTF-8");
            return "redirect:/login/login?userLoginMsg=" + userLoginMsg;
        }

        /* DB내용과 일치해서 쿠키 만듭니다 */
        Cookie cookie = new Cookie("user_id", user_id);
        if (rememberUserId) {
            cookie.setMaxAge(60 * 60 * 24 * 356 * 5);
            cookie.setPath("/");
        } else if (!rememberUserId) {
            cookie.setMaxAge(0);
            cookie.setPath("/");
        }
        response.addCookie(cookie); // 사용자에게 돌려보낼 '응답'에 쿠키 넣어서 보내기

        /* 세션 */
        HttpSession session = request.getSession();
        session.setAttribute("user_id", user_id);
        UserDto userDto = userService.getUserId(user_id);
        session.setAttribute("user_no", userDto.getUser_no());
        session.setAttribute("user_name", userDto.getUser_name());

        return "index";
    }

    private boolean userLoginChk(String user_id, String user_pw) {
        Map map = new HashMap();
        map.put("user_id", user_id);
        map.put("user_pw", user_pw);

        UserDto userChk = loginService.sltUser(map);
        if (userChk == null) return false;
        return userChk.getUser_pw().equals(user_pw);
    }

    /* 훈련소로그인 */
    @PostMapping("/login/tc_login")
    public String tc_login(String tc_id, String tc_pw, boolean rememberTcId, HttpServletRequest request, HttpServletResponse response) throws Exception{

        /*DB에 아이디 확인하러 갑니다 */
        if (!tcLoginChk(tc_id, tc_pw)) {
            String tcLoginMsg = URLEncoder.encode("일치하는 회원이 없습니다.", "UTF-8");
            return "redirect:/login/login?tcLoginMsg=" + tcLoginMsg;
        }

        /* DB내용과 일치해서 쿠키 만듭니다 */
        Cookie cookie = new Cookie("tc_id", tc_id);
        if (rememberTcId) {
            cookie.setMaxAge(60 * 60 * 24 * 356 * 5);
            cookie.setPath("/");
        } else if (!rememberTcId) {
            cookie.setMaxAge(0);
            cookie.setPath("/");
        }
        response.addCookie(cookie); // 사용자에게 돌려보낼 '응답'에 쿠키 넣어서 보내기

        /* 세션 */
        HttpSession session = request.getSession();
        session.setAttribute("tc_id", tc_id);

        TcDto tcDto = tcService.getTcDtoId(tc_id);
        session.setAttribute("tc_no", tcDto.getTc_no());
        session.setAttribute("tc_name", tcDto.getTc_name());

        return "index";
    }

    private boolean tcLoginChk(String tc_id, String tc_pw) {
        Map map = new HashMap();
        map.put("tc_id", tc_id);
        map.put("tc_pw", tc_pw);

        TcDto tcChk = tcService.sltTc(map);
        if (tcChk == null) return false;
        return tcChk.getTc_pw().equals(tc_pw);
    }
}