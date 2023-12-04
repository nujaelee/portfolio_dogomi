<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%--<c:set var="MyPageLink" value="${ pageContext.request.getSession(false).getAttribute('user_name')=='null'?'/tcMyPage/tc_info':'/UserMyPage/user_info'}" />--%>
<%@ taglib prefix="input" uri="http://www.springframework.org/tags/form" %>

<c:set var="UserlogInOutLink" value="${pageContext.request.getSession(false).getAttribute('user_id')==null? '/login/login':'/login/logout'}"/>
<c:set var="TclogInOutLink" value="${pageContext.request.getSession(false).getAttribute('tc_id')==null? '/login/login':'/login/logout'}"/>
<c:set var="UserlogInOutTxt" value="${pageContext.request.getSession(false).getAttribute('user_id')==null?'로그인 / 회원가입':'로그아웃'}"/>
<c:set var="TclogInOutTxt" value="${pageContext.request.getSession(false).getAttribute('tc_id')==null?'로그인 / 회원가입':'로그아웃'}"/>
<c:set var="tc_name" value="${ pageContext.request.getSession(false).getAttribute('tc_name')==null?'':pageContext.request.getSession(false).getAttribute('tc_name')}"/>
<c:set var="tc_no" value="${pageContext.request.getSession(false).getAttribute('tc_no')==null?'':pageContext.request.getSession(false).getAttribute('tc_no')}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <link rel="stylesheet" href="<c:url value='/css/common.css'/>">
    <link rel="stylesheet" href="<c:url value='/css/h_f.css'/>">
    <link rel="stylesheet" href="<c:url value='/css/TcMyPage.css'/>">
    <link rel="stylesheet" href="<c:url value='/css/reviewlist.css'/>">
    <title>TcMyPage</title>
</head>
<body>
<div id="wrap">

    <header>
        <jsp:include page="header.jsp" flush="false"/>
    </header>
    <div class="banner">
        <div class="pattern">
            <div class="banner_txt_box">
                <div class="tc_name"><b>${tc_name}</b></div>
                <div class="mypage_txt"><b>님의 마이페이지</b></div>
            </div>
        </div>
    </div>
    <div class="main">
        <div class="main_nav">
            <ul>
                <li class="tc_info_btn">
                    <a href="<c:url value='/tcMyPage/tc_info'/>">
                        <div class="full">훈련소 정보</div>
                    </a>
                </li>
                <li class="te_info_btn">
                    <a href="<c:url value='/tcMyPage/te_info'/>">
                        <div class="full">훈련 정보</div>
                    </a>
                </li>
                <li class="reservation_list_btn">
                    <a href="<c:url value='/tcMyPage/tc_book?page=1'/>">
                        <div class="full">예약 내역</div>
                    </a>
                </li>
                <li class="tc_review_btn">
                    <a href="<c:url value='/tcMyPage/tc_review?page=1'/>">
                        <div class="full">훈련소 리뷰</div>
                    </a>
                </li>
            </ul>
        </div>
        <div class="content">
            <c:choose>
                <c:when test="${mode=='tc_info'}">
            <div class="tc_info display_block">
                </c:when>
                <c:when test="${mode!='tc_info'}">
            <div class="tc_info display_none">
                </c:when>
            </c:choose>
                <div class="info_title">
                    <b>훈련소 정보</b>
                    <input type="button" id="tc_signout_btn" value="회원 탈퇴">
                </div>
                <form action="" id="tc_frm">
                    <div class="info_table">
                        <div class="column_box">
                            <div class="txt_title">아이디</div>
                            <div class="input_box">
                                <input type="text" class="border_none" name="tc_id" value="${tcDto.tc_id}" readonly>
                            </div>
                        </div>
                        <div class="column_box">
                            <div class="txt_title">훈련소명</div>
                            <div class="input_box">
                                <input type="text" class="border_none" name="tc_name" placeholder="훈련소명" value="${tcDto.tc_name}" ${mode=="tc_new"?"":"readonly"}>
                            </div>
                        </div>
                        <div class="column_box">
                            <div class="txt_title">비밀번호</div>
                            <div class="input_box">
                                <input type="password" class="border_none" placeholder="비밀번호" name="tc_pw" value="${tcDto.tc_pw}" ${mode=="tc_new"?"":"readonly"}>
                            </div>
                        </div>
                        <div class="column_box">
                            <div class="txt_title">훈련소 대표 이미지</div>
                            <div class="input_box">
                                <img src="<c:url value='${tcDto.tc_img}'/>" alt="훈련소 대표 이미지">
                                <input type="file" name="tc_file" class="file_input_btn display_none" multiple="multiple" >
                                <input type="text" name="tc_img" value="${tcDto.tc_img}" hidden="hidden">
                            </div>
                        </div>
                        <div class="column_box">
                            <div class="txt_title">훈련소 전화번호</div>
                            <div class="input_box">
                                <input type="text" class="border_none" name="tc_call" placeholder="XXX-XXXX-XXXX" value="${tcDto.tc_call}" readonly>
                            </div>
                        </div>
                        <div class="column_box">
                            <div class="txt_title">훈련소 이메일</div>
                            <div class="input_box">
                                <input type="text" class="border_none" name="tc_email" placeholder="qwer@asdf.com" value="${tcDto.tc_email}" readonly>
                            </div>
                        </div>
                        <div class="column_box">
                            <div class="txt_title">훈련소 주소</div>
                            <div class="input_box">
                                <input type="text" class="border_none" id="tc_main_ad" name="tc_main_ad" placeholder="시/도" value="${tcDto.tc_main_ad}" readonly>
                                <input type="text" class="border_none" id="tc_sub_ad" name="tc_sub_ad" placeholder="상세 주소" value="${tcDto.tc_sub_ad}" readonly>
                            </div>
                        </div>
                        <div class="column_box">
                            <div class="txt_title">회원가입일</div>
                            <div class="input_box">
                                <input type="text" class="border_none" name="tc_joindate" value="${tcDto.tc_joindate}" readonly>
                            </div>
                        </div>
                        <div class="column_box">
                            <div class="txt_title">훈련소 인증 현황</div>
                            <div class="input_box">
                                <c:choose>
                                    <c:when test="${tcDto.tc_confirm == 0}">
                                        <input type="text" value="인증 진행중" class="border_none" readonly>
                                    </c:when>
                                    <c:when test="${tcDto.tc_confirm == 1}">
                                        <input type="text" value="인증 완료" class="border_none" readonly>
                                    </c:when>
                                </c:choose>
                            </div>
                        </div>
                    </div>
                </form>
                <div class="info_btn">
                    <input type="button" class="tc_modify_btn display_block" value="회원정보 수정">
                    <input type="button" class="tc_modify_fin_btn display_none" value="회원정보 수정 완료">
                </div>
            <c:choose>
                <c:when test="${mode=='tc_info'}">
                    </div>
                </c:when>
                <c:when test="${mode!='tc_info'}">
                    </div>
                    </c:when>
            </c:choose>


            <c:choose>
                <c:when test="${mode=='te_info'}">
            <div class="te_info display_block">
                </c:when>
                <c:when test="${mode!='te_info'}">
            <div class="te_info display_none">
                </c:when>
            </c:choose>
                <div class="info_title">
                    <b>훈련소 훈련 정보</b>
                    <input type="button" class="te_plus" value="훈련 정보 추가">
                    <input type="button" class="te_drop_all" value="훈련 정보 전체삭제">
                </div>
                <c:choose>
                    <c:when test="${empty te_list}">
                        <div class="empty_text">훈련 정보가 존재하지 않습니다.</div>
                    </c:when>
                    <c:otherwise>
                        <c:forEach var="teDto" items="${te_list}">
                            <form action="" class="te_frm">
                                <div class="info_table">
                                    <div class="column_box">
                                        <div class="txt_title">훈련 대표 이미지</div>
                                        <div class="input_box">
                                            <img src="<c:url value='${teDto.te_img}'/>" alt="훈련소 대표 이미지">
                                            <input type="file" name="te_file" class="file_input_btn display_none" multiple="multiple">
                                            <input type="text" name="te_img" value="${teDto.te_img}" hidden="hidden">
                                        </div>
                                    </div>
                                    <div class="column_box">
                                        <div class="txt_title">훈련명</div>
                                        <div class="input_box">
                                            <input type="text" placeholder="훈련명" class="border_none" name="te_name" value="${teDto.te_name}" ${mode=="te_new"?"":"readonly"}>
                                        </div>
                                    </div>
                                    <div class="column_box">
                                        <div class="txt_title">훈련 입소날짜</div>
                                        <div class="input_box">
                                            <input type="text" placeholder="YYYYMMDD" class="border_none" name="te_in" value="${teDto.te_in}" ${mode=="te_new"?"":"readonly"}>
                                        </div>
                                    </div>
                                    <div class="column_box">
                                        <div class="txt_title">훈련 퇴소날짜</div>
                                        <div class="input_box">
                                            <input type="text" placeholder="YYYYMMDD" class="border_none" name="te_out" value="${teDto.te_out}" ${mode=="te_new"?"":"readonly"}>
                                        </div>
                                    </div>
                                    <div class="column_box">
                                        <div class="txt_title">훈련 대상</div>
                                        <div class="input_box">
                                            <input type="text" class="border_none" name="te_petsize" placeholder="(ex)대형, 중형, 소형" value="${teDto.te_petsize}" ${mode=="te_new"?"":"readonly"}>
                                        </div>
                                    </div>
                                    <div class="column_box">
                                        <div class="txt_title">훈련 가격</div>
                                        <div class="input_box">
                                            <input type="text" class="border_none" name="te_cost" placeholder="300000" value="${teDto.te_cost}" ${mode=="te_new"?"":"readonly"}>
                                        </div>
                                    </div>
                                </div>
                                <div class="info_btn">
                                    <input type="button" class="te_modify_btn display_inline" value="훈련 정보 수정">
                                    <input type="button" data-teno="${teDto.te_no}"  class="te_modify_fin_btn display_none" value="훈련 정보 수정 완료">
                                    <input type="button" data-teno="${teDto.te_no}" class="te_drop_btn display_inline" value="훈련 정보 삭제">
                                    <input type="text" value="${teDto.te_no}" name="te_no" hidden="hidden"/>
                                </div>
                            </form>
                        </c:forEach>
                    </c:otherwise>
                </c:choose>
                    <div class="te_plus_box display_none" id="te_plus_box">
                        <form action="" class="te_plus_frm">
                            <input type="text" value="${tc_no}" name="tc_no" hidden="hidden"/>
                            <div class="info_table">
                                <div class="column_box">
                                    <div class="txt_title">훈련 대표 이미지</div>
                                    <div class="input_box">
                                        <%--<img src="<c:url value='${teDto.te_img}'/>" alt="훈련소 대표 이미지">--%>
                                        <input type="file" name="te_plus_file" class="file_input_btn" multiple="multiple">
                                        <input type="text" name="te_img" value="${teDto.te_img}" hidden="hidden">
                                    </div>
                                </div>
                                <div class="column_box">
                                    <div class="txt_title">훈련명</div>
                                    <div class="input_box">
                                        <input type="text" placeholder="훈련명" class="border_gray" name="te_name" value="${teDto.te_name}">
                                    </div>
                                </div>
                                <div class="column_box">
                                    <div class="txt_title">훈련 입소날짜</div>
                                    <div class="input_box">
                                        <input type="text" placeholder="YYYYMMDD" class="border_gray" name="te_in" value="${teDto.te_in}">
                                    </div>
                                </div>
                                <div class="column_box">
                                    <div class="txt_title">훈련 퇴소날짜</div>
                                    <div class="input_box">
                                        <input type="text" placeholder="YYYYMMDD" class="border_gray" name="te_out" value="${teDto.te_out}">
                                    </div>
                                </div>
                                <div class="column_box">
                                    <div class="txt_title">훈련 대상</div>
                                    <div class="input_box">
                                        <input type="text" class="border_gray" name="te_petsize" placeholder="(ex)대형, 중형, 소형" value="${teDto.te_petsize}">
                                    </div>
                                </div>
                                <div class="column_box">
                                    <div class="txt_title">훈련 가격</div>
                                    <div class="input_box">
                                        <input type="text" class="border_gray" name="te_cost" placeholder="300000" value="${teDto.te_cost}">
                                    </div>
                                </div>
                            </div>
                            <div class="info_btn">
                                <input type="button" class="input_fin_btn" value="작성 완료"/>
                            </div>
                        </form>
                    </div>
                <c:choose>
                    <c:when test="${mode=='te_info'}">
                        </div>
                    </c:when>
                    <c:when test="${mode!='te_info'}">
                        </div>
                    </c:when>
                </c:choose>



                <c:choose>
                    <c:when test="${mode == 'tc_book'}">
                <div class="reservation_list display_block">
                    </c:when>
                    <c:when test="${mode != 'tc_book'}">
                <div class="reservation_list display_none">
                    </c:when>
                </c:choose>
                    <div class="info_title">
                        <b>훈련 예약 신청 내역</b>
                        <%--<input type="button" class="te_plus" value="훈련 정보 추가">
                        <input type="button" class="te_drop_all" value="훈련 정보 전체삭제">--%>
                    </div>
                        <c:choose>
                            <c:when test="${empty tc_b_list}">
                                <div class="empty_text">예약 신청 내역이 존재하지 않습니다.</div>
                            </c:when>
                            <c:otherwise>
                                <c:forEach var="bookteuserDto" items="${tc_b_list}">
                                    <form action="" class="book_frm">
                                        <div class="info_table">
                                            <div class="column_box">
                                                <div class="txt_title">예약 훈련명</div>
                                                <div class="input_box">
                                                    <input type="text" class="border_none" value="${bookteuserDto.te_name}" readonly>
                                                </div>
                                            </div>
                                            <div class="column_box">
                                                <div class="txt_title">예약자</div>
                                                <div class="input_box">
                                                    <input type="text" class="border_none" value="${bookteuserDto.user_name}" readonly>
                                                </div>
                                            </div>
                                            <div class="column_box">
                                                <div class="txt_title">예약자 연락처</div>
                                                <div class="input_box">
                                                    <input type="text" class="border_none" value="${bookteuserDto.user_call}" readonly>
                                                </div>
                                            </div>
                                            <div class="column_box">
                                                <div class="txt_title">비고</div>
                                                <div class="input_box">
                                                    <input type="text" class="border_none" value="${bookteuserDto.book_etc}" readonly>
                                                </div>
                                            </div>
                                            <div class="column_box">
                                                <div class="txt_title">예약 훈련 기간</div>
                                                <div class="input_box">
                                                    <input type="text" class="border_none" value="입소 날짜: ${bookteuserDto.te_in}" readonly>
                                                    <input type="text" class="border_none" value="퇴소 날짜: ${bookteuserDto.te_out}" readonly>
                                                </div>
                                            </div>
                                            <div class="column_box">
                                                <div class="txt_title">예약 날짜</div>
                                                <div class="input_box">
                                                    <input type="text" class="border_none" value="<fmt:formatDate value="${bookteuserDto.book_date}" pattern="yyyy-MM-dd" type="date"/>" readonly>
                                                </div>
                                            </div>
                                            <div class="column_box">
                                                <div class="txt_title">예약 현황</div>
                                                <div class="input_box">
                                                    <input type="text" name="book_state" class="border_none" value="${bookteuserDto.book_state}" readonly>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="info_btn">
                                            <c:choose>
                                                <c:when test="${bookteuserDto.book_state == '예약진행중'}">
                                            <input type="button" data-bno="${bookteuserDto.b_no}" class="book_ok_btn display_block" value="예약 확정"/>
                                                </c:when>
                                                <c:when test="${bookteuserDto.book_state == '예약확정'}">
                                            <input type="button" data-bno="${bookteuserDto.b_no}" class="book_cancle_btn display_block" value="예약 취소"/>
                                                </c:when>
                                            </c:choose>
                                        </div>
                                    </form>
                                </c:forEach>
                            </c:otherwise>
                        </c:choose>
                        <div class="pagination">
                            <c:if test="${ph.showPrev}">
                                <a href="<c:url value='/tcMyPage/tc_book?page=${ph.beginPage-1}'/>" class="beginPage">[이전]</a>
                            </c:if>
                            <c:forEach var="i" begin="${ph.beginPage}" end="${ph.endPage}">
                                <a href="<c:url value='/tcMyPage/tc_book?page=${i}'/>" class="page ${i==ph.page?"pageActive":""}"> ${i}</a>
                            </c:forEach>
                            <c:if test="${ph.showNext}">
                                <a href="<c:url value='/tcMyPage/tc_book?page=${ph.endPage+1}'/>" class="endPage">[다음]</a>
                            </c:if>
                        </div>
                <c:choose>
                    <c:when test="${mode=='tc_book'}">
                </div>
                    </c:when>
                    <c:when test="${mode!='tc_book'}">
                </div>
                    </c:when>
                </c:choose>

            <c:choose>
                <c:when test="${mode=='tc_review'}">
            <div class="tc_review display_block">
                </c:when>
                <c:when test="${mode!='tc_review'}">
            <div class="tc_review display_none">
                </c:when>
            </c:choose>
                <div class="review_title"><b>훈련소 리뷰 작성글</b></div>
                <c:choose>
                    <c:when test="${empty tc_r_list}">
                        <div class="empty_text">작성된 리뷰가 존재하지 않습니다.</div>
                    </c:when>
                    <c:otherwise>
                        <c:forEach var="reviewDto" items="${tc_r_list}">
                            <div class="review_box">
                                <div class="review_box_top">
<%--                                    <div class="re_no">${reviewDto.re_no}</div>--%>
                                    <div class="re_writer">${reviewDto.user_id}</div>
                                    <div class="re_regdate"><fmt:formatDate value="${reviewDto.re_update}" pattern="yyyy-MM-dd" type="date"/></div>
                                </div>
                                <%--<a class="re_phoCnt_a" href="<c:url value="/review/read?re_no=${reviewDto.re_no}&page=${ph.page}&pageSize=${ph.pageSize}&option=${param.option}&keyword=${param.keyword}"/>">--%>
                                    <div class="re_phoCnt">
                                        <div class="re_photo">
                                            <img src="<c:url value='${reviewDto.re_img}'/>" alt="훈련소 리뷰 이미지">
                                        </div>
                                        <div class="re_content">${reviewDto.re_content}</div>
                                    </div>
                                <%--</a>--%>
                            </div>
                        </c:forEach>
                    </c:otherwise>
                </c:choose>
                    <div class="pagination">
                        <c:if test="${ph.showPrev}">
                            <a href="<c:url value='/tcMyPage/tc_review?page=${ph.beginPage-1}'/>" class="beginPage">[이전]</a>
                        </c:if>
                        <c:forEach var="i" begin="${ph.beginPage}" end="${ph.endPage}">
                            <a href="<c:url value='/tcMyPage/tc_review?page=${i}'/>" class="page ${i==ph.page?"pageActive":""}"> ${i}</a>
                        </c:forEach>
                        <c:if test="${ph.showNext}">
                            <a href="<c:url value='/tcMyPage/tc_review?page=${ph.endPage+1}'/>" class="endPage">[다음]</a>
                        </c:if>
                    </div>
            <c:choose>
                <c:when test="${mode=='tc_review'}">
            </div>
                </c:when>
                <c:when test="${mode!='tc_review'}">
            </div>
                </c:when>
            </c:choose>
        </div>
    </div>
    <footer>
        <jsp:include page="footer.jsp" flush="false"/>
    </footer>
</div>
<div id="scrollToTopBtn" onclick="scrollToTop()"></div>
<script src="<c:url value='/js/body.js'/>"></script>
<script>
    // 훈련과정 수정시 유효성체크
    function teAddValid(el) {
        let te_img = el.parent().parent().find($('input[name="te_plus_file"]')).val();
        let te_name = el.parent().parent().find($('input[name="te_name"]')).val();
        let te_in = el.parent().parent().find($('input[name="te_in"]')).val();
        let te_out = el.parent().parent().find($('input[name="te_out"]')).val();
        let te_petsize = el.parent().parent().find($('input[name="te_petsize"]')).val();
        let te_cost = el.parent().parent().find($('input[name="te_cost"]')).val();

        if (te_img == "") {
            alert("이미지를 첨부해주세요");
            return false;
        }
        else if(te_name == "") {
            alert("훈련과목명을 입력해주세요");
            return false;
        }
        else if(te_in=="") {
            alert("입소날짜를 입력해주세요");
            return false;
        }
        else if(te_out=="") {
            alert("퇴소날짜를 입력해주세요");
            return false;
        }
        else if(te_petsize=="") {
            alert("훈련대상을 입력해주세요");
            return false;
        }
        else if(te_cost=="") {
            alert("훈련가격을 입력해주세요");
            return false;
        }else{
            /*alert("훈련과목이 추가되었습니다");*/
            return true;
        }
    }
    function tcAddValid() {
        let tc_name = $('input[name="tc_name"]').val();
        let tc_pw = $('input[name="tc_pw"]').val();
        let tc_img = $('input[name="tc_img"]').val();
        let tc_call = $('input[name="tc_call"]').val();
        let tc_email = $('input[name="tc_email"]').val();
        let tc_main_ad = $('input[name="tc_main_ad"]').val();
        let tc_sub_ad = $('input[name="tc_sub_ad"]').val();

        if (tc_name == "") {
            alert("훈련소명을 입력해주세요");
            return false;
        }
        else if(tc_pw == "") {
            alert("비밀번호를 입력해주세요");
            return false;
        }
        else if(tc_img == "") {
            alert("훈련소 대표 이미지를 첨부해주세요");
            return false;
        }
        else if(tc_call == "") {
            alert("훈련소 연락처를 입력해주세요");
            return false;
        }
        else if(tc_email == "") {
            alert("훈련소 이메일을 입력해주세요");
            return false;
        }
        else if(tc_main_ad == "") {
            alert("주소에서 시/도 를 입력해주세요");
            return false;
        }else if(tc_sub_ad == ""){
            alert("상세 주소를 입력해주세요");
            return false;
        }else{
            return true;
        }
    }
    $(document).ready(function(){
        $('.tc_info_btn').on("click", function(){
            $('.tc_info').addClass('display_block').removeClass('display_none');
            $('.te_info').addClass('display_none').removeClass('display_block');
            $('.reservation_list').addClass('display_none').removeClass('display_block');
            $('.tc_review').addClass('display_none').removeClass('display_block');
        });
        $('.te_info_btn').on("click", function(){
            $('.tc_info').addClass('display_none').removeClass('display_block');
            $('.te_info').addClass('display_block').removeClass('display_none');
            $('.reservation_list').addClass('display_none').removeClass('display_block');
            $('.tc_review').addClass('display_none').removeClass('display_block');
        });
        $('.reservation_list_btn').on("click", function(){
            $('.tc_info').addClass('display_none').removeClass('display_block');
            $('.te_info').addClass('display_none').removeClass('display_block');
            $('.reservation_list').addClass('display_block').removeClass('display_none');
            $('.tc_review').addClass('display_none').removeClass('display_block');
        });
        $('.tc_review_btn').on("click", function(){
            $('.tc_info').addClass('display_none').removeClass('display_block');
            $('.te_info').addClass('display_none').removeClass('display_block');
            $('.reservation_list').addClass('display_none').removeClass('display_block');
            $('.tc_review').addClass('display_block').removeClass('display_none');
        });




        $('.book_ok_btn').on("click", function(){
            let result = confirm("예약을 확정하시겠습니까?");
            let b_no = $(this).attr('data-bno');
            if(result){
                alert("예약 확정 완료");
                let book_form = $('.book_frm');
                book_form.attr('action', "<c:url value='/tcMyPage/book_state_fin'/>?b_no="+b_no);
                book_form.attr('method', 'post');
                book_form.submit();
            }else{
                alert("예약 확정 취소");
            }
        });

        $('.book_cancle_btn').on("click", function(){
            let result = confirm("예약을 취소하시겠습니까?");
            let b_no = $(this).attr('data-bno');
            if(result){
                alert("예약 취소 완료");
                let book_form = $('.book_frm');
                book_form.attr('action', "<c:url value='/tcMyPage/book_state_can'/>?b_no="+b_no);
                book_form.attr('method', 'post');
                book_form.submit();
            }else{
                alert("예약 취소");
            }
        });

        $('#tc_signout_btn').on("click",function(){
            let result = confirm("회원탈퇴 하시겠습니까?");
            if(result) {
                alert("탈퇴 완료");
                location.href = "<c:url value='/tcMyPage/tc_remove'/>";
            } else {
                alert("탈퇴 취소");
            }
        });

        $('.te_drop_all').on("click", function(){
            let result = confirm("반려견 정보를 모두 삭제하시겠습니까?");
            if(result){
                alert("삭제 완료");
                location.href = "<c:url value='/tcMyPage/te_remove_all'/>";
            }else{
                alert("삭제 취소");
            }
        });

        $('.te_drop_btn').on("click", function(){
            let result = confirm("훈련 정보를 삭제하시겠습니까?");
            let te_no = $(this).attr('data-teno');
            if(result){
                alert("삭제 완료");
                location.href = "<c:url value='/tcMyPage/te_remove'/>?te_no="+te_no;
            }else{
                alert("삭제 취소");
            }
        });

        $('.tc_modify_btn').on("click", function(){
            alert("회원정보 수정");
            let isReadOnly = $('input[name="tc_name"]').attr('readonly');
            if(isReadOnly == "readonly") {
                $('input[name="tc_pw"]').attr('readonly',false).removeClass('border_none').addClass('border_gray');
                $('input[name="tc_name"]').attr('readonly',false).removeClass('border_none').addClass('border_gray');
                $('input[name="tc_call"]').attr('readonly',false).removeClass('border_none').addClass('border_gray');
                $('input[name="tc_email"]').attr('readonly',false).removeClass('border_none').addClass('border_gray');
                $('input[name="tc_main_ad"]').attr('readonly',false).removeClass('border_none').addClass('border_gray');
                $('input[name="tc_sub_ad"]').attr('readonly',false).removeClass('border_none').addClass
                ('border_gray');
            }
            /*$('input[name="tc_pw"]').attr('type', 'text');*/
            $(this).addClass('display_none').removeClass('display_block');
            $('.tc_modify_fin_btn').addClass('display_block').removeClass('display_none');
            $('input[name="tc_file"]').addClass('display_block').removeClass('display_none');
        });
        $('.tc_modify_fin_btn').on("click", function(){
            if(tcAddValid()){
                $('input[name="tc_name"]').addClass('border_none').removeClass('border_gray');
                $('input[name="tc_call"]').addClass('border_none').removeClass('border_gray');
                $('input[name="tc_email"]').addClass('border_none').removeClass('border_gray');
                $('input[name="tc_main_ad"]').addClass('border_none').removeClass('border_gray');
                $('input[name="tc_pw"]').addClass('border_none').removeClass('border_gray');
                $('input[name="tc_sub_ad"]').addClass('border_none').removeClass('border_gray');

                /*$('input[name="tc_pw"]').attr('type', 'password');*/
                $('.tc_modify_btn').addClass('display_block').removeClass('display_none');
                $(this).addClass('display_none').removeClass('display_block');
                $('input[name="tc_file"]').addClass('display_none').removeClass('display_block');

                let tc_frm = $('#tc_frm');
                let tc_img_val = $('input[name="tc_img').attr('value');
                alert("회원정보 수정 완료");
                tc_frm.attr('action', "<c:url value='/tcMyPage/tc_modify'/>");
                tc_frm.attr('method', 'post');
                // if(tc_img_val.indexOf(".") != 0){
                tc_frm.attr('enctype', 'multipart/form-data');
                // }
                // alert(tc_img_val);
                tc_frm.submit();
            }
        });

        $('.te_modify_btn').on("click", function(){
            alert("훈련정보 수정");
            let isReadOnly = $('input[name="te_name"]').attr('readonly');
            if(isReadOnly == "readonly") {
                $(this).parent().parent().find('input[name="te_name"]').attr('readonly',false).removeClass('border_none').addClass('border_gray');
                $(this).parent().parent().find('input[name="te_in"]').attr('readonly',false).removeClass('border_none').addClass('border_gray');
                $(this).parent().parent().find('input[name="te_out"]').attr('readonly',false).removeClass('border_none').addClass('border_gray');
                $(this).parent().parent().find('input[name="te_petsize"]').attr('readonly',false).removeClass('border_none').addClass('border_gray');
                $(this).parent().parent().find('input[name="te_cost"]').attr('readonly',false).removeClass('border_none').addClass('border_gray');
            }
            $(this).addClass('display_none').removeClass('display_inline');
            $(this).parent().find('.te_modify_fin_btn').addClass('display_inline').removeClass('display_none');
            $(this).parent().parent().find('input[name="te_file"]').addClass('display_block').removeClass('display_none');
        });
        $('.te_modify_fin_btn').on("click", function(){
            if(teAddValid($(this))) {
                $(this).parent().parent().find('input[name="te_name"]').removeClass('border_gray').addClass('border_none');
                $(this).parent().parent().find('input[name="te_in"]').removeClass('border_gray').addClass('border_none');
                $(this).parent().parent().find('input[name="te_out"]').removeClass('border_gray').addClass('border_none');
                $(this).parent().parent().find('input[name="te_petsize"]').removeClass('border_gray').addClass('border_none');
                $(this).parent().parent().find('input[name="te_cost"]').removeClass('border_gray').addClass('border_none');

                $(this).parent().find('.te_modify_btn').addClass('display_inline').removeClass('display_none');
                $(this).addClass('display_none').removeClass('display_inline');
                $(this).parent().parent().find('input[name="te_file"]').addClass('display_none').removeClass('display_block');

                let te_frm = $(this).parent().parent('.te_frm');
                alert("회원정보 수정 완료");
                te_frm.attr('action', "<c:url value='/tcMyPage/te_modify'/>");
                te_frm.attr('method', 'post');
                te_frm.attr('enctype', 'multipart/form-data');
                te_frm.submit();
            }
        });

        // 훈련 정보 추가
        $('.te_plus').on("click", function(){
            $('.empty_text').addClass('display_none');

            let te_box = $('.te_plus_box');
            te_box.removeClass('display_none').addClass('display_block');

            let t_box = document.getElementById("te_plus_box");
            t_box.scrollIntoView({
                behavior: "smooth",
                block: "center"
            });
        });
        $('.input_fin_btn').on("click", function(){
            if(teAddValid($(this))) {
                $('.te_plus_box').removeClass('display_block').addClass('display_none');
                let te_plus_frm = $('.te_plus_frm');

                te_plus_frm.attr('action', "<c:url value='/tcMyPage/te_add'/>");
                te_plus_frm.attr('method', 'post');
                te_plus_frm.attr('enctype','multipart/form-data');
                te_plus_frm.submit();
                alert("훈련 정보가 추가되었습니다");
            }
        });
    });
</script>
</body>
</html>