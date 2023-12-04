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
    <title>PetTrainingCenter</title>
    <link rel="stylesheet" href="<c:url value='/css/common.css'/> ">
    <link rel="stylesheet" href="<c:url value='/css/h_f.css'/> ">
    <link rel="stylesheet" href="<c:url value='/css/review.css'/> ">

    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
</head>
<body>
<div id="wrap">
    <jsp:include page="header.jsp" flush="false"/>

    <div class="container">

        <div class="write_box">
            <h2>후기${mode=="new"?"쓰기":"수정"}</h2>
            <form action="" id="frm">
                <input type="hidden" name="re_no" value="${reviewDto.re_no}" >
                <div class="file_box">
                    <select name="tc_no" class="tcNoCl">
                        <c:choose>
                            <c:when test="${empty bList}">
                                <option value="noReserve">예약한 훈련이 없어요ㅠㅠ</option>
                            </c:when>
                            <c:otherwise>
                                <c:forEach var="BookUserTeUserDto" items="${bList}">
                                    <option value="${BookUserTeUserDto.tc_no}" class="">${BookUserTeUserDto.tc_name} ${BookUserTeUserDto.te_name}</option>
                                </c:forEach>
                            </c:otherwise>
                        </c:choose>
                    </select>

                    <div class="img_box" >
                        <img src="<c:url value='${reviewDto.re_img}'/>">
                    </div>
                    <input id="fileUploader" type="file" name="f_file"  multiple="multiple">
                </div>
                <div class="textbox">
                    <textarea  name="re_content" id="re_content">${reviewDto.re_content}</textarea>
                </div>
                <div class="input_box">
                    <c:if test="${mode == 'new'}">
                        <button id="rv_reg">글등록</button>
                    </c:if>
                    <c:if test="${ mode!='new' && reviewDto.user_id.equals(userId)  }">
                        <button type="button"  class="btn" id="btn_modify">수정</button>
                    </c:if>
                </div>
            </form>
        </div>
    </div>
    <script>
        $(document).ready(function(){
            $('#rv_reg').on("click", function(){
                if ($('.tcNoCl').text().trim()=="예약한 훈련이 없어요ㅠㅠ"){
                    alert("예약이 있는 경우에만 후기를 쓰실수있습니다.");
                    return;
                }
                if($('#re_content').val().trim()=="") {
                    alert("내용을 입력하시오");
                    $('#re_content').focus();
                }
                else {
                    let frm = $("#frm");
                    frm.attr('action', "<c:url value='/review/write'/>");
                    frm.attr('method', 'post');
                    frm.attr('enctype','multipart/form-data')
                    frm.submit();
                }
            })

            $('#btn_modify').on("click", function(){
                let frm = $("#frm");
                frm.attr('action', "<c:url value='/review/modify'/>?"+getUri());
                frm.attr('method', 'post');
                console.log()
                if ($("#fileUploader").value != null){
                    frm.attr('enctype',$("#re_imgID").value)
                }
                else{
                    frm.attr('enctype','multipart/form-data')
                }
                frm.submit();
            })

            function getUri() {
                let tmpParam="";
                const searchParams = new URLSearchParams(location.search);
                for(const param of searchParams) {
                    console.log(param);
                    tmpParam+=param[0]+"="+param[1]+"&";
                }
                return tmpParam;
            }
        })
    </script>
    <jsp:include page="footer.jsp" flush="false"/>
</div>
<div id="scrollToTopBtn" onclick="scrollToTop()"></div>
<script src="<c:url value='/js/body.js'/>"></script>
</body>
</html>