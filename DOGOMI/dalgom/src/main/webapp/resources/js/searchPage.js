$(document).ready(function () {
    // 체크박스
    var initialPosition = $('.condition_side').offset().top;
    let condition_side_h = $('.condition_side').height();
    let o_bot_condition_side = initialPosition +  condition_side_h;
    var o_top_f_box = $(".f_box").offset().top;
    let o_top_main_side = $(".main_side").offset().top;

    $(window).scroll(function () {
        var s_top = $(window).scrollTop()+50;
        var w_height = $(window).height;
        let tmp_bot = s_top+condition_side_h;

        if(o_bot_condition_side <= tmp_bot && tmp_bot < (o_top_f_box)) {
            $(".condition_side").css({
                top: s_top - o_top_main_side
            });
        }else if(tmp_bot >= (o_top_f_box)){
            $('.condition_side').css({
                top: s_top + w_height + 400
            });
        }else{
            $('.condition_side').css({
                top: '30px'
            });
        }
    });

    // 탑버튼
    var mybutton = $("#scrollToTopBtn");
    $(window).scroll(function () {
        if ($(this).scrollTop() > 20) {
            mybutton.show();
        } else {
            mybutton.hide();
        }
    });

    mybutton.click(function () {
        $("html, body").animate({ scrollTop: 0 }, "slow");
    });
});