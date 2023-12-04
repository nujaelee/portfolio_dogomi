<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page session="false" %>
<c:set var="UserlogInOutLink" value="${pageContext.request.getSession(false).getAttribute('user_id')==null? '/login/login':'/login/logout'}"/>
<c:set var="TclogInOutLink" value="${pageContext.request.getSession(false).getAttribute('tc_id')==null? '/login/login':'/login/logout'}"/>
<c:set var="UserlogInOutTxt" value="${pageContext.request.getSession(false).getAttribute('user_id')==null?'로그인 / 회원가입':'로그아웃'}"/>
<c:set var="TclogInOutTxt" value="${pageContext.request.getSession(false).getAttribute('tc_id')==null?'로그인 / 회원가입':'로그아웃'}"/>
<c:set var="user_name" value="${ pageContext.request.getSession(false).getAttribute('user_name')==null?'':pageContext.request.getSession(false).getAttribute('user_name')}"/>
<c:set var="user_no" value="${ pageContext.request.getSession(false).getAttribute('user_no')==null?'':pageContext.request.getSession(false).getAttribute('user_no')}"/>

<html>
<head>
    <title>Title</title>
    <script src="https://code.jquery.com/jquery-1.11.3.js"></script>
</head>
<body>
<div class="f_box">
    <div class="f_inner_box">
        <div class="f_left">
            <img src="<c:url value='/img/dog2.png'/>" class="l_img">
        </div>
        <div class="f_center">
            <div class="name">
                <img src="<c:url value='/img/footer/footprint.png'/>" class="c_img">
                대표자: 김병제, 이웅희, 윤희성, 홍서영, 하수빈
            </div>
            <div class="crn">
                <img src="<c:url value='/img/footer/tie.png'/>" class="c_img">
                사업자등록번호: 123-45-67890
            </div>
            <div class="address">
                <img src="<c:url value='/img/footer/mark.png'/>" class="c_img">
                주소: 서울특별시 행복구 댕댕로7길 14
            </div>
            <div class="call">
                <img src="<c:url value='/img/footer/call.png'/>" class="c_img">
                02-1234-5678
            </div>
            <div class="email">
                <img src="<c:url value='/img/footer/email.png'/>" class="c_img">
                pet123@gmail.com
            </div>
        </div>
        <div class="f_right">
            <div class="txt">
                <h3>문의전화</h3>
                <h1>02-8765-4321</h1>
            </div>
        </div>
    </div>
</div>
</body>
</html>
