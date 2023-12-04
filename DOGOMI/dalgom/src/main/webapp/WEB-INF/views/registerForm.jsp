<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.net.URLDecoder" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="<c:url value='/css/common.css'/>">
<%--    <link rel="stylesheet" href="<c:url value='/css/h_f.css'/>">--%>
    <link rel="stylesheet" href="<c:url value='/css/registerForm.css'/>">
    <link rel="stylesheet" href="<c:url value='/css/LoginHeader.css'/>">

    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
</head>
<body>
<div class="header">
    <div class="headerBox">
        <div class="logo">
            <img src="<c:url value='/img/dog2.png'/>">
            <p>회원가입</p>
        </div>
        <ul>
            <li>
                <a href="<c:url value='/'/>" class="home_btn">
                    <img src="<c:url value='/img/home.png'/>">
                    <p>HOME</p>
                </a>
            </li>
            <li>
                <a href="<c:url value='/cs/list'/>" class="cs_btn">
                    <img src="<c:url value='/img/support.png'/>">
                    <p>FAQ</p>
                </a>
            </li>
        </ul>
    </div>
</div>

<div class="box">
    <div class="registerTab">
        <c:choose>
            <c:when test="${type == 'user'}">
                <button class="userRegister select_btn">
                    <a href="<c:url value='/register/UserAdd'/>">
                        <div class="a_tag_btn">개인 회원가입</div></a>
                </button>
                <button class="tcRegister unselect_btn">
                    <a href="<c:url value='/register/TcAdd'/>">
                        <div class="a_tag_btn">훈련소 회원가입</div></a>
                </button>
            </c:when>
            <c:when test="${type == 'tc'}">
                <button class="userRegister unselect_btn">
                    <a href="<c:url value='/register/UserAdd'/>">
                        <div class="a_tag_btn">개인 회원가입</div></a>
                </button>
                <button class="tcRegister select_btn">
                    <a href="<c:url value='/register/TcAdd'/>">
                        <div class="a_tag_btn">훈련소 회원가입</div></a>
                </button>
            </c:when>
        </c:choose>

    </div>

    <c:choose>
        <c:when test="${type == 'user'}">
            <form action="<%--<c:url value='/register/UserSave'/>--%>" <%--method="POST" --%>class="userRegisterBox"<%-- onsubmit="return cheked();"--%>>
                <h3>견주 정보</h3>
                <div class="humanInfo">
                    <div>
                        <span>아이디</span>
                        <input type="text" class="user_id" placeholder="아이디 입력해주세요" name="user_id" id="userId">
                        <span class="warningMsg"></span>
                    </div>
                    <div>
                        <span>비밀번호</span>
                        <input type="password" class="user_pw" placeholder="최소8자 이상입력해주세요" name="user_pw" minlength="8">
                        <span class="user_pwValidTxt" ></span>
                    </div>
                    <div>
                        <span>비밀번호 확인</span>
                        <input type="password" class="user_pwChk" placeholder="최소8자 이상입력해주세요" minlength="8" name="user_pwChk">
                        <span class="user_pwChkTxt" ></span>
                    </div>
                    <div>
                        <span>이름</span>
                        <input type="text" class="user_name" placeholder="이름을 입력해주세요" name="user_name">
                    </div>
                    <div>
                        <span>생년월일</span>
                        <input type="tel" class="user_birth" placeholder="YYYY-MM-DD" name="user_birth">
                    </div>
                    <div>
                        <span>핸드폰</span>
                        <input type="tel" class="user_call" placeholder="010-1234-5678" maxlength="13" name="user_call">
                    </div>
                    <div>
                        <span>이메일</span>
                        <input type="email" class="user_email" placeholder="이메일을 입력해주세요" name="user_email">
                        <span class="user_emailChk"></span>
                    </div>
                    <div class="p_infoTxt">
                        *반려견 정보 등록은 마이페이지로 가주세요~!
                    </div>
                </div>
                <button <%--type="submit"--%> class="registerBt">회원 가입</button>
            </form>
        </c:when>
        <c:when test="${type == 'tc'}">
            <form action="<%--<c:url value='/register/TcSave'/>--%>" class="tcRegisterBox" <%--method="post" enctype="multipart/form-data" onsubmit="return TCcheked();"--%>>
                <h3>훈련소 정보</h3>
                <div>
                    <div class="tc_info_box">
                        <span>아이디</span>
                        <input type="text" placeholder="아이디 입력해주세요" name="tc_id" id="tcId" class="tc_id">
                        <span class="warningMsgTc"></span>
                    </div>
                    <div class="tc_info_box">
                        <span>비밀번호</span>
                        <input type="password" placeholder="비밀번호는 영문대,소,숫자가 포함8자이상이여야 합니다." minlength="8" name="tc_pw" class="tc_pw">
                        <span class="tc_pwValidTxt"></span>
                    </div>

                    <div class="tc_info_box">
                        <span>비밀번호 확인</span>
                        <input type="password" placeholder="최소8자 이상입력해주세요" minlength="8" name="tc_pwChk" class="tc_pwChk">
                        <span class="tc_pwChkTxt"></span>
                    </div>
                    <div class="tc_info_box">
                        <span>훈련소명</span>
                        <input type="text" placeholder="훈련소이름을 입력해주세요" name="tc_name" class="tc_name">
                    </div>
                    <div class="tc_info_box">
                        <span>전화번호</span>
                        <input type="tel" placeholder="010-1234-5678 또는 070(031)(02)-1234-5678" maxlength="15" name="tc_call" class="tc_call">
                    </div>
                    <div class="tc_info_box">
                        <span>이메일</span>
                        <input type="email" placeholder="이메일을 입력해주세요" name="tc_email" class="tc_email">
                    </div>
                    <span class="tc_emailChk"></span>
                    <div class="tc_info_box">
                        <span>사업자 대표명</span>
                        <input type="text" placeholder="사업자 대표성명을 입력해주세요" name="tc_leader" class="tc_leader">
                    </div>
                    <div class="tc_info_box">
                        <span>사업자 번호</span>
                        <input type="text" placeholder="사업자번호를('-'포함해서) 입력해주세요" name="tc_businesse_no" class="tc_businesse_no">
                    </div>
                    <div class=" tc_ad">
                        <span>주소</span>
                        <div class="ad_box">
                            <select class="ad_bar" name="tc_main_ad">
                                <option value="서울">서울</option>
                                <option value="인천">인천</option>
                                <option value="경기">경기</option>
                                <option value="강원">강원</option>
                                <option value="충북">충북</option>
                                <option value="충남">충남</option>
                                <option value="세종">세종</option>
                                <option value="대전">대전</option>
                                <option value="경북">경북</option>
                                <option value="경남">경남</option>
                                <option value="대구">대구</option>
                                <option value="울산">울산</option>
                                <option value="부산">부산</option>
                                <option value="전북">전북</option>
                                <option value="전남">전남</option>
                                <option value="광주">광주</option>
                                <option value="제주">제주</option>
                            </select>
                            <span>-</span>
                            <input type="text" name="tc_sub_ad" class="tc_sub_ad">
                        </div>
                    </div>
                    <div class="tc_img_bar">
                        <span>훈련소 대표사진</span>
                        <div class="tc_img_box">
                            <input type="file" name="f_file" class="tc_img" multiple="multiple" accept="image/jpeg, image/png, image/jpg">
                            <input type="text" name="tc_img" value="" hidden="hidden">
                        </div>
                    </div>
                </div>
                <button class="registerTcBt">회원 가입</button>
            </form>
        </c:when>
    </c:choose>
</div>
<script>
    /* 견주-------------------- */
    // 빈칸일때 버튼 안넘어가게 하기
    function cheked() {
        let user_id = $('.user_id');
        let user_pw = $('.user_pw');
        let user_pwChk = $('.user_pwChk');
        let user_name = $('.user_name');
        let user_birth = $('.user_birth');
        let user_call = $('.user_call');
        let user_email = $('.user_email');

        if (user_id.val()=="") {
            alert("아이디를 입력하세요");
            user_id.focus();
            return false;
        }
        else if (user_pw.val()=="") {
            alert("비밀번호를 입력하세요");
            user_pw.focus();
            return false;
        }
        else if (user_pwChk.val()=="") {
            alert("비밀번호 확인란을 입력하세요");
            user_pwChk.focus();
            return false;
        }
        else if (user_name.val()=="") {
            alert("이름를 입력하세요");
            user_name.focus();
            return false;
        }
        else if (user_birth.val()=="") {
            alert("생일을를 입력하세요");
            user_birth.focus();
            return false;
        }
        else if (user_call.val()=="") {
            alert("전화번호를 입력하세요");
            user_call.focus();
            return false;
        }
        else if (user_email.val()=="") {
            alert("이메일을 입력하세요");
            user_email.focus();
            return false;
        }else{
            return true;
        }
        alert("dalgom에 가입하신걸 환영합니다. :)")
    }

    /* 훈련소 ------------------------ */
    // 빈칸일때 버튼 안넘어가게 하기
    function TCcheked() {
        let tc_id = $('.tc_id');
        let tc_pw = $('.tc_pw');
        let tc_pwChk = $('.tc_pwChk');
        let tc_name = $('.tc_name');
        let tc_call = $('.tc_call');
        let tc_email = $('.tc_email');
        let tc_leader = $('.tc_leader');
        let tc_businesse_no = $('.tc_businesse_no');
        let tc_sub_ad = $('.tc_sub_ad');

        if (tc_id.val()=="") {
            alert("아이디를 입력하세요");
            tc_id.focus();
            return false;
        }
        else if (tc_pw.val()=="") {
            alert("비밀번호를 입력하세요");
            tc_pw.focus();
            return false;
        }
        else if (tc_pwChk.val()=="") {
            alert("비밀번호 확인란을 입력하세요");
            tc_pwChk.focus();
            return false;
        }
        else if (tc_name.val()=="") {
            alert("훈련소이름을 입력하세요");
            tc_name.focus();
            return false;
        }
        else if (tc_call.val()=="") {
            alert("전화번호를 입력하세요");
            tc_call.focus();
            return false;
        }
        else if (tc_email.val()=="") {
            alert("이메일을 입력하세요");
            tc_email.focus();
            return false;
        }
        else if (tc_leader.val()=="") {
            alert("사업자대표명을 입력하세요");
            tc_leader.focus();
            return false;
        }
        else if (tc_businesse_no.val()=="") {
            alert("사업자 번호를 입력해주세요");
            tc_businesse_no.focus();
            return false;
        }
        else if (tc_sub_ad.val()=="") {
            alert("주소를 입력하세요");
            tc_sub_ad.focus();
            return false;
        }else{
            alert("dalgom에 가입하신걸 환영합니다. :)");
            return true;
        }
    }
    $(document).ready(function() {

        $('.registerBt').on("click", function(){
            if(cheked()){
                if(!birthChk()){
                    alert("생일을 재입력하세요");
                    return false;
                }
                let user_reg_frm = $('.userRegisterBox');
                user_reg_frm.attr('action', "<c:url value='/register/UserSave'/>");
                user_reg_frm.attr('method', 'post');
                user_reg_frm.submit();
            }
        });
        $('.registerTcBt').on("click", function(){
            if(TCcheked()){
                let tc_reg_frm = $('.tcRegisterBox');
                tc_reg_frm.attr('action', "<c:url value='/register/TcSave'/>");
                tc_reg_frm.attr('method', 'post');
                tc_reg_frm.attr('enctype', 'multipart/form-data');
                tc_reg_frm.submit();
            }
        });

        /* *******************************  견주 회원가입  *************************************** */
        //아이디 중복체크
        $('#userId').keyup(function(){
            userFormChk($(this).val());
        });

        function userFormChk(ID) {
            // ID
            if (ID.length < 3) {
                $('.warningMsg').text("아이디의 길이는 3자이상 입력해주세요");
                $('.warningMsg').css("color", "red");
            }
            else {
                // 견주 유효성검사
                $.ajax({
                    type: "POST",
                    url: '/app/register/UserSaveChk/'+ID,
                    headers: {"content-type": "application/json"},
                    data : JSON.stringify(ID),
                    success: function (result) {
                        console.log("result: " +result)
                        //컨트롤러에서 통과해서 온값 existId 가 result랑 같으면 아이디 중복이라는 메세지 전달
                        // userableId = result랑 다르면 다음단계로
                        if (result == 1) {
                            $('.warningMsg').text("이미 사용중인 아이디입니다.");
                            $('.warningMsg').css("color", "red");
                        }
                        else if (result==0) {
                            $('.warningMsg').text("사용 가능한 아이디 입니다.");
                            $('.warningMsg').css("color", "black");
                        }
                    },
                    error: function () {
                        alert("error");
                    } // 컨트롤러에서 온값이 잘못된경우
                });
            }
        }

        //비밀 번호 형식체크
        function userPwValid(user_pw) {
            // 비밀번호 검사
            let userPwValid = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/;
            // 비밀번호 형식테스트
            return userPwValid.test(user_pw);
        }

        $('.user_pw').keyup(function () {
            if(userPwValid($('.user_pw').val())) {
                $('.user_pwValidTxt').css("display", "none");
            }
            else {
                $('.user_pwValidTxt').css("display", "block");
                $('.user_pwValidTxt').text("비밀번호는 영문대,소,숫자가 포함8자이상이여야 합니다");
                $('.user_pwValidTxt').css("color", "red");
            }
        })


        // 비밀번호값이랑 비밀번호확인 값이랑 같은지 체크
        $('.user_pwChk').keyup(function(){
            let user_pw = $('.user_pw').val();
            let user_pwChk = $('.user_pwChk').val();

            if(user_pwChk == user_pw) {
                $('.user_pwChkTxt').text("비밀번호가 일치 합니다");
                $('.user_pwChkTxt').css("color", "black");
            }
            else {
                $('.user_pwChkTxt').text("비밀번호가 일치하지 않습니다.");
                $('.user_pwChkTxt').css("color", "red");
            }
        });



        // 생년월일 - 체크
        function birthChk() {
            // 1. - 다 뺴고
            // 2. 8자리 맞는지
            // 3. 4,2,2 자리로 자르기 -> (유효성검사)
            // 4. 재조림: 4자리-2자리-2자리

            var birth = $('.user_birth').val(); // 2000-01-23
            if(!birth.match("-")){
                // alert("생일을 재입력하세요");
                return false;
            }
            birth = birth.replaceAll("-","");// - 다 빼기

            let y = birth.substring(0,4);
            let m = birth.substring(4,2);
            let d = birth.substring(6,2);
            let dt = new Date();
            let chk_year = dt.getFullYear();


            // alert(y+m+d+dt);
            if(birth.length==8) {
                if(1900>y && y> chk_year) {
                    return false;
                }
                if(m <= 0 && m >= 13) {
                    if (m == 2) {
                        return d<=0 && d>=30;
                    }
                    return false;
                }
                if(d<=0 && d>=32) {
                    return false;
                }
                return true;
            }
            else {
                alert("형식이 올바르지 않습니다.");
                return false;
            }
        }

        $('.user_birth').on('focusout', (function(){
            birthChk();
        }));


        // 이메일 형식체크
        function emailChk(email) {
            // 이메일 유효성을 검사하는 정규 표현식
            let emailChk = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;

            // 정규 표현식을 사용하여 이메일 주소 유효성을 확인
            return emailChk.test(email);
        }
        $('.user_email').keyup(function (){
            if (emailChk($('.user_email').val())) {
                $('.user_emailChk').css("display", "none");
            }
            else {
                $('.user_emailChk').css("display", "block");
                $('.user_emailChk').text("이메일 형식이 아닙니다");
                $('.user_emailChk').css("color", "red");
            }
        })




        /* ***************************** 훈련소 회원가입 ****************************** */

        // 훈련소 아이디 중복확인
        $('#tcId').keyup(function(){
            tcFormChk($(this).val())
        });

        function tcFormChk(ID) {
            // ID
            if (ID.length < 3) {
                $('.warningMsgTc').text("아이디의 길이는 3자이상 입력해주세요");
                $('.warningMsgTc').css("color", "red");
            }
            else {
                // 견주 유효성검사
                $.ajax({
                    type: "POST",
                    url: '/app/register/TcSaveChk/'+ID,
                    headers: {"content-type": "application/json"},
                    data : JSON.stringify(ID),
                    success: function (result) {
                        console.log("result: " +result)
                        console.log(2323)
                        //컨트롤러에서 통과해서 온값 existId 가 result랑 같으면 아이디 중복이라는 메세지 전달
                        // userableId = result랑 다르면 다음단계로
                        if (result == 1) {
                            $('.warningMsgTc').text("이미 사용중인 아이디입니다.");
                            $('.warningMsgTc').css("color", "red");
                        }
                        else if (result==0) {
                            $('.warningMsgTc').text("사용 가능한 아이디 입니다.");
                            $('.warningMsgTc').css("color", "black");
                        }
                    },
                    error: function () {
                        alert("error")
                    } // 컨트롤러에서 온값이 잘못된경우
                });
            }
        }


        //비밀 번호 형식체크
        function tcPwValid(tc_pw) {
            // 비밀번호 검사
            let tcPwValid = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$%^&*-]).{8,}$/;
            // 비밀번호 형식테스트
            return tcPwValid.test(tc_pw);
        }

        $('.tc_pw').keyup(function () {
            if(tcPwValid($('.tc_pw').val())) {
                $('.tc_pwValidTxt').css("display", "none");
            }
            else {
                $('.tc_pwValidTxt').css("display", "block");
                $('.tc_pwValidTxt').text("비밀번호는 영문대,소,숫자가 포함8자이상이여야 합니다");
                $('.tc_pwValidTxt').css("color", "red");
            }
        })

        // 비밀번호값이랑 비밀번호확인 값이랑 같은지 체크
        $('.tc_pwChk').keyup(function(){
            let tc_pw = $('.tc_pw').val();
            let tc_pwChk = $('.tc_pwChk').val();

            if(tc_pwChk == tc_pw) {
                $('.tc_pwChkTxt').text("비밀번호가 일치 합니다");
                $('.tc_pwChkTxt').css("color", "black");
            }
            else {
                $('.tc_pwChkTxt').text("비밀번호가 일치하지 않습니다.");
                $('.tc_pwChkTxt').css("color", "red");
            }
        });


        // 이메일 형식체크
        function tcEmailChk(email) {
            // 이메일 유효성을 검사하는 정규 표현식
            let tcEmailChk = /^[a-zA-Z0-9._-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,4}$/;

            // 정규 표현식을 사용하여 이메일 주소 유효성을 확인
            return tcEmailChk.test(email);
        }
        $('.tc_email').keyup(function (){
            if (tcEmailChk($('.tc_email').val())) {
                $('.tc_emailChk').css("display", "none");
            }
            else {
                $('.tc_emailChk').css("display", "block");
                $('.tc_emailChk').text("이메일 형식이 아닙니다");
                $('.tc_emailChk').css("color", "red");
            }
        })

    });

</script>
</body>
</html>