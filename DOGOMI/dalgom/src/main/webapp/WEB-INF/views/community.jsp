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
    <link rel="stylesheet" href="<c:url value='/css/community.css'/> ">
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>

</head>
<body>
<div id="wrap">
    <jsp:include page="header.jsp" flush="false"/>

    <div class="container">
        <div class="write_box">
            <h2 class="cu_h2">커뮤니티 ${mode=="new"?"게시글 수정":"게시글"}</h2>
            <form action="" id="frm" >
                <input type="hidden" name="cu_no" value="${cmtDto.cu_no}"  readonly>
                <input type="text" name="cu_title" id="cu_title" value="${cmtDto.cu_title}" placeholder="제목" ${mode=="new"?"":"readonly"}>
                <div class="textbox">
                    <textarea name="cu_content" id="cu_content" ${mode=="new"?"":"readonly"} >${cmtDto.cu_content}</textarea>
                </div>
                <c:choose>
                    <c:when test="${cmtDto.cu_img != null}">
                        <div class="file_box">
                            <img src="<c:url value='${cmtDto.cu_img}'/>" alt="사진" <%-- class="l_img"--%>>
                        </div>
                    </c:when>
                </c:choose>
                <input type="file" name="f_file"  multiple="multiple" class="fFileBox ${mode=="new"?"":"displayNone"}" >
                <c:if test="${ mode == 'new'}">
                    <button type="button"  class="btn" id="cu_reg">글등록</button>
                </c:if>
                <c:if test="${ mode!='new' && cmtDto.user_id.equals(userId)}">
                    <button type="button"  class="btn" id="btn_modify">수정</button>
                    <button type="button"  class="btn" id="btn_del">삭제</button>
                </c:if>
            </form>
            <div class="${mode=="new"?"displayNone":""}">
                <h2>댓글</h2>
                <div class="comment_box">
                    <jsp:include page="community_comment.jsp" flush="true"/>
                </div>
            </div>
            <script>
                $(document).ready(function(){
                    $('#btn_submit_comment').on("click", function(){
                        alert("<c:url value='/comments'/>?page=${page}&pageSize=${pageSize}&cu_no=${cmtDto.cu_no}")
                        location.href = "<c:url value='/comments'/>?cu_no=${cmtDto.cu_no}";


                        let frm = $("#frm");
                        frm.attr('action', "<c:url value='/comments/add'/>?page=${page}&pageSize=${pageSize}");
                        frm.attr('method', 'post');
                        frm.submit();
                    })

                    $('#cu_reg').on("click", function(){
                        if($('#cu_title').val().trim()==""   ) {
                            alert("제목을 입력하시오");
                            $('#cu_title').focus();
                        }
                        else if($('#cu_content').val().trim()==""   ) {
                            alert("내용을 입력하시오");
                            $('#cu_content').focus();
                        }
                        else {
                            let frm = $("#frm");
                            frm.attr('action', "<c:url value='/cmt/write'/>");
                            frm.attr('method', 'post');
                            frm.attr('enctype','multipart/form-data')
                            frm.submit();
                        }
                    })
                    $('#btn_modify').on("click", function(){
                        let frm = $("#frm");
                        let isReadOnly = $('input[name="cu_title"]').attr('readonly');
                        console.log("isReadOnly: " + isReadOnly)
                        $('.fFileBox').removeClass('displayNone')
                        if(isReadOnly == "readonly") {
                            $('input[name="cu_title"]').attr('readonly',false);
                            $('textarea[name="cu_content"]').attr('readonly',false);
                            $('#btn_modify').text("등록");
                            $('.cu_h2').text("게시물 수정");
                            return;
                        }
                        frm.attr('action', "<c:url value='/cmt/modify'/>?"+getUri());
                        frm.attr('method', 'post');
                        frm.attr('enctype','multipart/form-data')
                        frm.submit();
                    })
                    function getUri() {
                        let tmpParam="";
                        const searchParams = new URLSearchParams(location.search); // bno=673&page=2&pageSize=10&option=W&keyword=2
                        for(const param of searchParams) {
                            console.log(param);
                            tmpParam+=param[0]+"="+param[1]+"&";
                        }
                        return tmpParam;
                    }

                    $('#btn_del').on("click", function(){
                        if(!confirm("삭제하시겠습니까? ")){return;}
                        let frm = $("#frm");
                        frm.attr('action', "<c:url value='/cmt/remove'/>?"+getUri());

                        frm.attr('method', 'post');
                        frm.submit();
                    })

                })
            </script>
        </div>
    </div>

    <jsp:include page="footer.jsp" flush="false"/>

</div>
<div id="scrollToTopBtn" onclick="scrollToTop()"></div>
<script src="<c:url value='/js/body.js'/>"></script>
</body>
</html>