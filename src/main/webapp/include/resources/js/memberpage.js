$(window).scroll(function () {
    if ($(this).scrollTop() < $('.footer').offset().top - 700) {
        $('.btn_cmt_action').css({
            'marginRight': '0px',
            'opacity': '1',
        });
    } else {
        $('.btn_cmt_action').css({
            'marginRight': '-100px',
            'opacity': '0',
        });
    }
});