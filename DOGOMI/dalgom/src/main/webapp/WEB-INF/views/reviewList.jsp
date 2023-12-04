<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<c:set var="logInOutLink" value="${ sessionScope.user_id==null ? '/login/login':'/login/logout' }" />
<c:set var="logInOutTxt" value="${ sessionScope.user_id==null ? 'login':'logout' }" />
<c:set var="userId" value="${ pageContext.request.getSession(false).getAttribute('user_id')==null ? '':pageContext.request.getSession(false).getAttribute('user_id') }" />


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="<c:url value='/css/common.css'/> ">
    <link rel="stylesheet" href="<c:url value='/css/h_f.css'/> ">
    <link rel="stylesheet" href="<c:url value='/css/reviewlist.css'/> ">
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>

</head>
<body>
<div id="wrap">
    <jsp:include page="header.jsp" flush="false"/>

    <div class="container">
        <div class="banner">
            <div class="pattern">
                <div class="banner_txt_box">
                    <h2>후기 리스트</h2>
                </div>
            </div>
        </div>
        <main>
            <script>
                let msg = "${msg}"
                if(msg=="del_ok") { alert("삭제되었습니다.") }
                if(msg=="del_err") { alert("요청이 실패하였습니다.") }
                if(msg=="WRT_OK") { alert("글쓰기 성공")}
                if(msg=="NO_LIST") { alert("해당 게시물이 존재하지 않습니다..")}
            </script>
            <div class="review_main">
                <div class="search_area" name="search_area">
                    <select id="sel_filter">
                        <option value="C" ${ param.option=="C"?"selected":"" }>내용</option>
                        <option value="W" ${ param.option=="W"?"selected":"" }>작성자</option>
                    </select>
                    <div id="search_box">
                        <input type="text" id="txt_search" name="txt_search" placeholder="검색어를 입력하세요" value="${param.keyword}">
                        <input type="button" id="btn_search" name="btn_search" class="search_img">
                    </div>
                    <div id="btn_write" onclick="location.href='<c:url value="/review/write"/>'">글쓰기</div>
                </div>
                <div class="content_area">
                    <c:choose>
                        <c:when test="${empty list}">
                            <h1>일치하는 결과가 없습니다.</h1>
                        </c:when>
                        <c:otherwise>
                            <c:forEach var="reviewDto" items="${list}">
                                <div class="review_box">
                                    <div class="review_box_top">
                                        <div class="no" hidden="hidden">${reviewDto.re_no}</div>
                                        <div class="writer">${reviewDto.user_id}</div>
                                        <div class="regdate"><fmt:formatDate value="${reviewDto.re_update}" pattern="yyyy-MM-dd" type="date"/></div>
                                        <c:if test="${reviewDto.user_id.equals(userId)}">
                                            <div class="btn_box">
                                            <button type="button"  class="btn" id="btn_del">삭제</button>
                                            <a href="<c:url value="/review/read?re_no=${reviewDto.re_no}&page=${ph.page}&pageSize=${ph.pageSize}&option=${param.option}&keyword=${param.keyword}"/>" class="btn" id="btn_modify">수정</a>
                                            </div>
                                        </c:if>
                                    </div>
                                    <div class="tc_name">
                                        <c:set var="tc_no" value="${reviewDto.tc_no}"/>
                                        <c:forEach var="tcDto" items="${tcList}">
                                            <c:choose>
                                                <c:when test="${tcDto.tc_no.equals(tc_no)}">
                                                    훈련소명: ${tcDto.tc_name}
                                                </c:when>
                                            </c:choose>
                                        </c:forEach></div>
                                    <div class="photo_content">
                                        <div class="photo_r">
                                            <img src="<c:url value='${reviewDto.re_img}'/>" class="r_img">
                                        </div>
                                        <div class="content">${reviewDto.re_content}</div>
                                    </div>
                                    <%--<div class="phoCnt"><div class="photo"><img src="<c:url value='${reviewDto.re_img}'/>" class="list_img"></div><div class="content">${reviewDto.re_content}</div></div>--%>
                                </div>
                            </c:forEach>
                        </c:otherwise>
                    </c:choose>
                    <div class="pagination">
                        <c:if test="${ph.showPrev}">
                            <a href="<c:url value='/review/list?page=${ph.beginPage-1}&pageSize=${ph.pageSize}' />" class="beginPage">[이전]</a>
                        </c:if>
                        <c:forEach var="i" begin="${ph.beginPage}" end="${ph.endPage}">
                            <a href="<c:url value='/review/list?page=${i}&pageSize=${ph.pageSize}&option=${param.option}&keyword=${param.keyword}' /> " class="page ${i==ph.page?"pageActive":""}"> ${i}</a>
                        </c:forEach>
                        <c:if test="${ph.showNext}">
                            <a href="<c:url value='/review/list?page=${ph.endPage+1}&pageSize=${ph.pageSize}' />" class="endPage">[다음]</a>
                        </c:if>
                    </div>
                </div>
            </div>
            <script>
                $(document).ready(function(){

                    // url 파라미터 값들 구하기
                    function getUri() {
                        let tmpParam="";
                        const searchParams = new URLSearchParams(location.search);
                        for(const param of searchParams) {
                            console.log(param);
                            tmpParam+=param[0]+"="+param[1]+"&";
                        }
                        return tmpParam;
                    }
                    $('#btn_del').on("click", function(){
                        if(!confirm("삭제하시겠습니까?")){return;}
                        else {
                            let re_no=$(this).parent().parent('.review_box_top').children('.no').text();
                            // alert("re_no: " + re_no);
                            location.href="/app/review/remove?re_no="+re_no;
                        }
                    });

                    $('#btn_search').on("click", function(){
                        <%--alert("<c:url value='/board/list'/>?page=${page}&pageSize=${pageSize}");--%>

                        location.href = "<c:url value='/review/list'/>?page=1&pageSize=${pageSize}&option="+$('#sel_filter').val()+"&keyword="+$('#txt_search').val().trim();
                        /* keyword 와 option 은 SearchCondition 의 이름과 맞춰줘야 한다. */
                    });

                    $('#txt_search').on('keydown', function(e){
                        if(e.keyCode==13 && $('#btn_search').val().trim().length > 0) {
                            $('#btn_search').trigger('click');
                        }
                    });
                })
            </script>
        </main>
    </div>

    <jsp:include page="footer.jsp" flush="false"/>
</div>
<div id="scrollToTopBtn" onclick="scrollToTop()"></div>
<script src="<c:url value='/js/body.js'/>"></script>
</body>
</html>