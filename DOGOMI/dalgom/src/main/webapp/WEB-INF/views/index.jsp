<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page session="false" %>
<c:set var="UserlogInOutLink" value="${pageContext.request.getSession(false).getAttribute('user_id')==null? '/login/login':'/login/logout'}"/>
<c:set var="TclogInOutLink" value="${pageContext.request.getSession(false).getAttribute('tc_id')==null? '/login/login':'/login/logout'}"/>
<c:set var="UserlogInOutTxt" value="${pageContext.request.getSession(false).getAttribute('user_id')==null?'로그인 / 회원가입':'로그아웃'}"/>
<c:set var="TclogInOutTxt" value="${pageContext.request.getSession(false).getAttribute('tc_id')==null?'로그인 / 회원가입':'로그아웃'}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <link rel="stylesheet" href="<c:url value='/css/common.css'/>">
    <link rel="stylesheet" href="<c:url value='/css/h_f.css'/>">
    <link rel="stylesheet" href="<c:url value='/css/index.css'/>">
    <title>main page</title>
</head>
<body>
<div id="wrap">

    <jsp:include page="header.jsp" flush="false"/>

    <div class="container">
        <div class="slide_banner_box">
            <div class="slide_banner">
                <div class="banner banner1">
                    <div class="w_pan">
                        <div class="txt_box">
                            <div class="title">Area</div>
                            <div class="content">원하는 지역 선택을 통한 훈련소 검색</div>
                        </div>
                    </div>
                </div>
                <div class="banner banner2">
                    <div class="w_pan">
                        <div class="txt_box">
                            <div class="title">Training Course</div>
                            <div class="content">원하는 훈련 과정을 선택을 통한 훈련소 검색
                            </div>
                        </div>
                    </div>
                </div>
                <div class="banner banner3">
                    <div class="w_pan">
                        <div class="txt_box">
                            <div class="title">Size</div>
                            <div class="content">반려견의 사이즈 선택을 통한 훈련소 검색</div>
                        </div>
                    </div>
                </div>
                <div class="banner banner4">
                    <div class="w_pan">
                        <div class="txt_box">
                            <div class="title">Training Center Search</div>
                            <div class="content">지역, 훈련과정, 반려견 사이즈 3가지 선택을 통한 훈련소 검색 서비스</div>
                        </div>
                    </div>
                </div>
                <input type="button" class="btn_slide btn_slide_L" value="〈">
                <input type="button" class="btn_slide btn_slide_R" value="〉">
            </div>
        </div>
        <div class="category_box"><!-- 훈련종목+설명 나열 -->
            <div class="category"><!-- 문제행동 교정 -->
                <div class="line1"></div>
                <div class="line2"></div>
                <div class="line3"></div>
                <div class="line4"></div>
                <img src="<c:url value='/img/category/dog1.png'/>">
                <div class="c_txt">
                    <div class="c_title"><b>문제행동 교정</b></div>
                    case by case<br>맞춤식 교육
                </div>
            </div>
            <div class="category"><!-- 퍼피클래스(사회화) -->
                <div class="line1"></div>
                <div class="line2"></div>
                <div class="line3"></div>
                <div class="line4"></div>
                <img src="<c:url value='/img/category/dog2.png'/>">
                <div class="c_txt">
                    <div class="c_title"><b>퍼피클래스</b></div>
                    생후 6개월 이전의<br>강아지에게<br>사회성 교육
                </div>
            </div>
            <div class="category"><!-- 스포츠(프리스비, 어질리티, 플라이볼 등) -->
                <div class="line1"></div>
                <div class="line2"></div>
                <div class="line3"></div>
                <div class="line4"></div>
                <img src="<c:url value='/img/category/dog3.png'/>">
                <div class="c_txt">
                    <div class="c_title"><b>스포츠 독</b></div>
                    프리스비, 어질리티,<br>플라이볼 등<br>스포츠독 훈련
                </div>
            </div>
            <div class="category"><!-- 특수목적(IGP, 탐지견, 구조견 등) -->
                <div class="line1"></div>
                <div class="line2"></div>
                <div class="line3"></div>
                <div class="line4"></div>
                <img src="<c:url value='/img/category/dog4.png'/>">
                <div class="c_txt">
                    <div class="c_title"><b>특수목적견</b></div>
                    IGP, 탐지견, 구조견 등
                </div>
            </div>
        </div>
        <div class="slogan_banner_box">
            <div class="slogan_banner">
                <div class="slogan_txt">
                    <div class="slogan_title">Now Look For It Here</div>
                    소중한 내 반려견을 맡길 훈련소, <br>
                    이제 'DOGOMI'에서 찾아보세요!
                </div>
                <div class="slogan_icon">
                    <img src="<c:url value='/img/slogan_banner/slogan_icon1.png'/>" class="icon1">
                    <img src="<c:url value='/img/slogan_banner/slogan_icon2.png'/>" class="icon2">
                    <img src="<c:url value='/img/slogan_banner/slogan_icon3.png'/>" class="icon3">
                    <img src="<c:url value='/img/slogan_banner/slogan_icon4.png'/>" class="icon4">
                    <img src="<c:url value='/img/slogan_banner/slogan_icon5.png'/>" class="icon5">
                    <img src="<c:url value='/img/slogan_banner/slogan_icon6.png'/>" class="icon6">
                </div>
            </div>
        </div>
        <div class="title_add">
            <h2>이벤트</h2><!-- 섹션 타이틀 '이벤트' -->
            <div class="add">
                <a href="<c:url value='/event/listPage'/>">+ 더보기
                    <!-- <button class="event_add"></button> -->
                </a>
            </div><!-- 더보기(이벤트 페이지로 이동) -->
        </div>
        <div class="event_box"><!-- 임시로 사진 삽입, 나중에는 데이터 불러올것 -->
            <div class="event">
                <img src="<c:url value='/img/event/event1_1.jpg'/>">
            </div>
            <div class="event">
                <img src="<c:url value='/img/event/event2_1.jpg'/>">
            </div>
            <div class="event">
                <img src="<c:url value='/img/event/event3_1.png'/>">
            </div>
        </div>
    </div>
    <jsp:include page="footer.jsp" flush="false"/>
</div>
<div id="scrollToTopBtn" onclick="scrollToTop()"></div>
<script src="<c:url value='/js/body.js'/>"></script>
<script src="<c:url value='/js/index.js'/>"></script>
</body>
</html>