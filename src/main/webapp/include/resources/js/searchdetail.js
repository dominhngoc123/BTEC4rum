/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

$(document).ajaxComplete(function () {
    var a = 0;
    $('.btn_sortBy').click(function () {
        if (a == 0) {
            $('.sortBy_list').animate({
                width: '0px',
                opacity: '0',
            });
            a = 1;
        } else {
            $('.sortBy_list').animate({
                width: '100%',
                opacity: '1',
            });
            a = 0;
        }
    });
    $('.sortBy_list button').click(function () {
        $('.sortBy_list button').removeClass('active');
        $(this).addClass('active');
    });
});

$(document).ready(function () {
    loadPostData();
});
function loadPostData()
{
    var searchContent = $("#searchTxt").val();
    $.ajax({
        type: "GET",
        url: "searchPost?searchContent=" + searchContent,
        success: function (data) {
            var htmlStr = "";
            $.each(data['listSearchPost'], function () {
                var postID = this.postID;
                htmlStr += "<div class='result_container'>";
                htmlStr += "<div class='result_header'>";
                htmlStr += "<div class='post__body-author'>";
                htmlStr += "<div class='post__body-author-bg-img'>";
                htmlStr += "<a data-toggle='modal' data-target='#profile-modal'><img src='" + this.user.userAvatar + "' alt='" + this.user.userFullName + "'></a>";
                htmlStr += "</div>";
                htmlStr += "<ul class='post__body-author-text'>";
                htmlStr += "<li><span class='post__body-author-name' data-toggle='modal' data-target='#profile-modal'>" + this.user.userFullName + "</span></li>";
                htmlStr += "<li><span class='post__body-author-time'>Posted on <span>10-FEB-2015</span> <span>12:00</span></span></li>";
                htmlStr += "</ul>";
                htmlStr += "</div>";
                htmlStr += "<div class='post__header-action'>";
                htmlStr += "<div class='btn-group'>";
                htmlStr += "<div class='btn-group' role='group'>";
                htmlStr += "<button type='button'";
                htmlStr += "class='btn-jump btn-post__header-action dropdown-toggle dropdown-toggle-split'";
                htmlStr += "data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>";
                htmlStr += "<span class='sr-only'>Toggle Dropleft</span>"
                htmlStr += "<i class='fas fa-ellipsis-v'></i>";
                htmlStr += "</button>";
                htmlStr += "<div class='dropdown-menu edit-dropdown-menu'>";
                htmlStr += "<a class='dropdown-item edit-dropdown-item' href='#'>Other</a>";
                htmlStr += "<a class='dropdown-item edit-dropdown-item' href='#'>Other</a>";
                htmlStr += "<a class='dropdown-item edit-dropdown-item' href='#'>Other</a>";
                htmlStr += "</div>";
                htmlStr += "</div>";
                htmlStr += "</div>";
                htmlStr += "</div>";
                htmlStr += "</div>";
                htmlStr += "<div class='result_body' data-href='postdetail.html'>" + this.postTitle + "</div>";
                htmlStr += "<div class='result_footer'>";
                htmlStr += "<div class='quan_like'>";
                htmlStr += "<i class='far fa-thumbs-up'></i> <span>12</span>";
                htmlStr += "</div>";
                htmlStr += "<div class='quan_comment'>";
                htmlStr += "<p><span>";
                for (var i = 0; i < data['newPostCommentCount'].length; i++)
                {
                    if (data['newPostCommentCount'][i][0] == postID)
                    {
                        htmlStr += data['newPostCommentCount'][i][1];
                        break;
                    }
                }
                htmlStr += "</span> Comments</p>";
                htmlStr += "</div>";
                htmlStr += "</div>";
                htmlStr += "</div>";
            });
            console.log(htmlStr);
            $("#content").html(htmlStr);
        }
    });
}
;
function loadUserData(searchContent)
{
    $.ajax({
        type: "GET",
        url: "searchPost?searchContent=" + searchContent,
        success: function (data) {
            var htmlStr = "";
            $.each(data, function (data) {
                htmlStr += "<div class='result_container'>";
                htmlStr += "<div class='result_header'>";
                htmlStr += "<div class='post__body-author'>";
                htmlStr += "<div class='post__body-author-bg-img'>";
                htmlStr += "<a data-toggle='modal' data-target='#profile-modal'><img src='/resources/img/pic.png' alt=''></a>";
                htmlStr += "</div>";
                htmlStr += "<ul class='post__body-author-text'>";
                htmlStr += "<li><span class='post__body-author-name' data-toggle='modal' data-target='#profile-modal'>Doe John</span></li>";
                htmlStr += "<li><span class='post__body-author-time'>Developer & Designer</span></li>";
                htmlStr += "</ul>";
                htmlStr += "</div>";
                htmlStr += "<div class='modal-footer-profile-item'>";
                htmlStr += "<span class='font-edit'>120</span>";
                htmlStr += "<span>Posts</span>";
                htmlStr += "</div>";
                htmlStr += "<div class='modal-footer-profile-border-card'></div>";
                htmlStr += "<div class='modal-footer-profile-item'>";
                htmlStr += "<span class='font-edit'>127</span>";
                htmlStr += "<span>Scores</span>";
                htmlStr += "</div>";
                htmlStr += "<div class='modal-footer-profile-border-card'></div>";
                htmlStr += "<div class='modal-footer-profile-item'>";
                htmlStr += "<span class='font-edit'>120K</span>";
                htmlStr += "<span>Other</span>";
                htmlStr += "</div>";
                htmlStr += "<div class='post__header-action'>";
                htmlStr += "<div class='btn-group'>";
                htmlStr += "<div class='btn-group' role='group'>";
                htmlStr += "<button type='button' class='btn-jump btn-post__header-action dropdown-toggle dropdown-toggle-split' data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>";
                htmlStr += "<span class='sr-only'>Toggle Dropleft</span>";
                htmlStr += "<i class='fas fa-ellipsis-v'></i>";
                htmlStr += "</button>";
                htmlStr += "<div class='dropdown-menu edit-dropdown-menu'>";
                htmlStr += "<a class='dropdown-item edit-dropdown-item' href='#'>Other</a>";
                htmlStr += "<a class='dropdown-item edit-dropdown-item' href='#'>Other</a>";
                htmlStr += "<a class='dropdown-item edit-dropdown-item' href='#'>Other</a>";
                htmlStr += "</div>";
                htmlStr += "</div>";
                htmlStr += "</div>";
                htmlStr += "</div>";
                htmlStr += "</div>";
                htmlStr += "</div>";
                $("#content").html(htmlStr);
            });
        }
    });
}
;
$(document).ajaxComplete(function () {
    $(".btnSort").on("click", function () {
        var val = $(this).val();
        switch (val)
        {
            case "showPost":
            {
                loadPostData();
            }
            case "showUser":
            {
                alert("Show user");
                break;
            }
        }
    })
})
// =================================Content clickable====================================
document.addEventListener("DOMContentLoaded", () => {
    const rows = document.querySelectorAll(".result_body[data-href]")
    rows.forEach(row => {
        row.addEventListener("click", () => {
            window.location.href = row.dataset.href;
        });
    });
});