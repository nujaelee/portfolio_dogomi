<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<c:set var="logInOutLink" value="${ pageContext.request.getSession(false).getAttribute('user_id')==null?'/login/login':'/login/logout'}" />
<c:set var="logInOutTxt" value="${ pageContext.request.getSession(false).getAttribute('user_id')==null?'Login':'Logout'}" />
<c:set var="userid" value="${ pageContext.request.getSession(false).getAttribute('user_id')==null?'':pageContext.request.getSession(false).getAttribute('user_id')}" />

<c:set var="addChk1" value="${ searchDto.addressKeyword1==null ? ' ':'checked' }" />
<c:set var="addChk2" value="${ searchDto.addressKeyword2==null ? ' ':'checked' }" />
<c:set var="addChk3" value="${ searchDto.addressKeyword3==null ? ' ':'checked' }" />
<c:set var="addChk4" value="${ searchDto.addressKeyword4==null ? ' ':'checked' }" />
<c:set var="addChk5" value="${ searchDto.addressKeyword5==null ? ' ':'checked' }" />
<c:set var="addChk6" value="${ searchDto.addressKeyword6==null ? ' ':'checked' }" />
<c:set var="addChk7" value="${ searchDto.addressKeyword7==null ? ' ':'checked' }" />
<c:set var="addChk8" value="${ searchDto.addressKeyword8==null ? ' ':'checked' }" />
<c:set var="addChk9" value="${ searchDto.addressKeyword9==null ? ' ':'checked' }" />
<c:set var="addChk10" value="${ searchDto.addressKeyword10==null ? ' ':'checked' }" />
<c:set var="addChk11" value="${ searchDto.addressKeyword11==null ? ' ':'checked' }" />
<c:set var="addChk12" value="${ searchDto.addressKeyword12==null ? ' ':'checked' }" />
<c:set var="addChk13" value="${ searchDto.addressKeyword13==null ? ' ':'checked' }" />
<c:set var="addChk14" value="${ searchDto.addressKeyword14==null ? ' ':'checked' }" />
<c:set var="addChk15" value="${ searchDto.addressKeyword15==null ? ' ':'checked' }" />
<c:set var="addChk16" value="${ searchDto.addressKeyword16==null ? ' ':'checked' }" />
<c:set var="addChk17" value="${ searchDto.addressKeyword17==null ? ' ':'checked' }" />

<c:set var="addChk21" value="${ searchDto.addressKeyword21==null ? ' ':'checked' }" />
<c:set var="addChk22" value="${ searchDto.addressKeyword22==null ? ' ':'checked' }" />
<c:set var="addChk23" value="${ searchDto.addressKeyword23==null ? ' ':'checked' }" />
<c:set var="addChk24" value="${ searchDto.addressKeyword24==null ? ' ':'checked' }" />
<c:set var="addChk25" value="${ searchDto.addressKeyword25==null ? ' ':'checked' }" />
<c:set var="addChk26" value="${ searchDto.addressKeyword26==null ? ' ':'checked' }" />

<c:set var="addChk31" value="${ searchDto.addressKeyword31==null ? ' ':'checked' }" />
<c:set var="addChk32" value="${ searchDto.addressKeyword32==null ? ' ':'checked' }" />
<c:set var="addChk33" value="${ searchDto.addressKeyword33==null ? ' ':'checked' }" />

<c:set var="keywordChk1" value="${ searchDto.addressKeyword1==null ? '':'&addressKeyword1=서울' }" />
<c:set var="keywordChk2" value="${ searchDto.addressKeyword2==null ? '':'&addressKeyword2=인천' }" />
<c:set var="keywordChk3" value="${ searchDto.addressKeyword3==null ? '':'&addressKeyword3=경기' }" />
<c:set var="keywordChk4" value="${ searchDto.addressKeyword4==null ? '':'&addressKeyword4=강원' }" />
<c:set var="keywordChk5" value="${ searchDto.addressKeyword5==null ? '':'&addressKeyword5=충남' }" />
<c:set var="keywordChk6" value="${ searchDto.addressKeyword6==null ? '':'&addressKeyword6=세종' }" />
<c:set var="keywordChk7" value="${ searchDto.addressKeyword7==null ? '':'&addressKeyword7=대전' }" />
<c:set var="keywordChk8" value="${ searchDto.addressKeyword8==null ? '':'&addressKeyword8=충북' }" />
<c:set var="keywordChk9" value="${ searchDto.addressKeyword9==null ? '':'&addressKeyword9=경북' }" />
<c:set var="keywordChk10" value="${ searchDto.addressKeyword10==null ? '':'&addressKeyword10=전북' }" />
<c:set var="keywordChk11" value="${ searchDto.addressKeyword11==null ? '':'&addressKeyword11=대구' }" />
<c:set var="keywordChk12" value="${ searchDto.addressKeyword12==null ? '':'&addressKeyword12=경남' }" />
<c:set var="keywordChk13" value="${ searchDto.addressKeyword13==null ? '':'&addressKeyword13=울산' }" />
<c:set var="keywordChk14" value="${ searchDto.addressKeyword14==null ? '':'&addressKeyword14=부산' }" />
<c:set var="keywordChk15" value="${ searchDto.addressKeyword15==null ? '':'&addressKeyword15=광주' }" />
<c:set var="keywordChk16" value="${ searchDto.addressKeyword16==null ? '':'&addressKeyword16=전남' }" />
<c:set var="keywordChk17" value="${ searchDto.addressKeyword17==null ? '':'&addressKeyword17=제주' }" />

<c:set var="keywordChk21" value="${ searchDto.addressKeyword21==null ? '':'&addressKeyword21=걸음마' }" />
<c:set var="keywordChk22" value="${ searchDto.addressKeyword22==null ? '':'&addressKeyword22=손' }" />
<c:set var="keywordChk23" value="${ searchDto.addressKeyword23==null ? '':'&addressKeyword23=앉아' }" />
<c:set var="keywordChk24" value="${ searchDto.addressKeyword24==null ? '':'&addressKeyword24=죽은척' }" />
<c:set var="keywordChk25" value="${ searchDto.addressKeyword25==null ? '':'&addressKeyword25=귀여운표정' }" />
<c:set var="keywordChk26" value="${ searchDto.addressKeyword26==null ? '':'&addressKeyword26=보호자보호' }" />

<c:set var="keywordChk31" value="${ searchDto.addressKeyword31==null ? '':'&addressKeyword31=대' }" />
<c:set var="keywordChk32" value="${ searchDto.addressKeyword32==null ? '':'&addressKeyword32=중' }" />
<c:set var="keywordChk33" value="${ searchDto.addressKeyword33==null ? '':'&addressKeyword33=소' }" />


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>PetTrainingCenter</title>
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <link rel="stylesheet" href="<c:url value='/css/common.css'/>">
    <link rel="stylesheet" href="<c:url value='/css/h_f.css'/>">
    <link rel="stylesheet" href="<c:url value='/css/search.css'/>">
</head>
<body>
<div id="wrap">
    <jsp:include page="header.jsp" flush="false"/>

    <div class="container">
        <div class="w_1200">
            <div class="condition_side">
                <form action="<c:url value='/search/searchListPagination?${keywordChk1}${keywordChk2}${keywordChk3}${keywordChk4}${keywordChk5}${keywordChk6}${keywordChk7}${keywordChk8}${keywordChk9}${keywordChk10}${keywordChk11}${keywordChk12}${keywordChk13}${keywordChk14}${keywordChk15}${keywordChk16}${keywordChk17}${keywordChk21}${keywordChk22}${keywordChk23}${keywordChk24}${keywordChk25}${keywordChk26}${keywordChk31}${keywordChk32}${keywordChk33}'/>" method="get" class="condition_search">

                    <div class="con_search_title">지역</div>
                    <input type="checkbox" class="adkw" id="adkw1" name="addressKeyword1" value="서울" ${addChk1} >
                    <label class="info_chk" for="adkw1">서울</label>
                    <input type="checkbox" class="adkw" id="adkw2" name="addressKeyword2" value="인천" ${addChk2} >
                    <label class="info_chk" for="adkw2">인천</label>
                    <input type="checkbox" class="adkw" id="adkw3" name="addressKeyword3" value="경기" ${addChk3} >
                    <label class="info_chk" for="adkw3">경기</label>
                    <input type="checkbox" class="adkw" id="adkw4" name="addressKeyword4" value="강원" ${addChk4} >
                    <label class="info_chk" for="adkw4">강원</label>
                    <input type="checkbox" class="adkw" id="adkw5" name="addressKeyword5" value="충남" ${addChk5} >
                    <label class="info_chk" for="adkw5">충남</label>
                    <input type="checkbox" class="adkw" id="adkw6" name="addressKeyword6" value="세종" ${addChk6} >
                    <label class="info_chk" for="adkw6">세종</label>
                    <input type="checkbox" class="adkw" id="adkw7" name="addressKeyword7" value="대전" ${addChk7} >
                    <label class="info_chk" for="adkw7">대전</label>
                    <input type="checkbox" class="adkw" id="adkw8" name="addressKeyword8" value="충북" ${addChk8} >
                    <label class="info_chk" for="adkw8">충북</label>
                    <input type="checkbox" class="adkw" id="adkw9" name="addressKeyword9" value="경북" ${addChk9} >
                    <label class="info_chk" for="adkw9">경북</label>
                    <input type="checkbox" class="adkw" id="adkw10" name="addressKeyword10" value="전북" ${addChk10} >
                    <label class="info_chk" for="adkw10">전북</label>
                    <input type="checkbox" class="adkw" id="adkw11" name="addressKeyword11" value="대구" ${addChk11} >
                    <label class="info_chk" for="adkw11">대구</label>
                    <input type="checkbox" class="adkw" id="adkw12" name="addressKeyword12" value="경남" ${addChk12} >
                    <label class="info_chk" for="adkw12">경남</label>
                    <input type="checkbox" class="adkw" id="adkw13" name="addressKeyword13" value="울산" ${addChk13} >
                    <label class="info_chk" for="adkw13">울산</label>
                    <input type="checkbox" class="adkw" id="adkw14" name="addressKeyword14" value="부산" ${addChk14} >
                    <label class="info_chk" for="adkw14">부산</label>
                    <input type="checkbox" class="adkw" id="adkw15" name="addressKeyword15" value="광주" ${addChk15} >
                    <label class="info_chk" for="adkw15">광주</label>
                    <input type="checkbox" class="adkw" id="adkw16" name="addressKeyword16" value="전남" ${addChk16} >
                    <label class="info_chk" for="adkw16">전남</label>
                    <input type="checkbox" class="adkw" id="adkw17" name="addressKeyword17" value="제주" ${addChk17} >
                    <label class="info_chk" for="adkw17">제주</label>

                    <div class="con_search_title">훈련 과정</div>
                    <input type="checkbox" class="adkw" id="adkw21" name="addressKeyword21" value="걸음마" ${addChk21} >
                    <label class="info_chk" for="adkw21">걸음마</label>
                    <input type="checkbox" class="adkw" id="adkw22" name="addressKeyword22" value="손" ${addChk22} >
                    <label class="info_chk" for="adkw22">손</label>
                    <input type="checkbox" class="adkw" id="adkw23" name="addressKeyword23" value="앉아" ${addChk23} >
                    <label class="info_chk" for="adkw23">앉아</label>
                    <input type="checkbox" class="adkw" id="adkw24" name="addressKeyword24" value="죽은척" ${addChk24} >
                    <label class="info_chk" for="adkw24">죽은척</label>
                    <input type="checkbox" class="adkw" id="adkw25" name="addressKeyword25" value="귀여운표정" ${addChk25} >
                    <label class="info_chk" for="adkw25">귀여운 표정</label>
                    <input type="checkbox" class="adkw" id="adkw26" name="addressKeyword26" value="보호자보호" ${addChk26} >
                    <label class="info_chk" for="adkw26">보호자 보호</label>

                    <div class="con_search_title">애견 사이즈</div>
                    <input type="checkbox"  id="adkw31" class="adkw" name="addressKeyword31" value="대" ${addChk31} >
                    <label class="info_chk" for="adkw31">대</label>
                    <input type="checkbox"  id="adkw32" class="adkw" name="addressKeyword32" value="중" ${addChk32} >
                    <label class="info_chk" for="adkw32">중</label>
                    <input type="checkbox"  id="adkw33" class="adkw" name="addressKeyword33" value="소" ${addChk33} >
                    <label class="info_chk" for="adkw33">소</label>

                    <button>검색</button>
                </form>
            </div>
            <div class="main_side">
                <c:if test="${empty list}">
                    <div class="empty_list">
                        조건에 일치하는 훈련소가 없습니다.
                    </div>
                </c:if>
                <c:forEach var="TcDto" items="${list}">
                    <div class="content_box">
                        <div class="con_img">
                            <img src="<c:url value='${TcDto.tc_img}'/>" alt="훈련소 이미지" class="tc_img">
                        </div>
                        <div class="content">
                            <div class="tc_name">훈련소 : ${TcDto.tc_name}
                                <a href="<c:url value="/search/rsvForm?tc_no=${TcDto.tc_no}&page=${ph.page}&pageSize=${ph.pageSize}&option=${param.option}&keyword=${param.keyword}"/>">
                                    <button>훈련소 이동</button>
                                </a>
                            </div>
                            <div class="tc_ad">위치 : ${TcDto.tc_main_ad} ${TcDto.tc_sub_ad}</div>
                            <div class="te_info">
                                <c:forEach var="TeDto" items="${list_te}">
                                    <div class="${TcDto.tc_no == TeDto.tc_no ? "":"displaynone"}  te_border">${TeDto.te_name} / ${TeDto.te_petsize}</div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>
                <%--</a>--%>
                </c:forEach>

                <div class="pagination">
                    <c:if test="${ph.showPrev}">
                        <a href="<c:url value='/search/searchListPagination?page=${ph.beginPage-1}&pageSize=${ph.pageSize} ${keywordChk1}${keywordChk2}${keywordChk3}${keywordChk4}${keywordChk5}${keywordChk6}${keywordChk7}${keywordChk8}${keywordChk9}${keywordChk10}${keywordChk11}${keywordChk12}${keywordChk13}${keywordChk14}${keywordChk15}${keywordChk16}${keywordChk17}${keywordChk21}${keywordChk22}${keywordChk23}${keywordChk24}${keywordChk25}${keywordChk26}${keywordChk31}${keywordChk32}${keywordChk33}'/>" class="beginPage">[이전]</a>
                    </c:if>
                    <c:forEach var="i" begin="${ph.beginPage}" end="${ph.endPage}">
                        <a href="<c:url value='/search/searchListPagination?page=${i}&pageSize=${ph.pageSize}${keywordChk1}${keywordChk2}${keywordChk3}${keywordChk4}${keywordChk5}${keywordChk6}${keywordChk7}${keywordChk8}${keywordChk9}${keywordChk10}${keywordChk11}${keywordChk12}${keywordChk13}${keywordChk14}${keywordChk15}${keywordChk16}${keywordChk17}${keywordChk21}${keywordChk22}${keywordChk23}${keywordChk24}${keywordChk25}${keywordChk26}${keywordChk31}${keywordChk32}${keywordChk33}'/> " class="page ${i==ph.page?"pageActive":""}">${i}</a>
                    </c:forEach>
                    <c:if test="${ph.showNext}">
                        <a href="<c:url value='/search/searchListPagination?page=${ph.endPage+1}&pageSize=${ph.pageSize} ${keywordChk1}${keywordChk2}${keywordChk3}${keywordChk4}${keywordChk5}${keywordChk6}${keywordChk7}${keywordChk8}${keywordChk9}${keywordChk10}${keywordChk11}${keywordChk12}${keywordChk13}${keywordChk14}${keywordChk15}${keywordChk16}${keywordChk17}${keywordChk21}${keywordChk22}${keywordChk23}${keywordChk24}${keywordChk25}${keywordChk26}${keywordChk31}${keywordChk32}${keywordChk33}' />" class="endPage">[다음]</a>
                    </c:if>
                </div>
            </div>
        </div>
    </div>

    <jsp:include page="footer.jsp" flush="false"/>
</div>
<div id="scrollToTopBtn" onclick="scrollToTop()"></div>
<script src="<c:url value='/js/body.js'/>"></script>
<script src="<c:url value='/js/searchPage.js'/>"></script>
<script>
    $(document).ready(function(){
        const tc_img = Array.from(document.getElementsByClassName('tc_img'));
        const content = Array.from(document.getElementsByClassName('content'));
        tc_img.forEach(element => {
            const tc_img_height = element.offsetHeight;
            const tc_con_box_height = $(element).parent().parent().height();
            element.style.marginTop = 'calc(('+ (tc_con_box_height) + 'px - '+(tc_img_height)+'px) / 2)';
        });
        content.forEach(element => {
            const tc_content_height = element.offsetHeight;
            const tc_con_box_height = $(element).parent().height();
            element.style.marginTop = 'calc(('+ (tc_con_box_height) + 'px - '+(tc_content_height)+'px) / 2)'
        });
    });
</script>
</body>
</html>
