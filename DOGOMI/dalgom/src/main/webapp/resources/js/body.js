document.addEventListener('DOMContentLoaded', function() {
    // 커서 커스텀
    // var navListItems = document.querySelectorAll('body');

    // navListItems.forEach(function(item) {
    //     item.addEventListener('mouseover', function() {
    //         document.body.style.cursor = 'url("../img/etc/footprint_cursor.png"), auto';
    //     });

    //     item.addEventListener('mouseout', function() {
    //         document.body.style.cursor = 'url("../img/etc/footprint_cursor.png"), auto'; // 기본 커서로 변경
    //     });
    // });


    // 탑버튼
    var topbutton = $("#scrollToTopBtn");
    $(window).scroll(function () {
        if ($(this).scrollTop() > 20) {
            topbutton.fadeIn();
        } else {
            topbutton.fadeOut();
        }
    });
    topbutton.click(function () {
        $("html, body").animate({ scrollTop: 0 }, "slow");
    });
});