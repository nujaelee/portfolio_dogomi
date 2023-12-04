<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page session="false" %>
<c:set var="UserlogInOutLink" value="${pageContext.request.getSession(false).getAttribute('user_id')==null? '/login/login':'/login/logout'}"/>
<c:set var="TclogInOutLink" value="${pageContext.request.getSession(false).getAttribute('tc_id')==null? '/login/login':'/login/logout'}"/>
<c:set var="UserlogInOutTxt" value="${pageContext.request.getSession(false).getAttribute('user_id')==null?'로그인 / 회원가입':'로그아웃'}"/>
<c:set var="TclogInOutTxt" value="${pageContext.request.getSession(false).getAttribute('tc_id')==null?'로그인 / 회원가입':'로그아웃'}"/>
<c:set var="user_name" value="${ pageContext.request.getSession(false).getAttribute('user_name')==null?'':pageContext.request.getSession(false).getAttribute('user_name')}"/>
<c:set var="tc_name" value="${ pageContext.request.getSession(false).getAttribute('tc_name')==null?'':pageContext.request.getSession(false).getAttribute('tc_name')}"/>
<c:set var="user_no" value="${ pageContext.request.getSession(false).getAttribute('user_no')==null?'':pageContext.request.getSession(false).getAttribute('user_no')}"/>
<c:set var="tc_no" value="${ pageContext.request.getSession(false).getAttribute('tc_no')==null?'':pageContext.request.getSession(false).getAttribute('tc_no')}"/>

<html>
<head>
    <title>Title</title>
    <script src="https://code.jquery.com/jquery-1.11.3.js"></script>
</head>
<body>
<div class="h_box">
    <div class="h_welcome">
        DOGOMI에 오신 것을 환영합니다.
    </div>
    <div class="h_top">
        <div class="w_1200">
            <div class="h_gif"></div>
            <a href="<c:url value='/'/> ">
                <img src="<c:url value='/img/dog2.png'/>" class="h_logo">
            </a>
            <div class="member">
                <c:choose>
                    <c:when test="${pageContext.request.getSession(false).getAttribute('user_id') != null}">
                        <span><c:out value="${user_name}"/>님 환영합니다.</span>
                    </c:when>
                    <c:when test="${pageContext.request.getSession(false).getAttribute('tc_id') != null}">
                        <span><c:out value="${tc_name}"/>님 환영합니다.</span>
                    </c:when>
                </c:choose>
                <button class="login_join_btn">
                    <c:choose>
                        <c:when test="${pageContext.request.getSession(false).getAttribute('user_id') != null}">
                            <a href="<c:url value='${ UserlogInOutLink }' />">
                                <ul class="m_ul">
                                    <li>${ UserlogInOutTxt }</li>
                                </ul>
                            </a>
                        </c:when>
                        <c:when test="${pageContext.request.getSession(false).getAttribute('tc_id') != null}">
                            <a href="<c:url value='${ TclogInOutLink }' />">
                                <ul class="m_ul">
                                    <li>${ TclogInOutTxt }</li>
                                </ul>
                            </a>
                        </c:when>
                        <c:when test="${pageContext.request.getSession(false).getAttribute('tc_id') == null && pageContext.request.getSession(false).getAttribute('user_id') == null}">
                            <a href="<c:url value='/login/login' />">
                                <ul class="m_ul">
                                    <li>로그인 / 회원가입</li>
                                </ul>
                            </a>
                        </c:when>
                    </c:choose>
                </button>
            </div>
        </div>
    </div>
    <div class="h_bot">
        <div class="nav">
            <ul class="nav_ul">
                <li class="nav_search">
                    <a href="<c:url value='/search/searchListPagination'/>">훈련소 찾기</a>
                </li>
                <li class="nav_event">
                    <a href="<c:url value='/event/listPage'/>">이벤트</a>
                </li>
                <li class="nav_review">
                    <a href="<c:url value='/review/list'/>">후기</a>
                </li>
                <li class="nav_community">
                    <a href="<c:url value='/cmt/list'/>">커뮤니티</a>
                </li>
                <li class="nav_faq">
                    <a href="<c:url value='/cs/list'/>">FAQ</a>
                </li>

                <c:choose>
                    <c:when test="${pageContext.request.getSession(false).getAttribute('user_id') != null}">
                        <li class="nav_mypage">
                            <a href="<c:url value='/userMyPage/user_info'/>">마이페이지</a>
                        </li>
                    </c:when>
                    <c:when test="${pageContext.request.getSession(false).getAttribute('tc_id') != null}">
                        <li class="nav_mypage">
                            <a href="<c:url value='/tcMyPage/tc_info'/>">마이페이지</a>
                        </li>
                    </c:when>
                </c:choose>
            </ul>
        </div>
    </div>
</div>
</body>
</html>