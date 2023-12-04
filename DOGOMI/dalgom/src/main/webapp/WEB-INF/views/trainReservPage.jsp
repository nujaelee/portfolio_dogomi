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
    <link rel="stylesheet" href="<c:url value='/css/resev.css'/> ">
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
</head>
<body>
<div id="wrap">
    <jsp:include page="header.jsp" flush="false"/>

    <div class="container">
        <div class="tc_img_box">
            <img src="<c:url value='${tcDto.tc_img}'/>" alt="">
        </div>
        <div class="tc_info" >
            <div class="tc_title">
                <h2>${tcDto.tc_name}</h2>

            </div>
            <div class="tc_btm">
                <div class="tc_adress onTitleLeft">${tcDto.tc_main_ad} ${tcDto.tc_sub_ad}</div>
                <div class="tc_call onTitleLeft">전화번호: ${tcDto.tc_call}</div>
                <div class="tc_email onTitleLeft">e-mail: ${tcDto.tc_email}</div>
            </div>
        </div>

        <div class="te_list_box">
            <c:forEach var="TeDto" items="${list_te}">
                <div class="txt_center">
                    <div class="tl_left_box">
                        <img src="<c:url value='${TeDto.te_img}'/>" alt="">
                    </div>
                    <div class="tl_right_box">
                        <div class="tl_upper">
                            <div class="te_title" data->${TeDto.te_name}</div>
                            <div class="te_cost">금액: ${TeDto.te_cost}</div>
                            <div class="te_wish_box">찜하기
                                <div class="te_wish"> <img class="wlimg" src="<c:url value='/img/te_img/white_foot.png'/>" alt="">
                                <img class="wlimg black_pot displaynone" src="<c:url value='/img/te_img/black_foot.png'/>" alt="">
                                <c:forEach var="JjimDto" items="${jjimlst}">
                                    <c:choose>
                                        <c:when test="${JjimDto.te_no == TeDto.te_no}">
                                            <div class="bgcpink"><img class="wlimg " src="<c:url value='/img/te_img/black_foot.png'/>" alt=""></div>
                                        </c:when>
                                    </c:choose>
                                </c:forEach>
                                <div class="te_noClass displaynone">${TeDto.te_no}</div>
                            </div>
                            </div>
                        </div>
                        <div class="tl_lower">
                            <div class="teInOut">
                                <div class="te_in">
<%--                                    기간: <fmt:formatDate value="${TeDto.te_in}" pattern="yyyy-MM-dd" type="date" />--%>
                                        ${TeDto.te_in}
                                </div>
                                ~
                                <div class="te_out">
<%--                                    <fmt:formatDate value="${TeDto.te_out}" pattern="yyyy-MM-dd" type="date"/>--%>
                                    ${TeDto.te_out}
                                </div>

                            </div>
<%--                            <div class="te_bet">--%>
<%--&lt;%&ndash;                                <fmt:parseNumber value="${TeDto.te_in.time / (1000*60*60*24)}" integerOnly="true" var="nowfmtTime" scope="request"/>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                <fmt:parseNumber value="${TeDto.te_out.time / (1000*60*60*24)}" integerOnly="true" var="dbDtParse" scope="request"/>&ndash;%&gt;--%>
<%--&lt;%&ndash;                                    총: ${dbDtParse - nowfmtTime } 일&ndash;%&gt;--%>
<%--                            </div>--%>
                            <div class="te_petsize">대상 견종 크기: ${TeDto.te_petsize}</div>
                            <div class="te_reserve">예약하기
                                <div class="te_noClass displaynone">${TeDto.te_no}</div>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
        </div>
    </div>

    <script>
        let tc_no = ${param.tc_no};
        $(document).ready(function(){
            $('.te_wish').click(function (){

                let te_no = $(this).children('.te_noClass').text();
                let el = $(this);
                let elChild = $(this).children('.bgcpink');
                let imgnobl = $(this).children('.black_pot');
                console.log(te_no);
                $.ajax({
                    type: 'POST',
                    async: 'false',
                    url: '/app/search/jjim/'+te_no,

                    success : function(result){
                        if (result=="needLogin"){
                            location.href ="/app/login/login";
                        }
                        else if (result=="deljj"){
                            alert("찜이 취소되었습니다.");
                            console.log($(this))
                            el.removeClass('bgcpinkPrt');
                            elChild.remove();
                            imgnobl.addClass('displaynone')
                        }
                        else if(result=="addjj"){
                            alert("찜했습니다.");
                            el.addClass('bgcpinkPrt');
                            el.remove('displaynone');
                            imgnobl.removeClass('displaynone');
                        }
                    },
                    error   : function(){ alert("error") } // 에러가 발생했을 때, 호출될 함수
                });
            })

            $('.te_reserve').click(function (){
                let te_no = $(this).children('.te_noClass').text();
                // console.log(te_no+tc_no);
                $.ajax({
                    type: 'POST',
                    url: '/app/search/reserve/'+te_no+'/'+tc_no,
                    success : function(result){
                        if (result=="alreadyReserve"){
                            alert("이미 예약한 훈련입니다. 마이페이지에서 확인해주세요.");
                        }
                        else if(result=="reserveSuccess"){
                            alert("예약 되었습니다.");
                        }
                        else if (result=="needLogin"){
                            location.href ="/app/login/login";
                        }
                    },
                    error   : function(){ alert("error") } // 에러가 발생했을 때, 호출될 함수
                });
            });
        });
    </script>

    <jsp:include page="footer.jsp" flush="false"/>

</div>
<div id="scrollToTopBtn" onclick="scrollToTop()"></div>
<script src="<c:url value='/js/body.js'/>"></script>
</body>
</html>