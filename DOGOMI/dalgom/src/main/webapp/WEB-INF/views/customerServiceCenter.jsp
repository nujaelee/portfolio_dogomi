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
    <title>게시판 페이지</title>
    <link rel="stylesheet" href="<c:url value='/css/common.css'/>">
    <link rel="stylesheet" href="<c:url value='/css/h_f.css'/>">
    <link rel="stylesheet" href="<c:url value='/css/cs.css'/>">

    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>

</head>
<body>
<div id="wrap">
    <jsp:include page="header.jsp" flush="false"/>
    <div class="container">
        <div class="cs_box">
            <div class="cs_call_box">
                <div class="cs_content_box">
                    <div class="cs_txt_content">
                        <ul>
                            <li class="cs_center">고객센터</li>
                            <li>|</li>
                            <li class="cs_txt_num">02-1234-5678</li>
                        </ul>
                    </div>
                    <div class="cs_txt_time">상담가능시간: 평일 오전9시 ~ 오후6시 (주말,공휴일 제외)</div>
                </div>
            </div>
        </div>

        <div class="notice_cs_box">
            <div class="notice_box">
                <div class="notice_title">공지사항</div>
                <c:forEach var="NoticeDto" items="${ntList}">
                    <div class="notice_list">
                        <div class="item">
                                ${NoticeDto.nt_title}
                            <span>
                                <fmt:formatDate value="${NoticeDto.nt_date}" pattern="yyyy-MM-dd" type="date"/>
                            </span>
                        </div>
                        <div class="txt nt_content">
                                ${NoticeDto.nt_content}
                        </div>
                    </div>
                </c:forEach>
            </div>

            <div class="cs_list_box">
                <div class="cs_title">자주 찾는 질문</div>
                <c:forEach var="CsDto" items="${csList}">
                    <div class="cs_list">
                        <div class="item">
                                ${CsDto.cs_title}
                            <span>
                            <fmt:formatDate value="${CsDto.cs_date}" pattern="yyyy-MM-dd" type="date"/>
                        </span>
                        </div>
                        <div class="txt cs_content">${CsDto.cs_content}</div>
                    </div>
                </c:forEach>
            </div>
        </div>
    </div>
    <jsp:include page="footer.jsp" flush="false"/>
</div>
<div id="scrollToTopBtn" onclick="scrollToTop()"></div>
<script src="<c:url value='/js/body.js'/>"></script>
<script>
    $(document).ready(function(){
        $('.item').click(function(){
            $(this).next().slideToggle(500);
        });
    });
</script>
</body>
</html>