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
        <div class="event_section">
            <c:forEach var="EventDto" items="${list}">
                <div class="event_block">
                    <div class="event_title_box">
                        <a href="<c:url value='/event/info?ev_no=${EventDto.ev_no}'/>">${EventDto.ev_title}</a>
                        <span><fmt:formatDate value="${EventDto.ev_update}" pattern="yyyy-MM-dd" type="date"/></span>
                    </div>
                    <div class="event_img_box">
                        <a href="<c:url value='/event/info?ev_no=${EventDto.ev_no}'/>">
                            <img src="<c:url value='${EventDto.ev_img}'/> ">
                        </a>
                    </div>
                </div>
            </c:forEach>
        </div>
        <div class="pagination">
            <c:if test="${ph.showPrev}">
                <a href="<c:url value='/event/listPage?page=${ph.beginPage-1}&pageSize=${ph.pageSize}' />" class="beginPage">[이전]</a>
            </c:if>
            <c:forEach var="i" begin="${ph.beginPage}" end="${ph.endPage}">
                <a href="<c:url value='/event/listPage?page=${i}&pageSize=${ph.pageSize}' /> " class="page ${i==ph.page?"pageActive":""}"> ${i}</a>
            </c:forEach>
            <c:if test="${ph.showNext}">
                <a href="<c:url value='/event/listPage?page=${ph.endPage+1}&pageSize=${ph.pageSize}' />" class="endPage">[다음]</a>
            </c:if>
        </div>
    </div>

    <jsp:include page="footer.jsp" flush="false"/>
</div>
<div id="scrollToTopBtn" onclick="scrollToTop()"></div>
<script src="<c:url value='/js/body.js'/>"></script>
</body>
</html>