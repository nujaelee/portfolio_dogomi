$(document).ready(function() {
    // 슬라이드배너
    $('.banner').eq(0).css({left: 0});

    let curr_idx = 0;
    let timer = 1000;
    let bn_count = $('.banner').length;

    $('.btn_slide_R').click(function(){
        slide('-100%', curr_idx+1, '100%')
        curr_idx += 1;
    });

    $('.btn_slide_L').click(function(){
        slide('100%', (curr_idx-1), '-100%');
        curr_idx -= 1;
    })

    function slide(o_pos, c_idx, c_pos) {
        버튼막기();

        $('.banner').eq(curr_idx % bn_count).animate({
            left: o_pos
        }, timer);

        $('.banner').eq((c_idx) % bn_count).css({
            left: c_pos
        }).stop(true).animate({
            left: 0
        }, timer);
    }

    function 버튼막기() {
        $('.btn_slide').css({pointerEvents:'none'})
        setTimeout(function(){
            $('.btn_slide').css({pointerEvents:'auto'});
        }, timer);
    }

    let interval;
    function auto_slide() {
        interval=setInterval(function(){
            $('.btn_slide_R').trigger('click');
        }, timer+2000);
    }

    $('.slide_banner_box').hover(function(){
        clearInterval(interval);
    }, function(){
        auto_slide();
    });

    $('li').click(function() {
        $('li').removeClass();
        $(this).addClass('on');
    });


    // 아이콘 animate
    $(window).scroll(function() {
        var windowBottom = $(this).scrollTop() + $(this).innerHeight();

        $(".slogan_icon img").each(function() {
            var objectBottom = $(this).offset().top + $(this).outerHeight();

            if (objectBottom < windowBottom) {
                $('.icon1').animate({ opacity: 1, bottom: -100 }, 500);
                $('.icon2').animate({ opacity: 1, top: 180 }, 1300);
                $('.icon3').animate({ opacity: 1, left: -150 }, 1100);
                $('.icon4').animate({ opacity: 1, left: -180, top: 170 }, 1100);
                $('.icon5').animate({ opacity: 1, left: -800 }, 800);
                $('.icon6').animate({ opacity: 1, top: 120 }, 1300);
            }
        });
    });
});