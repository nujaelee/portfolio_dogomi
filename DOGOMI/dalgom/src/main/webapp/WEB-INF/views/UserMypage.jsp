<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="input" uri="http://www.springframework.org/tags/form" %>

<%@ page session="false" %>
<c:set var="UserlogInOutLink" value="${pageContext.request.getSession(false).getAttribute('user_id')==null? '/login/login':'/login/logout'}"/>
<c:set var="TclogInOutLink" value="${pageContext.request.getSession(false).getAttribute('tc_id')==null? '/login/login':'/login/logout'}"/>
<c:set var="UserlogInOutTxt" value="${pageContext.request.getSession(false).getAttribute('user_id')==null?'로그인 / 회원가입':'로그아웃'}"/>
<c:set var="TclogInOutTxt" value="${pageContext.request.getSession(false).getAttribute('tc_id')==null?'로그인 / 회원가입':'로그아웃'}"/>

<c:set var="user_name" value="${ pageContext.request.getSession(false).getAttribute('user_name')==null?'':pageContext.request.getSession(false).getAttribute('user_name')}"/>
<c:set var="user_no" value="${ pageContext.request.getSession(false).getAttribute('user_no')==null?'':pageContext.request.getSession(false).getAttribute('user_no')}"/>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <link rel="stylesheet" href="<c:url value='/css/common.css'/>">
    <link rel="stylesheet" href="<c:url value='/css/h_f.css'/>">
    <link rel="stylesheet" href="<c:url value='/css/UserMyPage_fin.css'/>">
    <link rel="stylesheet" href="<c:url value='/css/reviewlist.css'/>">
    <link rel="stylesheet" href="<c:url value='/css/communitylist.css'/>">
<%--    <link rel="stylesheet" href="<c:url value='/css/communitylist.css'/> ">--%>
    <title>UserMyPage</title>
</head>
<body>
<div id="wrap">

    <header>
        <jsp:include page="header.jsp" flush="false"/>
    </header>
    <div class="banner">
        <div class="pattern">
            <div class="banner_txt_box">
                <div class="user_id"><b>${user_name}</b></div>
                <div class="mypage_txt"><b>님의 마이페이지</b></div>
                <!-- <div class="logout_btn"><b>로그아웃</b></div> -->
            </div>
        </div>
    </div>
    <div class="main">
        <div class="main_nav">
            <ul>
            <li class="my_info_btn">
                <a href="<c:url value='/userMyPage/user_info'/>">
                    <div class="full">내 정보</div>
                </a>
            </li>
            <li class="pet_info_btn">
                <a href="<c:url value='/userMyPage/pet_info'/>">
                    <div class="full">반려견 정보</div>
                </a>
            </li>
            <li class="jjim_btn">
                <a href="<c:url value='/userMyPage/user_jjim?page=1'/>">
                    <div class="full">훈련소 찜 목록</div>
                </a>
            </li>
            <li class="book_btn">
                <a href="<c:url value='/userMyPage/user_book?page=1'/>">
                    <div class="full">훈련 예약 목록</div>
                </a>
            </li>
            <li class="my_commnunity_btn">
                <a href="<c:url value='/userMyPage/user_community?page=1'/>">
                    <div class="full">My 커뮤니티 작성글</div>
                </a>
            </li>
            <li class="my_review_btn">
                <a href="<c:url value='/userMyPage/user_review?page=1'/>">
                    <div class="full">My 리뷰 작성글</div>
                </a>
            </li>
            </ul>
        </div>
        <div class="content">
            <c:choose>
                <c:when test="${mode=='user_info'}">
                    <div class="my_info display_block">
                </c:when>
                <c:when test="${mode!='user_info'}">
                    <div class="my_info display_none">
                </c:when>
            </c:choose>
                <div class="info_title">
                    <b>내 정보${mode=="user_new"?"수정":""}</b>
<%--                    <a href="<c:url value='/userMyPage/user_remove'/>">--%>
                        <input type="button" class="display_block" id="signout_btn" value="회원 탈퇴">
                    <%--</a>--%>
                </div>
                <%--                <div class="user_title info_title">견주 정보</div>--%>
                <form action="" id="user_frm">
                    <div class="info_table">
                        <div class="column_box">
                            <div class="id_txt txt_title">아이디</div>
                            <input type="text" class="border_none" name="user_id" value="${userDto.user_id}" readonly>
                        </div>

                        <div class="column_box">
                            <div class="name_txt txt_title">이름</div>
                            <input type="text" class="border_none" name="user_name" value="${userDto.user_name}" ${mode=="user_new"?"":"readonly"}>
                        </div>

                        <div class="column_box">
                            <div class="pw_txt txt_title">비밀번호</div>
                            <input type="password" class="border_none" name="user_pw" value="${userDto.user_pw}" ${mode=="user_new"?"":"readonly"}>
                        </div>

                        <div class="column_box">
                            <div class="call_txt txt_title">핸드폰번호</div>
                            <input type="text" class="border_none" name="user_call" value="${userDto.user_call}" ${mode=="user_new"?"":"readonly"}>
                        </div>

                        <div class="column_box">
                            <div class="birth_txt txt_title">생년월일</div>
                            <input type="text" class="border_none" name="user_birth" value="<fmt:formatDate value="${userDto.user_birth}" pattern="yyyy-MM-dd" type="date"/>" readonly>
                        </div>

                        <div class="column_box">
                            <div class="email_txt txt_title">이메일</div>
                            <input type="email" class="border_none" name="user_email" value="${userDto.user_email}" ${mode=="user_new"?"":"readonly"}>
                        </div>

                        <div class="column_box">
                            <div class="joindate_txt txt_title">회원가입일</div>
                            <input type="text" class="border_none" name="user_joindate" value="<fmt:formatDate value="${userDto.user_joindate}" pattern="yyyy-MM-dd" type="date"/>" readonly>
                        </div>
                    </div>
                    <div class="info_btn">
                        <input type="button" class="user_modify_btn display_inline" value="회원정보 수정">
                        <input type="button" class="user_modify_fin_btn display_none" value="회원정보 수정 완료">
                        <%--<a href="<c:url value='/userMyPage/user_remove'/>">
                            <input type="button" class="display_block" id="signout_btn" value="회원 탈퇴">
                        </a>--%>
                    </div>
                </form>
            <c:choose>
                <c:when test="${mode=='user_info'}">
            </div>
                </c:when>
                <c:when test="${mode!='user_info'}">
            </div>
                </c:when>
            </c:choose>

            <c:choose>
                <c:when test="${mode!='pet_info'}">
            <div class="pet_info display_none">
                </c:when>
                <c:when test="${mode=='pet_info'}">
            <div class="pet_info display_block">
                </c:when>
            </c:choose>
                <div class="info_title">
                    <b>반려견 정보${mode=="pet_new"?"수정":""}</b>
                    <input type="button" class="pet_plus" value="반려견 정보 추가">
                    <input type="button" class="pet_drop_all" value="반려견 정보 전체삭제">
                </div>
                <c:choose>
                <c:when test="${empty p_list}">
                    <div class="empty_text">반려견 정보가 존재하지 않습니다.</div>
                </c:when>
                <c:otherwise>
                    <c:forEach var="petDto" items="${p_list}">
                    <form action="" class="pet_frm">
                        <div class="info_table">
                            <div class="column_box">
                                <div class="name_txt txt_title">이름</div>
                                <input type="text" class="border_none" name="p_name" value="${petDto.p_name}" ${mode=="pet_new"?"":"readonly"}>
                            </div>

                            <div class="column_box">
                                <div class="birth_txt txt_title">생년월일</div>
                                <input type="text" class="border_none" name="p_birth" value="${petDto.p_birth}" readonly>
                            </div>

                            <div class="column_box">
                                <div class="gender_txt txt_title">성별 & 중성화유무</div>
                                <input type="text" class="border_none" name="p_gender" value="${petDto.p_gender}" ${mode=="pet_new"?"":"readonly"}>
                            </div>

                            <div class="column_box">
                                <div class="kind_txt txt_title">품종</div>
                                <input type="text" class="border_none" name="p_kind" value="${petDto.p_kind}" ${mode=="pet_new"?"":"readonly"}>
                            </div>

                            <div class="column_box">
                                <div class="weight_txt txt_title">몸무게(kg)</div>
                                <input type="text" class="border_none" name="p_weight" value="${petDto.p_weight}" ${mode=="pet_new"?"":"readonly"}>
                            </div>

                            <div class="column_box">
                                <div class="size_txt txt_title">크기 분류</div>
                                <input type="text" class="border_none" name="p_size" value="${petDto.p_size}" ${mode=="pet_new"?"":"readonly"}>
                            </div>

                            <div class="column_box">
                                <div class="vaccine_txt txt_title">예방접종 유무</div>
                                <input type="text" class="border_none" name="p_vaccine" value="${petDto.p_vaccine}" ${mode=="pet_new"?"":"readonly"}>
                            </div>

                            <div class="column_box">
                                <div class="blood_txt txt_title">혈액형</div>
                                <input type="text" class="border_none" name="p_blood" value="${petDto.p_blood}" ${mode=="pet_new"?"":"readonly"}>
                            </div>
                        </div>
                        <div class="info_btn">
                            <input type="button" class="pet_modify_btn display_inline" value="반려견 정보 수정">
                            <input type="button" data-pno="${petDto.p_no}" class="pet_modify_fin_btn display_none" value="반려견 정보 수정 완료">
                            <input type="button" data-pno="${petDto.p_no}" class="pet_drop_btn display_inline" value="반려견 정보 삭제">
                            <input type="text" value="${petDto.p_no}" name="p_no" hidden="hidden"/>
                        </div>
                    </form>
                    </c:forEach>
                </c:otherwise>
                </c:choose>
                <div class="pet_plus_box display_none" id="pet_plus_box">
                    <form action="" class="pet_plus_frm">
                        <input type="text" value="${user_no}" name="user_no" hidden="hidden"/>
                        <div class="info_table">
                            <div class="column_box">
                                <div class="name_txt txt_title">이름</div>
                                <input type="text" class="border_gray" name="p_name" value="${petDto.p_name}">
                            </div>

                            <div class="column_box">
                                <div class="birth_txt txt_title">생년월일</div>
                                <input type="text" class="border_gray" name="p_birth" value="${petDto.p_birth}" <%--readonly--%>>
                            </div>

                            <div class="column_box">
                                <div class="gender_txt txt_title">성별 & 중성화유무</div>
                                <input type="text" class="border_gray" name="p_gender" value="${petDto.p_gender}">
                            </div>

                            <div class="column_box">
                                <div class="kind_txt txt_title">품종</div>
                                <input type="text" class="border_gray" name="p_kind" value="${petDto.p_kind}">
                            </div>

                            <div class="column_box">
                                <div class="weight_txt txt_title">몸무게(kg)</div>
                                <input type="text" class="border_gray" name="p_weight" value="${petDto.p_weight}">
                            </div>

                            <div class="column_box">
                                <div class="size_txt txt_title">크기 분류</div>
                                <input type="text" class="border_gray" name="p_size" value="${petDto.p_size}">
                            </div>

                            <div class="column_box">
                                <div class="vaccine_txt txt_title">예방접종 유무</div>
                                <input type="text" class="border_gray" name="p_vaccine" value="${petDto.p_vaccine}">
                            </div>

                            <div class="column_box">
                                <div class="blood_txt txt_title">혈액형</div>
                                <input type="text" class="border_gray" name="p_blood" value="${petDto.p_blood}">
                            </div>
                        </div>
                        <div class="info_btn">
                            <input type="button" class="input_fin_btn" value="작성 완료"/>
                        </div>
                    </form>
                </div>
            <c:choose>
                <c:when test="${mode=='pet_info'}">
            </div>
                </c:when>
                <c:when test="${mode!='pet_info'}">
            </div>
                </c:when>
            </c:choose>




            <c:choose>
                <c:when test="${mode=='user_jjim'}">
            <div class="jjim_list display_block">
                </c:when>
                <c:when test="${mode!='user_jjim'}">
            <div class="jjim_list display_none">
                </c:when>
            </c:choose>
                    <div class="info_title">
                        <b>훈련 찜 내역</b>
                    </div>
                <c:choose>
                    <c:when test="${empty user_j_list}">
                        <div class="empty_text">찜한 내역이 존재하지 않습니다.</div>
                    </c:when>
                    <c:otherwise>
                        <c:forEach var="jjimDto" items="${user_j_list}">
                            <form action="" class="jjim_frm">
                                <div class="info_table">
                                    <div class="column_box">
                                        <div class="txt_title">훈련소명</div>
                                        <div class="input_box">
                                            <input type="text" class="border_none" value="${jjimDto.tc_name}" readonly/>
                                        </div>
                                    </div>
                                    <div class="column_box">
                                        <div class="txt_title">훈련명</div>
                                        <div class="input_box">
                                            <input type="text" class="border_none" value="${jjimDto.te_name}" readonly/>
                                        </div>
                                    </div>
                                    <div class="column_box">
                                        <div class="txt_title">훈련 기간</div>
                                        <div class="input_box">
                                            <input type="text" class="border_none" value="입소 날짜: ${jjimDto.te_in}" readonly>
                                            <input type="text" class="border_none" value="퇴소 날짜: ${jjimDto.te_out}" readonly>
                                        </div>
                                    </div>
                                    <div class="column_box">
                                        <div class="txt_title">훈련 대상</div>
                                        <div class="input_box">
                                            <input type="text" class="border_none" value="${jjimDto.te_petsize}" readonly>
                                        </div>
                                    </div>
                                    <div class="column_box">
                                        <div class="txt_title">훈련 가격</div>
                                        <div class="input_box">
                                            <input type="text" class="border_none" value="${jjimDto.te_cost}" readonly>
                                        </div>
                                    </div>
                                </div>
                                <%--<div class="info_btn">
                                    <input type="button" data-bno="${bookUserDto.b_no}" class="book_cancle_btn display_block" value="예약 취소"/>
                                </div>--%>
                            </form>
                        </c:forEach>
                    </c:otherwise>
                </c:choose>
                <div class="pagination">
                    <c:if test="${ph.showPrev}">
                        <a href="<c:url value='/userMyPage/user_jjim?page=${ph.beginPage-1}'/>" class="beginPage">[이전]</a>
                    </c:if>
                    <c:forEach var="i" begin="${ph.beginPage}" end="${ph.endPage}">
                        <a href="<c:url value='/userMyPage/user_jjim?page=${i}'/>" class="page ${i==ph.page?"pageActive":""}"> ${i}</a>
                    </c:forEach>
                    <c:if test="${ph.showNext}">
                        <a href="<c:url value='/userMyPage/user_jjim?page=${ph.endPage+1}'/>" class="endPage">[다음]</a>
                    </c:if>
                </div>
            <c:choose>
                <c:when test="${mode=='user_jjim'}">
            </div>
                </c:when>
                <c:when test="${mode!='user_jjim'}">
            </div>
                </c:when>
            </c:choose>



            <c:choose>
                <c:when test="${mode == 'user_book'}">
            <div class="book_list display_block">
                </c:when>
                <c:when test="${mode != 'user_book'}">
            <div class="book_list display_none">
                </c:when>
            </c:choose>
                <div class="info_title">
                    <b>훈련 예약 신청 내역</b>
                </div>
                <c:choose>
                    <c:when test="${empty user_b_list}">
                        <div class="empty_text">예약 신청 내역이 존재하지 않습니다.</div>
                    </c:when>
                    <c:otherwise>
                        <c:forEach var="bookUserDto" items="${user_b_list}">
                            <form action="" class="book_frm">
                                <div class="info_table">
                                    <div class="column_box">
                                        <div class="txt_title">예약 훈련소명</div>
                                        <div class="input_box">
                                            <input type="text" class="border_none" value="${bookUserDto.tc_name}"/>
                                        </div>
                                    </div>
                                    <div class="column_box">
                                        <div class="txt_title">예약 훈련소 연락처</div>
                                        <div class="input_box">
                                            <input type="text" class="border_none" value="${bookUserDto.tc_call}"/>
                                        </div>
                                    </div>
                                    <div class="column_box">
                                        <div class="txt_title">예약 훈련명</div>
                                        <div class="input_box">
                                            <input type="text" class="border_none" value="${bookUserDto.te_name}" readonly>
                                        </div>
                                    </div>
                                    <div class="column_box">
                                        <div class="txt_title">예약 훈련 기간</div>
                                        <div class="input_box">
                                            <input type="text" class="border_none" value="입소 날짜: ${bookUserDto.te_in}" readonly>
                                            <input type="text" class="border_none" value="퇴소 날짜: ${bookUserDto.te_out}" readonly>
                                        </div>
                                    </div>
                                    <div class="column_box">
                                        <div class="txt_title">예약 현황</div>
                                        <div class="input_box">
                                            <input type="text" name="book_state" class="border_none" value="${bookUserDto.book_state}" readonly>
                                        </div>
                                    </div>
                                </div>
                                <div class="info_btn">
                                    <c:choose>
                                        <c:when test="${bookUserDto.book_state == '예약진행중'}">
                                            <input type="button" data-bno="${bookUserDto.b_no}" class="book_cancle_btn display_block" value="예약 취소"/>
                                        </c:when>
                                    </c:choose>
                                </div>
                            </form>
                        </c:forEach>
                    </c:otherwise>
                </c:choose>
                <div class="pagination">
                    <c:if test="${ph.showPrev}">
                        <a href="<c:url value='/userMyPage/user_book?page=${ph.beginPage-1}'/>" class="beginPage">[이전]</a>
                    </c:if>
                    <c:forEach var="i" begin="${ph.beginPage}" end="${ph.endPage}">
                        <a href="<c:url value='/userMyPage/user_book?page=${i}'/>" class="page ${i==ph.page?"pageActive":""}"> ${i}</a>
                    </c:forEach>
                    <c:if test="${ph.showNext}">
                        <a href="<c:url value='/userMyPage/user_book?page=${ph.endPage+1}'/>" class="endPage">[다음]</a>
                    </c:if>
                </div>
            <c:choose>
                <c:when test="${mode=='user_book'}">
            </div>
                </c:when>
                <c:when test="${mode!='user_book'}">
            </div>
                </c:when>
            </c:choose>


            <c:choose>
                <c:when test="${mode=='user_community'}">
            <div class="user_community_list display_block">
                </c:when>
                <c:when test="${mode!='user_community'}">
            <div class="user_community_list display_none">
                </c:when>
            </c:choose>
                <div class="community_title"><b>내 커뮤니티 작성글</b></div>
                <c:choose>
                    <c:when test="${empty community_list}">
                        <div class="empty_text">작성한 게시글이 존재하지 않습니다.</div>
                    </c:when>
                    <c:otherwise>
                    <table class="community_table">
                        <thead>
                            <tr>
                                <th class="no">번호</th>
                                <th class="title">제목</th>
                                <th class="writer">아이디</th>
                                <th class="regdate">등록일</th>
                            </tr>
                        </thead>
                        <tbody>
                        <c:forEach var="cmtDto" items="${community_list}">
                            <tr class="cmtBody">
                                <td class="no">${cmtDto.cu_no}</td>
                                <td class="title">
                                    <a href="<c:url value="/cmt/read?cu_no=${cmtDto.cu_no}&page=${ph.page}&pageSize=${ph.pageSize}&option=${param.option}&keyword=${param.keyword}"/>">${cmtDto.cu_title}</a>
                                </td>
                                <td class="writer">${cmtDto.user_id}</td>
                                <td class="regdate"><fmt:formatDate value="${cmtDto.cu_update}" pattern="yyyy-MM-dd" type="date"/></td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    </c:otherwise>
                </c:choose>
                    <div class="pagination">
                        <c:if test="${ph.showPrev}">
                            <a href="<c:url value='/userMyPage/user_community?page=${ph.beginPage-1}'/>" class="beginPage">[이전]</a>
                        </c:if>
                        <c:forEach var="i" begin="${ph.beginPage}" end="${ph.endPage}">
                            <a href="<c:url value='/userMyPage/user_community?page=${i}'/>" class="page ${i==ph.page?"pageActive":""}"> ${i}</a>
                        </c:forEach>
                        <c:if test="${ph.showNext}">
                            <a href="<c:url value='/userMyPage/user_community?page=${ph.endPage+1}' />" class="endPage">[다음]</a>
                        </c:if>
                    </div>
            <c:choose>
                <c:when test="${mode=='user_community'}">
            </div>
                </c:when>
                <c:when test="${mode!='user_community'}">
            </div>
                </c:when>
            </c:choose>

            <c:choose>
                <c:when test="${mode=='user_review'}">
            <div class="user_review_list display_block">
                </c:when>
                <c:when test="${mode!='user_review'}">
            <div class="user_review_list display_none">
                </c:when>
            </c:choose>
                <div class="review_title"><b>내 리뷰 작성글</b></div>
                <c:choose>
                    <c:when test="${empty us_r_list}">
                        <div class="empty_text">작성한 리뷰가 존재하지 않습니다.</div>
                    </c:when>
                    <c:otherwise>
                        <c:forEach var="reviewDto" items="${us_r_list}">
                            <div class="review_box">
                                <div class="review_box_top">
                                    <div class="writer">${reviewDto.user_id}</div>
                                    <div class="regdate"><fmt:formatDate value="${reviewDto.re_update}" pattern="yyyy-MM-dd" type="date"/></div>
                                    <div class="btn_box">
                                        <a href="<c:url value="/review/remove?re_no=${reviewDto.re_no}"/>" class="btn" id="btn_del">삭제</a>
                                        <a href="<c:url value="/review/read?re_no=${reviewDto.re_no}&page=${ph.page}&pageSize=${ph.pageSize}&option=${param.option}&keyword=${param.keyword}"/>" class="btn" id="btn_modify">수정</a>
                                    </div>
                                </div>
                                <div class="tc_name">
                                    <c:set var="tc_no" value="${reviewDto.tc_no}"/>
                                    <c:forEach var="tcDto" items="${tcList}">
                                        <c:choose>
                                            <c:when test="${tcDto.tc_no.equals(tc_no)}">
                                                ${tcDto.tc_name}
                                            </c:when>
                                        </c:choose>
                                    </c:forEach></div>
                                <div class="photo_content">
                                    <div class="photo_r">
                                        <img src="<c:url value='${reviewDto.re_img}'/>" class="r_img">
                                    </div>
                                    <div class="content">${reviewDto.re_content}</div>
                                </div>
                            </div>
                        </c:forEach>
                    </c:otherwise>
                </c:choose>
                    <div class="pagination">
                        <c:if test="${ph.showPrev}">
                            <a href="<c:url value='/userMyPage/user_review?page=${ph.beginPage-1}'/>" class="beginPage">[이전]</a>
                        </c:if>
                        <c:forEach var="i" begin="${ph.beginPage}" end="${ph.endPage}">
                            <a href="<c:url value='/userMyPage/user_review?page=${i}'/>" class="page ${i==ph.page?"pageActive":""}"> ${i}</a>
                        </c:forEach>
                        <c:if test="${ph.showNext}">
                            <a href="<c:url value='/userMyPage/user_review?page=${ph.endPage+1}' />" class="endPage">[다음]</a>
                        </c:if>
                    </div>
            <c:choose>
                <c:when test="${mode=='user_review'}">
                    </div>
                </c:when>
                <c:when test="${mode!='user_review'}">
                    </div>
                </c:when>
            </c:choose>
            </div>
        </div>
    </div>
<%--        </div>--%>
    </div>
    <footer>
        <jsp:include page="footer.jsp" flush="false"/>
    </footer>
</div>
<div id="scrollToTopBtn" onclick="scrollToTop()"></div>
<script src="<c:url value='/js/body.js'/>"></script>
<script>
    // 반려견과정 수정시 유효성체크
    function petAddValid(el) {
        let p_name = el.parent().parent().find($('input[name="p_name"]')).val();
        let p_birth = el.parent().parent().find($('input[name="p_birth"]')).val();
        let p_gender = el.parent().parent().find($('input[name="p_gender"]')).val();
        let p_kind = el.parent().parent().find($('input[name="p_kind"]')).val();
        let p_weight = el.parent().parent().find($('input[name="p_weight"]')).val();
        let p_size = el.parent().parent().find($('input[name="p_size"]')).val();
        let p_vaccine = el.parent().parent().find($('input[name="p_vaccine"]')).val();
        let p_blood = el.parent().parent().find($('input[name="p_blood"]')).val();

        if (p_name == "") {
            alert("반려견 이름을 입력해주세요");
            return false;
        }else if(p_birth == "") {
            alert("반려견 생일을 입력해주세요");
            return false;
        }else if(p_gender=="") {
            alert("반려견 성별을 입력해주세요");
            return false;
        }else if(p_kind=="") {
            alert("견종을 입력해주세요");
            return false;
        }else if(p_weight=="") {
            alert("반려견 몸무게를 입력해주세요");
            return false;
        }else if(p_size=="") {
            alert("반려견 크기 분류를 입력해주세요");
            return false;
        }else if(p_vaccine=="") {
            alert("반려견 접종 내역을 입력해주세요");
            return false;
        }else if(p_blood=="") {
            alert("반려견 혈액형을 입력해주세요");
            return false;
        }else{
            /*alert("반려견 정보가 추가되었습니다");*/
            return true;
        }
    }
    function userAddValid() {
        let user_name = $('input[name="user_name"]').val();
        let user_pw = $('input[name="user_pw"]').val();
        let user_call = $('input[name="user_call"]').val();
        let user_email = $('input[name="user_email"]').val();

        if (user_name == "") {
            alert("이름을 입력해주세요");
            return false;
        }
        else if(user_pw == "") {
            alert("비밀번호를 입력해주세요");
            return false;
        }
        else if(user_call == "") {
            alert("연락처를 첨부해주세요");
            return false;
        }
        else if(user_email == "") {
            alert("이메일을 입력해주세요");
            return false;
        }else{
            return true;
        }
    }
    $(document).ready(function(){
        $('.my_info_btn').click(function(){
            $('.my_info').removeClass('display_none').addClass('display_block');
            $('.pet_info').removeClass('display_block').addClass('display_none');
            $('.jjim_list').removeClass('display_block').addClass('display_none');
            $('.book_list').removeClass('display_block').addClass('display_none');
            $('.user_community_list').removeClass('display_block').addClass('display_none');
            $('.user_review_list').removeClass('display_block').addClass('display_none');
        });
        $('.pet_info_btn').click(function(){
            $('.my_info').removeClass('display_block').addClass('display_none');
            $('.pet_info').removeClass('display_none').addClass('display_block');
            $('.jjim_list').removeClass('display_block').addClass('display_none');
            $('.book_list').removeClass('display_block').addClass('display_none');
            $('.user_community_list').removeClass('display_block').addClass('display_none');
            $('.user_review_list').removeClass('display_block').addClass('display_none');
        });
        $('.jjim_btn').click(function(){
            $('.my_info').removeClass('display_block').addClass('display_none');
            $('.pet_info').removeClass('display_block').addClass('display_none');
            $('.jjim_list').removeClass('display_none').addClass('display_block');
            $('.book_list').removeClass('display_block').addClass('display_none');
            $('.user_community_list').removeClass('display_block').addClass('display_none');
            $('.user_review_list').removeClass('display_block').addClass('display_none');
        });
        $('.book_btn').click(function(){
            $('.my_info').removeClass('display_block').addClass('display_none');
            $('.pet_info').removeClass('display_block').addClass('display_none');
            $('.jjim_list').removeClass('display_block').addClass('display_none');
            $('.book_list').removeClass('display_none').addClass('display_block');
            $('.user_community_list').removeClass('display_block').addClass('display_none');
            $('.user_review_list').removeClass('display_block').addClass('display_none');
        });
        $('.my_commnunity_btn').click(function(){
            $('.my_info').removeClass('display_block').addClass('display_none');
            $('.pet_info').removeClass('display_block').addClass('display_none');
            $('.jjim_list').removeClass('display_block').addClass('display_none');
            $('.book_list').removeClass('display_block').addClass('display_none');
            $('.user_community_list').removeClass('display_none').addClass('display_block');
            $('.user_review_list').removeClass('display_block').addClass('display_none');
        });
        $('.my_review_btn').click(function(){
            $('.my_info').removeClass('display_block').addClass('display_none');
            $('.pet_info').removeClass('display_block').addClass('display_none');
            $('.jjim_list').removeClass('display_block').addClass('display_none');
            $('.book_list').removeClass('display_block').addClass('display_none');
            $('.user_community_list').removeClass('display_block').addClass('display_none');
            $('.user_review_list').removeClass('display_none').addClass('display_block');
        });

        $('#signout_btn').on("click",function(){
            let result = confirm("회원탈퇴 하시겠습니까?");
            if(result) {
                alert("탈퇴 완료");
                location.href = "<c:url value='/userMyPage/user_remove'/>";
            } else {
                alert("탈퇴 취소");
            }
        });

        $('.pet_drop_all').on("click", function(){
            let result = confirm("반려견 정보를 모두 삭제하시겠습니까?");
            if(result){
                alert("삭제 완료");
                location.href = "<c:url value='/userMyPage/pet_remove_all'/>";
            }else{
                alert("삭제 취소")
            }
        });

        $('.pet_drop_btn').on("click", function(){
            let result = confirm("반려견 정보를 삭제하시겠습니까?");
            let p_no = $(this).attr('data-pno');
            if(result){
                alert("삭제 완료");
                location.href = "<c:url value='/userMyPage/pet_remove'/>?p_no="+p_no;
            }else{
                alert("삭제 취소")
            }
        });

        $('.book_cancle_btn').on("click", function(){
            let result = confirm("예약을 취소하시겠습니까?");
            let b_no = $(this).attr('data-bno');
            if(result){
                alert("예약 취소 완료");
                let book_form = $('.book_frm');
                book_form.attr('action', "<c:url value='/userMyPage/book_state_can'/>?b_no="+b_no);
                book_form.attr('method', 'post');
                book_form.submit();
            }else{
                alert("예약 취소");
            }
        });

        $('.user_modify_btn').on("click", function(){
            alert("회원정보 수정");
            let isReadOnly = $('input[name="user_name"]').attr('readonly');
            if(isReadOnly == "readonly") {
                $('input[name="user_name"]').attr('readonly',false).removeClass('border_none').addClass('border_gray');
                $('input[name="user_pw"]').attr('readonly',false).removeClass('border_none').addClass('border_gray')/*.attr('type', 'text');*/;
                $('input[name="user_call"]').attr('readonly',false).removeClass('border_none').addClass('border_gray');
                // $('input[name="user_birth"]').attr('readonly',false).removeClass('border_none').addClass('border_gray');
                $('input[name="user_email"]').attr('readonly',false).removeClass('border_none').addClass('border_gray');
            }

            $('.user_modify_fin_btn').removeClass('display_none').addClass('display_inline');
            $(this).removeClass('display_inline').addClass('display_none');
        });
        $('.user_modify_fin_btn').on("click", function(){
            if(userAddValid()){
                $('input[name="user_name"]').addClass('border_none').removeClass('border_gray');
                $('input[name="user_pw"]').addClass('border_none').removeClass('border_gray')/*.attr('type', 'password')*/;
                $('input[name="user_call"]').addClass('border_none').removeClass('border_gray');
                // $('input[name="user_birth"]').addClass('border_none').removeClass('border_gray');
                $('input[name="user_email"]').addClass('border_none').removeClass('border_gray');

                $('.user_modify_btn').removeClass('display_none').addClass('display_inline');
                $(this).removeClass('display_inline').addClass('display_none');

                let user_frm = $('#user_frm');
                alert("회원정보 수정 완료");
                user_frm.attr('action', "<c:url value='/userMyPage/user_modify'/>");
                user_frm.attr('method', 'post');
                user_frm.submit();
            }
        });

        $('.pet_modify_btn').on("click", function(){
            alert("반려견 정보 수정");
            let isReadOnly = $('input[name="p_name"]').attr('readonly');
            if(isReadOnly == "readonly") {
                $(this).parent().parent().find('input[name="p_name"]').attr('readonly',false).removeClass('border_none').addClass('border_gray');
                // $(this).parent().parent().find('input[name="p_birth"]').attr('readonly',false).removeClass('border_none').addClass('border_gray');
                $(this).parent().parent().find('input[name="p_gender"]').attr('readonly',false).removeClass('border_none').addClass('border_gray');
                $(this).parent().parent().find('input[name="p_kind"]').attr('readonly',false).removeClass('border_none').addClass('border_gray');
                $(this).parent().parent().find('input[name="p_weight"]').attr('readonly',false).removeClass('border_none').addClass('border_gray');
                $(this).parent().parent().find('input[name="p_size"]').attr('readonly',false).removeClass('border_none').addClass('border_gray');
                $(this).parent().parent().find('input[name="p_vaccine"]').attr('readonly',false).removeClass('border_none').addClass('border_gray');
                $(this).parent().parent().find('input[name="p_blood"]').attr('readonly',false).removeClass('border_none').addClass('border_gray');
            }

            // $('.pet_modify_fin_btn').removeClass('display_none').addClass('display_block');
            // $(this).removeClass('display_block').addClass('display_none');
            $(this).removeClass('display_inline').addClass('display_none');
            $(this).parent().find('.pet_modify_fin_btn').removeClass('display_none').addClass('display_inline');
        });
        $('.pet_modify_fin_btn').on("click", function(){
            if(petAddValid($(this))) {
                $(this).parent().parent().find('input[name="p_name"]').addClass('border_none').removeClass('border_gray');
                // $(this).parent().parent().find('input[name="p_birth"]').addClass('border_none').removeClass('border_gray');
                $(this).parent().parent().find('input[name="p_gender"]').addClass('border_none').removeClass('border_gray');
                $(this).parent().parent().find('input[name="p_kind"]').addClass('border_none').removeClass('border_gray');
                $(this).parent().parent().find('input[name="p_weight"]').addClass('border_none').removeClass('border_gray');
                $(this).parent().parent().find('input[name="p_size"]').addClass('border_none').removeClass('border_gray');
                $(this).parent().parent().find('input[name="p_vaccine"]').addClass('border_none').removeClass('border_gray');
                $(this).parent().parent().find('input[name="p_blood"]').addClass('border_none').removeClass('border_gray');

                $(this).parent().find('.pet_modify_btn').removeClass('display_none').addClass('display_inline');
                $(this).removeClass('display_inline').addClass('display_none');

                let pet_frm = $(this).parent().parent('.pet_frm');

                alert("반려견 정보 수정 완료");
                pet_frm.attr('action', "<c:url value='/userMypage/pet_modify_map'/>");
                pet_frm.attr('method', 'post');
                pet_frm.submit();
            }
        });

        // 펫 추가
        $('.pet_plus').on("click", function(){
            $('.empty_text').addClass('display_none');

            let pet_box = $('.pet_plus_box');
            pet_box.removeClass('display_none').addClass('display_block');

            let p_box = document.getElementById("pet_plus_box");
            p_box.scrollIntoView({
                behavior: "smooth",
                block: "center"
            });
        });
        $('.input_fin_btn').on("click", function(){
            if(petAddValid($(this))) {
                $('.pet_plus_box').removeClass('display_block').addClass('display_none');
                let pet_plus_frm = $('.pet_plus_frm');

                pet_plus_frm.attr('action', "<c:url value='/userMyPage/pet_add'/>");
                pet_plus_frm.attr('method', 'post');
                pet_plus_frm.submit();
                alert("반려견 정보가 추가되었습니다");
            }
        });
    });
</script>
</body>
</html>