// ==============================change profile responsive====================================
var c = 0;
function change_profile() {
    if (c == 0) {
        document.getElementById("modal-body-profile-left").classList.remove("showProfile");
        document.getElementById("modal-body-profile-right").classList.remove("hideProfile");

        document.getElementById("modal-body-profile-left").classList.add("hideProfile");
        document.getElementById("modal-body-profile-right").classList.add("showProfile");
        c = 1;
    } else {
        document.getElementById("modal-body-profile-left").classList.remove("hideProfile");
        document.getElementById("modal-body-profile-right").classList.remove("showProfile");

        document.getElementById("modal-body-profile-left").classList.add("showProfile");
        document.getElementById("modal-body-profile-right").classList.add("hideProfile");
        c = 0;
    }
}

// ===========================================loading=========================================
$(window).on('load', function (event) {
    $('body').removeClass('preloading');
    $('.load').delay(700).fadeOut('fast');
});

// =================================Table rows clickable====================================
document.addEventListener("DOMContentLoaded", () => {
    const rows = document.querySelectorAll("tr[data-href]")
    rows.forEach(row => {
        row.addEventListener("click", () => {
            window.location.href = row.dataset.href;
        });
    });
});

// ====================================scroll hide header====================================

var prevScrollpos = window.pageYOffset;
window.onscroll = function () {
    var currentScrollPos = window.pageYOffset;
    if (prevScrollpos > currentScrollPos) {
        document.getElementById("header").style.top = "0";
    } else {
        document.getElementById("header").style.top = "-40px";
    }
    prevScrollpos = currentScrollPos;
}

// ====================================auto resize textarea====================================
$('textarea').each(function () {
    this.setAttribute('style', 'height:' + (this.scrollHeight) + 'px;overflow-y:hidden;');
}).on('input', function () {
    this.style.height = 'auto';
    this.style.height = (this.scrollHeight) + 'px';
});

// ====================================Limit date for input[type = date]====================================
var today = new Date();
var minDate = (today.getFullYear() - 45) + '-' + (today.getMonth() + 1) + '-' + today.getDate();
var maxDate = (today.getFullYear() - 18) + '-' + (today.getMonth() + 1) + '-' + today.getDate();
$('input[type=date]').attr('min', minDate);
$('input[type=date]').attr('max', maxDate);

// ====================================scrollTop====================================
$('.sclTop').click(function (e) {
    e.preventDefault();
    $('html, body').animate({ scrollTop: 0 }, 800);
}).fadeOut(0);

$(window).scroll(function () {
    if ($(this).scrollTop() > 200 && $(this).scrollTop() < $('.footer').offset().top - 750) {
        $('.sclTop').fadeIn(300);
    } else {
        $('.sclTop').fadeOut(300);
    }
});
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