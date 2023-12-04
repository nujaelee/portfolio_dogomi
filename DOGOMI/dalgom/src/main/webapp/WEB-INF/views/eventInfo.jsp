<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page session="false" %> <%-- 이 페이지에서는 세션을 새로 생성 안하겠다 라는 뜻 --%>
<c:set var="logInOutLink" value="${ pageContext.request.getSession(false).getAttribute('user_id')==null?'/login/login':'/login/logout'}" />
<c:set var="logInOutTxt" value="${ pageContext.request.getSession(false).getAttribute('user_id')==null?'Login':'Logout'}" />
<c:set var="userid" value="${ pageContext.request.getSession(false).getAttribute('user_id')==null?'':pageContext.request.getSession(false).getAttribute('user_id')}" />


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <title>게시판 페이지</title>
    <link rel="stylesheet" href="<c:url value='/css/common.css'/>">
    <link rel="stylesheet" href="<c:url value='/css/h_f.css'/>">
    <link rel="stylesheet" href="<c:url value='/css/event.css'/>">

</head>
<body>
<div id="wrap">
    <jsp:include page="header.jsp" flush="false"/>

    <div class="container">

        <div class="event_info_section">

                <div class="event_info_section">

                    <div class="event_info_title_box">
                        ${eventDto.ev_title}
                        <span><fmt:formatDate value="${eventDto.ev_update}" pattern="yyyy-MM-dd" type="date"/></span>
                    </div>

                    <div class="event_info_img_box">
                        <img src="<c:url value='${eventDto.ev_img2}'/>" alt=" 이벤트 설명해주는 긴 이미지">
                    </div>

                </div>

        </div>

    </div>

    <jsp:include page="footer.jsp" flush="false"/>

</div>
<div id="scrollToTopBtn" onclick="scrollToTop()"></div>
<script src="<c:url value='/js/body.js'/>"></script>
</body>
</html>