<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Comment</title>
    <script src="https://code.jquery.com/jquery-1.11.3.js"></script>
    <link rel="stylesheet" href="<c:url value='/css/community.css'/> ">
</head>
<body>

<%--<form action="" id="reg_comment" onsubmit="return false">--%>
<div class="txt_comment_box">
    <input type="text" id="txt_comment" name="co_comment" placeholder="댓글 추가" >
    <button type="button" id="btn_comment_submit" class="btn">등록</button>
</div>
<%--</form>--%>
<div id="list_comment">

    <%--  ajax로 댓글 가져와서 넣는 부분 --%>
    <div id="commentList"></div>
</div>
<script>

    let cu_no = ${param.cu_no};

    /* 댓글 다 불러오기 */
    let showList = function(cu_no) {
        $.ajax({
            type:'GET',       // 요청 메서드
            url: '/app/comments?cu_no='+cu_no,  // 요청 URI
            /*dataType : 'json', */  //생력하면 기본값(json) 이 들어간다.// 전송받을 데이터의 타입
            /*data : JSON.stringify(person),*/ // 위에꺼 생략하면 변환이 필요 없다.  // 서버로 전송할 데이터. stringify()로 직렬화 필요.
            success : function(result){
                //person2 = JSON.parse(result);  // 서버로부터 응답이 도착하면 호출될 함수
                // 위에 dataType 에서 변환 안했으니까 받을때도 필요 없음. 생략 가능.
                console.log("received="+result);       // result는 서버가 전송한 데이터
                console.log("toHtml: " + toHtml(result))
                $("#commentList").html(toHtml(result));
                // 배열로 들어온걸(result) 함수를 이용해서 ul에 넣어서 가져온다.
            },
            error   : function(){ alert("error 댓글 다 불러오기") } // 에러가 발생했을 때, 호출될 함수
        }); // $.ajax()
    }

    /* 댓글 다 불러오기 할때 쓰는 포멧 */
    let toHtml = function(comments) {
        let tmp2 ="";
        comments.forEach(function(comment) {
            let dt = new Date(comment.co_update);
            let year=dt.getFullYear();
            let mon=dt.getMonth()+1;
            let date=dt.getDate();
            let hour=dt.getHours();
            let min =dt.getMinutes();
            let sec =dt.getSeconds();

            tmp2 +='<div class="list_item">';
            tmp2 +='  <div class="comment_detail">';
            tmp2 +='    <div class="item_head">';
            tmp2 +='      <span>'+comment.user_id+'</span>';
            tmp2 +='      <span>'+(year+"-"+mon+"-"+date+" "+hour+":"+min+":"+sec)+'</span>';
            tmp2 +='    </div>';
            tmp2 +='    <div class="item_body">';
            tmp2 +='      <input type="text" class="comment comment_title" name="comment_title" value="'+comment.co_comment+'" readonly />';
            tmp2 +='    </div>';
            tmp2 +='  </div>';
            tmp2 +='  <div data-co_no='+comment.co_no +' data-cu_no='+comment.cu_no +' class="btn_comment_box">';
            tmp2 +='    <button type="button" class="btn_comment btn_comment_modify">수정</button>';

            tmp2 +='    <button type="button" class="btn_comment btn_comment_del">삭제</button>';

            tmp2 +='    <button type="button" class="btn_comment btn_comment_edit_submit displayNone">등록</button>';
            tmp2 +='    <button type="button" class="btn_comment btn_comment_edit_cancel displayNone">취소</button>';

            tmp2 +='  </div>';
            tmp2 +='</div>';
        })
        return tmp2;

    }

    $(document).ready(function(){
        showList(cu_no); // 일단 리스트 다 불러오기


        /* 새 댓글 쓰기 */
        $(document).on('click','#btn_comment_submit',function(){
            console.log("새 댓글 쓰기");

            let co_comment = $('#txt_comment').val().trim(); // 입력한 댓글을 가지고 와서 ajax의 data에 보냄.
            console.log("ㅁㄴㅇ"+co_comment);
            if(co_comment=="") {
                alert("댓글 입력하세요");
                // $('input[name="comment"]').focus();
                $('#txt_comment').focus();
                return;
            }
            console.log("cu_nocu_no : " + cu_no)
            $.ajax({
                type:'POST',       // 요청 메서드
                url: '/app/comments',//?cu_no='+cu_no, //+"&co_comment="+co_comment,  // 요청 URI -
                // data: {bno: 10, co_comment:co_comment},
                data: {cu_no:cu_no, co_comment:co_comment},
                success : function(result){

                    $('#txt_comment').val(""); // 댓글 쓴 부분 빈칸으로 초기화 하기
                    showList(cu_no);
                },
                error   : function(){ alert("error") } // 에러가 발생했을 때, 호출될 함수
            });
        });

        /* '삭제'버튼 - 댓글 하나 삭제 */
        $(document).on('click','.btn_del, .btn_comment_del',function(){
            let co_no = $(this).parent().attr("data-co_no"); // document.getElementById().dataset.cno
            let cu_no = $(this).parent().attr("data-cu_no");

            console.log('/app/comments/'+co_no+'?cu_no='+cu_no);

            $.ajax({
                type:'DELETE',
                url: '/app/comments/'+co_no+'/'+cu_no,
                data: {cu_no:1, co_no:2},
                success : function(result){
                    showList(cu_no)
                },
                error   : function(){ alert("error 댓글 하나 삭제") } // 에러가 발생했을 때, 호출될 함수
            }); // $.ajax()
        });

        /* '수정'버튼 - 댓글 수정 할 수 있게 활성화 */
        let currComment =""; // 댓글 수정 버튼 누르면 기존값 저장해놨다가, 취소 눌렀을때 원상복귀 시킬때 쓸 변수
        $(document).on('click','.btn_comment_modify',function(){
            console.log("수정 버튼")

            // 해당 댓글 수정 가능하도록 활성화 - 등록, 취소 버튼 나타남
            console.log("이거: " + $(this).prev().find('.comment'))
            let el = $(this).parent().prev().find('.comment');
            currComment = el.val(); // 나중에 취소 누르면 currComment 값으로 다시 복귀 시킬거임
            el.attr("readonly", false);
            el.addClass('active_comment_edit');
            el.select();

            $(this).parent().children('.btn_comment').toggleClass('displayNone');
        });

        /* '취소'버튼 - 수정 취소 버튼 */
        $(document).on('click','.btn_comment_edit_cancel',function() {
            let el = $(this).parent().prev().find('.comment');
            el.attr("readonly", true);
            el.removeClass('active_comment_edit');
            el.val(currComment); // 원래 값으로 복원 시킴

            $(this).parent().children('.btn_comment').toggleClass('displayNone');
        });

        /* '등록'버튼 - 댓글 수정 */
        $(document).on('click','.btn_comment_edit_submit',function() {

            let co_no = $(this).parent().attr("data-co_no");
            let cu_no = $(this).parent().attr("data-cu_no");
            let el = $(this).parent().prev().find('.comment');
            let co_comment = el.val();


            console.log("co_no: "+co_no+", cu_no: "+cu_no+", co_comment: "+ co_comment);

            $.ajax({
                type:'PATCH',       // 요청 메서드
                url: '/app/comments/'+co_no+'/'+co_comment,
                // 요청 URI - Ex17_CommentController 의 맵핑 "/comments/{cno}"가 받음
                //data : {co_no:co_no, co_comment:co_comment},  // 서버로 전송할 데이터. stringify()로 직렬화 필요.
                success : function(result){
                    showList(cu_no);
                },
                error   : function(){ alert("error") } // 에러가 발생했을 때, 호출될 함수
            });
        });

    });

</script>
</body>
</html>