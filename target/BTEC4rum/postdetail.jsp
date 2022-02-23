<%-- 
    Document   : postdetail
    Created on : Dec 11, 2020, 2:05:34 PM
    Author     : Ngoc Do Minh
--%>

<%@taglib prefix="s" uri="/struts-tags"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="include/auth.jsp"/>
    <jsp:include page="include/header.jsp"/>
    <link rel="stylesheet" href="include/resources/css/postdetail.css">
    <!--!cái style này ở đây vì thứ tự ưu tiên css, dùng cho scroll modal đừng ai xóa hoặc di chuyển nha <3 -->
    <style>
        #modalEdit_post {
            opacity: 1 !important;
            overflow: visible;
        }
    </style>
    <body class="preloading">
        <!-- *loading -->
        <jsp:include page="include/Preloading.jsp"/>
        <!--Profile modal-->
        <jsp:include page="include/ProfileModal.jsp"/>
        <!-- *Content -->
        <section class="container-fluid content">
            <!-- *Content Left-->
            <jsp:include page="include/LeftTable.jsp"/>
            <!-- *Content Right-->
            <div class="content_right">
                <!--todo Post Container -->
                <input type="hidden" id="postID" value="<s:property value="postID"/>">
                <input type="hidden" id="accountEmail" value="<s:property value="#session.accountEmail"/>"/>
                <input type="hidden" id="accountAvatar" value="<s:property value="#session.userAvatar"/>"/>
                <input type="hidden" id="accountName" value="<s:property value="#session.userFullName"/>"/>
                <div class="post-container" id="content">
                    <!-- Post Header -->
                    <!-- Post Header -->

                </div>
            </div>
            <!-- Modal edit post-->
            <div class="modal fade modal_overFlow" id="modalEdit_post">
                <div class="modal-dialog modal-lg-edit" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">Edit Post</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <form id="editPostFrm" action="" method="post">
                            <div class="modal-body">
                                Post Header 
                                <div class="post__header">
                                    <div class="post__header-title">
                                        <textarea
                                            class="form-control auto-textarea post-inp-color post-inp-edit fadeUpdate" id="editPostTitle"
                                            placeholder="Enter title here..." aria-label="With textarea"
                                            style="text-rendering: auto;" required></textarea>
                                    </div>
                                    <div class="post__header-action">
                                        <div class="btn-group">
                                            <div class="btn-group" role="group">
                                                <button type="button"
                                                        class="btn-jump btn-post__header-action dropdown-toggle dropdown-toggle-split"
                                                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    <span class="sr-only">Toggle Dropleft</span>
                                                    <i class="fas fa-ellipsis-v"></i>
                                                </button>
                                                <div class="dropdown-menu edit-dropdown-menu">
                                                    <a class="dropdown-item edit-dropdown-item" href="#">Delete</a>
                                                    <a class="dropdown-item edit-dropdown-item" href="#">Report</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                Post Body 
                                <div class="post__body">
                                    <div class="post__body-author">
                                        <div class="post__body-author-bg-img">
                                            <a><img src="" class="editUserAvatar" alt=""></a>
                                        </div>
                                        <ul class="post__body-author-text">
                                            <li><span class="post__body-author-name editUserName"></span></li>
                                            <li><span class="post__body-author-time">Posted on&nbsp; <s:property value="approvedDate"/></span></li>
                                        </ul>
                                    </div>
                                    <div class="post__body-content">
                                        <textarea name="" id="editor1" class="editPostContent" placeholder="Type text content here..."
                                                  required>Write content here...</textarea>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="submit" class="btn btn-jump btn-post btn-shadow btnFade">Update</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
            <div class="modal fade" id="modalEdit_cmt">
                <div class="modal-dialog modal-dialog-centered modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title">Edit Comment</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        <form id="" action="" method="post">
                            <div class="modal-body">
                                <div class="comment-main-level">
                                    <div class="comment-box">
                                        <div class="comment-head">
                                            <h6 class="comment-name by-author"><a href="#" id="cmtAuthor"></a></h6>
                                            <span class="posted-time" id="cmtApprovedDate"></span>
                                            <div class="comment-head-more-action">
                                                <button type="button"
                                                        class="btn-jump btn-post__header-action dropdown-toggle dropdown-toggle-split"
                                                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                    <span class="sr-only">Toggle Dropleft</span>
                                                    <i class="fas fa-ellipsis-v"></i>
                                                </button>
                                                <div class="dropdown-menu edit-dropdown-menu">
                                                    <a class="dropdown-item edit-dropdown-item" href="#">Delete</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="comment-content">
                                            <textarea type="text" class="txtUpdatecmt" id="cmtContent" required></textarea>
                                            <br>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="submit"
                                        class="btn btn-jump btn-post btn-shadow btn_cmtFade">Update</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </section>
        <!-- *scrollTop -->
        <div class="scrollTop">
            <a href="#" class="sclTop"><i class="far fa-arrow-alt-circle-up"></i></a>
        </div>
        <script src="include/resources/js/LogOut.js"></script>
        <!-- *Footer -->
        <jsp:include page="include/footer.jsp"/>
    </body>
    <!--=============================================Bootstrap js==================================================-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.0/js/materialize.min.js"></script>
    <script src="include/resources/js/postdetail.js"></script>
    <script src="include/resources/js/base.js"></script>
    <script src="include/asset/ckeditor/ckeditor.js"></script>
    <script type="text/javascript">
        function postComment(baseCommentID, tagEmail)
        {
            event.preventDefault();
            var postID = $("#postID").val();
            var postTitle = $("#postTitle").html();
            var commentContent = document.getElementById("CMT" + baseCommentID).value;
            if (baseCommentID.length == 14)
            {
                baseCommentID = baseCommentID.substring(0, 12);
            }
            var accountEmail = $("#accountEmail").val();
            var threadID = $("#threadID").val();
            $.ajax({
                type: "POST",
                url: "AddNewComment?postID=" + baseCommentID + "&postTitle=" + postTitle + "&postContent=" + commentContent + "&threadID=" + threadID + "&accountEmail=" + accountEmail,
                success: function () {
                    loadContent(postID);
                    window.scrollTo(0, document.body.scrollHeight);
                }
            });
        }
        function editPost()
        {
            event.preventDefault();
            var postID = $("#postID").val();
            var editPostTitle = $("#editPostTitle").val();
            var editPostContent = encodeURIComponent(CKEDITOR.instances["editor1"].getData());
            var threadID = $("#threadID").val();
            $.ajax({
                type: "POST",
                url: "updatePost?postID=" + postID + "&postTitle=" + editPostTitle + "&postContent=" + editPostContent + "&threadID=" + threadID,
                success: function () {
                    $("#modalEdit_post").modal("hide");
                    loadContent(postID);
                    window.scrollTo(0, document.body.scrollHeight);
                }
            });
        }
        function editComment()
        {
            event.preventDefault();
            var postID = $("#postID").val();
            var editPostTitle = $("#editPostTitle").val();
            var editPostContent = encodeURIComponent(CKEDITOR.instances["editor1"].getData());
            var threadID = $("#threadID").val();
            $.ajax({
                type: "POST",
                url: "updatePost?postID=" + postID + "&postTitle=" + editPostTitle + "&postContent=" + editPostContent + "&threadID=" + threadID,
                success: function () {
                    $("#modalEdit_post").modal("hide");
                    loadContent(postID);
                    window.scrollTo(0, document.body.scrollHeight);
                }
            });
        }
        // CKEDITOR
        // config
        config = {};
        config.entities_latin = false;
        config.lauguage = 'vi';
        config.allowedContent = true;
        config.removeFormatAttributes = '';
        // config.height = '80vh';
        config.extraPlugins = 'autogrow';
        // Define changes to default configuration here.
        // For complete reference see:
        // http://docs.ckeditor.com/#!/api/CKEDITOR.config

        // The toolbar groups arrangement, optimized for two toolbar rows.
        config.toolbarGroups = [
            {name: 'clipboard', groups: ['clipboard', 'undo']},
            {name: 'editing', groups: ['find', 'selection', 'spellchecker']},
            {name: 'links'},
            {name: 'insert'},
            {name: 'forms'},
            {name: 'tools'},
            {name: 'document', groups: ['mode', 'document', 'doctools']},
            {name: 'others'},
            '/',
            {name: 'basicstyles', groups: ['basicstyles', 'cleanup']},
            {name: 'paragraph', groups: ['list', 'indent', 'blocks', 'align', 'bidi']},
            {name: 'styles'},
            {name: 'colors'},
            {name: 'about'}
        ];
        // Replace the <textarea id="editor1"> with a CKEditor 4
        // instance, using default configuration.
        CKEDITOR.replace('editor1', config);
        // =================== Jquery ===================
        $(document).ajaxComplete(function () {
            // =================== Fade btn update ===================
            $('.btnFade').fadeOut(0);
            var fadeCkeditor = CKEDITOR.instances['editor1'];
            fadeCkeditor.on('change', function () {
                $('.btnFade').fadeIn(200);
            });
            $('.fadeUpdate').on('keyup', function () {
                $('.btnFade').fadeIn(200);
            });
            // =================== Fade btn cmt ===================
            $('.btn_cmtFade').fadeOut(0);
            $('.txtUpdatecmt').on('keyup', function () {
                $('.btn_cmtFade').fadeIn(200);
            });
            // =================== bnt Like ===================
            $(".btn-like").click(function () {
                $(this).toggleClass("liked");
            });
            // =================== bnt Comment ===================
//            $('#post__footer').slideUp();
//            $(".btn-cmt").click(function () {
//                $(this).toggleClass("cmted");
//                $('#post__footer').slideToggle(300);
//            });
            // =================== Comment ===================
            $(document).on('click', '.btn-reply', function (eve) {
                eve.preventDefault();
                $(this).parent().parent().siblings('.comment-footer').slideToggle();
                eve.stopImmediatePropagation();
            });
            //=================== Write your comment ===================
            $(document).on('click', '.write_cmt', function (eve) {
                eve.preventDefault();
                $('html, body').animate({scrollTop: $('.post__footer-post-comment').offset().top - 100}, 500);
            });
            $(document).on('submit', '#editPostFrm', function () {
                editPost();
            });
        });
    </script>
    <script src="include/resources/js/Auth.js"></script>
</html>
<!-- Không tốt nghiệp, bay trường :Đ -->
