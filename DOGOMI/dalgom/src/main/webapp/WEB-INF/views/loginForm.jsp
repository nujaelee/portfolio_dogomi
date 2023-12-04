<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.net.URLDecoder" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <!-- <meta name="viewport" content="width=device-width, initial-scale=1.0"> -->
    <title>LoginForm</title>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <link rel="stylesheet" href="<c:url value='/css/common.css'/>">
    <link rel="stylesheet" href="<c:url value='/css/h_f.css'/>">
    <link rel="stylesheet" href="<c:url value='/css/LoginForm.css'/>">
    <link rel="stylesheet" href="<c:url value='/css/LoginHeader.css'/>">
</head>
<body>
<div id="wrap">
    <div class="header">
        <div class="headerBox">
            <div class="logo">
                <img src="<c:url value='/img/dog2.png'/>">
                <p>회원가입</p>
            </div>
            <ul>
                <li>
                    <a href="<c:url value='/'/>" class="home_btn">
                        <img src="<c:url value='/img/home.png'/>">
                        <p>HOME</p>
                    </a>
                </li>
                <li>
                    <a href="<c:url value='/cs/list'/>" class="cs_btn">
                        <img src="<c:url value='/img/support.png'/>">
                        <p>FAQ</p>
                    </a>
                </li>
            </ul>
        </div>
    </div>


    <div class="contain">
        <%
            String userLoginMsg = request.getParameter("userLoginMsg");
            if (userLoginMsg != null && !"null".equals(userLoginMsg) && !userLoginMsg.isEmpty()) {
                out.println("<script>alert('"+userLoginMsg+"')</script>");
            }
        %>

        <%
            String tcLoginMsg = request.getParameter("tcLoginMsg");
            if (tcLoginMsg != null && !"null".equals(tcLoginMsg) && !tcLoginMsg.isEmpty()) {
                out.println("<script>alert('"+tcLoginMsg+"')</script>");
            }
        %>

        <div class="login_tab">
            <button class="user_btn clicked">개인 로그인</button>
            <button class="tc_btn unclicked">훈련소 로그인</button>
        </div>

        <!-- 견주 로그인 -->
        <form action="" class="login_box user_login_box" method="post">
            <div class="form_box">
                <div class="input_box">
                    <input type="text" name="user_id" class="id" placeholder="아이디를 입력해주세요" value="${ cookie.user_id.value }">
                    <input type="password" name="user_pw" class="pw" placeholder="비밀번호를 입력해주세요" value="">
                    <button id="u_login_btn" class="login_btn">로그인</button>
                </div>
                <div class="loginCk">
                    <div class="login_check">
                        <label>
                            <input type="checkbox" name="rememberUserId" ${empty cookie.user_id.value?"":"checked" }>아이디 저장
                        </label>
                    </div>
                    <ul class="login_link">
                        <li><a href="">아이디 찾기</a></li>
                        <li class="line">|</li>
                        <li><a href="">비밀번호 찾기</a></li>
                    </ul>
                </div>
            </div>
        </form>

        <!-- 훈련소 로그인 -->
        <form action="" class="login_box tc_login_box none" method="post">
            <div class="form_box">
                <div class="input_box">
                    <input type="text" name="tc_id" class="id" placeholder="아이디를 입력해주세요" value="${ cookie.tc_id.value }">
                    <input type="password" name="tc_pw" class="pw" placeholder="비밀번호를 입력해주세요">
                    <button id="t_login_btn" class="login_btn">로그인</button>
                </div>
                <div class="loginCk">
                    <div class="login_check">
                        <label>
                            <input type="checkbox" name="rememberTcId" ${empty cookie.tc_id.value?"":"checked" }>아이디 저장
                        </label>
                    </div>
                    <ul class="login_link">
                        <li><a href="">아이디 찾기</a></li>
                        <li class="line">|</li>
                        <li><a href="">비밀번호 찾기</a></li>
                    </ul>
                </div>
            </div>
        </form>
        <div class="sign_box">
<%--            <a href="<c:url value='/register/UserAdd?type=1'/>" class="userSign">--%>
            <a href="<c:url value='/register/UserAdd'/>" class="userSign">
                <div class="userSignImg">
                    <img src="<c:url value='/img/user.png'/>">
                </div>
                <div class="userSignTxt">개인 회원가입</div>
            </a>
            <a href="<c:url value='/register/TcAdd'/>" class="tcSign">
                <div class="tcSignImg">
                    <img src="<c:url value='/img/tc.png'/>">
                </div>
                <div class="tcSignTxt">훈련소 회원가입</div>
            </a>
        </div>
    </div>
</div>
<script>
    $(document).ready(function(){
        // 탭 색상
        $('.user_btn').on("click",function(){
            $(this).addClass('clicked').removeClass('unclicked');
            $('.tc_btn').addClass('unclicked').removeClass('clicked');
        });

        $('.tc_btn').on("click",function(){
            $('.user_btn').addClass('unclicked').removeClass('clicked');
            $(this).addClass('clicked').removeClass('unclicked');
        });

        // 로그인 버튼 none block
        $('.user_btn').on("click",function(){
            $('.user_login_box').addClass('block').removeClass('none');
            $('.tc_login_box').addClass('none').removeClass('block');

        });

        $('.tc_btn').on("click",function(){
            $('.tc_login_box').addClass('block').removeClass('none');
            $('.user_login_box').addClass('none').removeClass('block');
        });

        // 견주로그인
        $('#u_login_btn').on("click", function(){
            let user_login_box = $('.user_login_box');
            user_login_box.attr('action', "<c:url value='/login/user_login'/>");
            user_login_box.attr('method', 'post');
            user_login_box.submit();
        });

        // 훈련소 로그인
        $('#t_login_btn').on("click", function(){
            let tc_login_box = $('.tc_login_box');
            tc_login_box.attr('action', "<c:url value='/login/tc_login'/>");
            tc_login_box.attr('method', 'post');
            tc_login_box.submit();
        });

        // // 훈련소가입 버튼 클릭시 훈련소 가입 폼 호출
        $('.tcSign').on("click", function () {
            // 1번 form 숨기기
            $('.userRegisterBox').addClass('none').removeClass('block');
            // 2번 form 보이기
            $('.tcRegisterBox').addClass('block').removeClass('none');
        });
    });
</script>
</body>
</html>