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
                <input type="hidden" value="<s:property value="postID"/>" id="postID"/>
                <div class="post-container" id="content">
                    <!-- Post Header -->
                    <!-- Post Header -->
                    <input type="hidden" id="accountEmail" value="<s:property value="#session.accountEmail"/>"/>
                    <s:iterator value="listPost">
                        <s:if test="postID.length() == 10">
                            <div class="post__header container">
                                <div class="post__header-title">
                                    <input type="hidden" id="threadID" value="<s:property value="thread.threadID"/>"/>
                                    <input type="hidden" value="<s:property value="posstID"/>" id="postID"/>
                                    <h4 id="postTitle"><s:property value="postTitle"/></h4>
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
                                                <s:if test="(#session.userRole == 1)||(#session.accountEmail == user.accountEmail)"><a class="dropdown-item edit-dropdown-item" href="#">Delete</a><button value="<s:property value="postID"/>" class="dropdown-item edit-dropdown-item editPost">Update</button></s:if>
                                                <a class="dropdown-item edit-dropdown-item" href="#">Report</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!-- Post Body -->
                            <div class="post__body container">
                                <div class="post__body-author">
                                    <div class="post__body-author-bg-img">
                                        <a data-toggle="modal" data-target="#profile-modal"><img src="<s:property value="user.userAvatar"/>"
                                                                                                 alt=""></a>
                                    </div>
                                    <ul class="post__body-author-text">
                                        <li><span class="post__body-author-name" data-toggle="modal"
                                                  data-target="#profile-modal"><s:property value="user.userFullName"/></span></li>
                                        <li><span class="post__body-author-time">Posted on&nbsp; <s:property value="approvedDate"/></span></li>
                                    </ul>
                                </div>
                                <div class="post__body-content" id="postContent">
                                    <s:property value="postContent" escape="false"/>
                                </div>
                                <div class="post__body-action unselecttable">
                                    <div class="post__body-action-like">
                                        <button type="button" class="btn-like btn-jump"><i class="far fa-thumbs-up"></i>
                                            <span>Like</span><span>12</span></button>
                                    </div>
                                    <div class="post__body-action-comment">
                                        <button type="button" class="btn-cmt btn-jump"><i class="far fa-comment-dots"></i>
                                            <span>Comment</span>
                                            <span><s:property value="listPost.size() - 1"/></span></button>
                                    </div>
                                    <div class="post__body-action-share">
                                        <button type="button" class="btn-jump"><i class="far fa-share-square"></i>
                                            <span>Share</span></button>
                                    </div>
                                </div>
                            </div>
                            <div class="post__footer container" id="post__footer">
                                <div class="post__footer-post-comment">
                                    <div class="cmt__action-container">
                                        <div class="cmt__action-container-avatar">
                                            <img class="cmt__action-avatar" src="<s:property value="#session.userAvatar"/>" alt="">
                                        </div>
                                        <form onsubmit="postComment('<s:property value="postID"/>');" method="POST" class="cmt__action-post-area">
                                            <div class="cmt__action-post-area-header">
                                                <textarea name="" id="CMT<s:property value="postID"/>"  class="form-control auto-textarea edit-txta"
                                                          placeholder="Write your comment here..." required></textarea>
                                            </div>
                                            <div class=" cmt__action-post-area-bottom">
                                                <button type="submit" class="btn-post-cmt btn-jump">Post</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <div class="post__footer-comment">
                                    <div class="comments-container">
                                    </s:if>
                                    <s:elseif test="postID.length() == 12">
                                        </ul>
                                        </li>
                                        <ul id="comments-list" class="comments-list">
                                            <li>
                                                <div class="comment-main-level">
                                                    <!-- Avatar -->
                                                    <div class="comment-avatar"><img src="<s:property value="user.userAvatar"/>"></div>
                                                    <!-- Contenedor del Comentario -->
                                                    <div class="comment-box">
                                                        <div class="comment-head">
                                                            <h6 class="comment-name by-author"><a href="#none" data-toggle="modal"
                                                                                                  data-target="#profile-modal"><s:property value="user.userFullName"/></a></h6>
                                                            <span class="posted-time">Posted on&nbsp; <s:property value="approvedDate"/></span>
                                                            <div class="comment-head-more-action">
                                                                <button type="button"
                                                                        class="btn-jump btn-post__header-action dropdown-toggle dropdown-toggle-split"
                                                                        data-toggle="dropdown" aria-haspopup="true"
                                                                        aria-expanded="false">
                                                                    <span class="sr-only">Toggle Dropleft</span>
                                                                    <i class="fas fa-ellipsis-v"></i>
                                                                </button>
                                                                <div class="dropdown-menu edit-dropdown-menu">
                                                                    <s:if test="(#session.userRole == 1)||(#session.accountEmail == user.accountEmail)"><a class="dropdown-item edit-dropdown-item" href="#">Delete</a><button value="<s:property value="postID"/>" class="dropdown-item edit-dropdown-item editComment">Update</button></s:if>
                                                                    <a class="dropdown-item edit-dropdown-item" href="#">Report</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="comment-content">
                                                            <p id="<s:property value="postID"/>"><s:property value="postContent" escape="false"/></p>
                                                            <div class="comment-open">
                                                                <a href="#none" class="btn-like btn-like-ml"
                                                                   style="color: #B2BEC3;"><i class="far fa-thumbs-up"></i>
                                                                    <span>2</span></a>
                                                                <a class="btn-reply">
                                                                    <i class="fa fa-reply"></i>
                                                                </a>
                                                            </div>
                                                        </div>
                                                        <div class="comment-footer">
                                                            <div class="comment-form">
                                                                <form onsubmit="postComment('<s:property value="postID"/>', '<s:property value="user.accountEmail"/>')" method="post">
                                                                    <textarea id="CMT<s:property value="postID"/>" class="form-control auto-textarea" name=""
                                                                              placeholder="Write your comment here" required></textarea>
                                                                    <div class="pull-right send-button">
                                                                        <button type="submit"
                                                                                class="btn-send btn-jump">send</button>
                                                                    </div>
                                                                </form>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <ul class="comments-list reply-list">
                                                </s:elseif>
                                                <s:elseif test="postID.length() == 14">
                                            </li>
                                            <li>
                                                <div class="comment-avatar"><img src="<s:property value="user.userAvatar"/>" alt="">
                                                </div>
                                                <div class="comment-box">
                                                    <div class="comment-head">
                                                        <h6 class="comment-name"><a href="#"><s:property value="user.userFullName"/></a></h6>
                                                        <span class="posted-time">Posted on&nbsp; <s:property value="approvedDate"/></span>
                                                        <div class="comment-head-more-action">
                                                            <button type="button"
                                                                    class="btn-jump btn-post__header-action dropdown-toggle dropdown-toggle-split"
                                                                    data-toggle="dropdown" aria-haspopup="true"
                                                                    aria-expanded="false">
                                                                <span class="sr-only">Toggle Dropleft</span>
                                                                <i class="fas fa-ellipsis-v"></i>
                                                            </button>
                                                            <div class="dropdown-menu edit-dropdown-menu">
                                                                
                                                                <s:if test="(#session.userRole == 1)||(#session.accountEmail == user.accountEmail)"><a class="dropdown-item edit-dropdown-item" href="#">Delete</a><button value="<s:property value="postID"/>" class="dropdown-item edit-dropdown-item editComment">Update</button></s:if>
                                                                <a class="dropdown-item edit-dropdown-item"
                                                                   href="#">Report</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="comment-content">
                                                        <s:property value="postContent" escape="false"/>
                                                        <div class="comment-open">
                                                            <a href="#none" class="btn-like btn-like-ml"
                                                               style="color: #B2BEC3;"><i class="far fa-thumbs-up"></i>
                                                                <span>2</span></a>
                                                            <a class="btn-reply">
                                                                <i class="fa fa-reply"></i>
                                                            </a>
                                                        </div>
                                                    </div>
                                                    <div class="comment-footer">
                                                        <div class="comment-form">
                                                            <form onsubmit="postComment('<s:property value="postID"/>', '<s:property value="user.accountEmail"/>')" method="post">
                                                                <textarea id="CMT<s:property value="postID"/>" class="form-control auto-textarea" name=""
                                                                          placeholder="Write your comment here"
                                                                          required></textarea>
                                                                <div class="pull-right send-button">
                                                                    <button type="submit"
                                                                            class="btn-send btn-jump">send</button>
                                                                </div>
                                                            </form>
                                                        </div>
                                                    </div>
                                                </div>
                                            </s:elseif>
                                        </s:iterator>
                                    </li>
                                </ul>
                                </li>
                                </ul>
                            </div>
                        </div>
                        <div class="post__footer-write-cmt">
                            <a href="#" class="write_cmt unselecttable">Write your comment</a>
                        </div>
                    </div>
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
                        <form action="" method="post">
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
                        <form action="" method="post">
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
    <script type="text/javascript">
                                                                $(".editPost").click(function () {
                                                                    var postID = $(this).val();
                                                                    var postContent = $("#postContent").attr("data-value");
                                                                    $.ajax({
                                                                        type: "POST",
                                                                        url: "getSpecificPost?postID=" + postID,
                                                                        success: function (data) {
                                                                            $("#editPostTitle").html(data['post'].postTitle);
                                                                            $(".editUserAvatar").attr("src", data['post'].user.userAvatar);
                                                                            $(".editUserName").html(data['post'].user.userFullName);
                                                                            $(".approvedDate").html(data['post'].approvedDate);
                                                                            CKEDITOR.instances["editor1"].setData(postContent);
                                                                            $("#modalEdit_post").modal("show");
                                                                        }
                                                                    });
                                                                });
                                                                $(".editComment").click(function () {
                                                                    var postID = $(this).val();
                                                                    $.ajax({
                                                                        type: "POST",
                                                                        url: "getSpecificPost?postID=" + postID,
                                                                        success: function (data) {
                                                                            $("#cmtAuthor").html(data['post'].user.userFullName);
                                                                            $("#cmtApprovedDate").html(data['post'].approvedDate);
                                                                            $("#cmtContent").html(data['post'].postContent);
                                                                            $("#modalEdit_cmt").modal("show");
                                                                        }
                                                                    });
                                                                });
    </script>
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
                                                                            window.location = "getDetailPost?postID=" + postID;
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
                                                                $(document).ready(function () {
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
                                                                    $('#post__footer').slideUp();
                                                                    $(".btn-cmt").click(function () {
                                                                        $(this).toggleClass("cmted");
                                                                        $('#post__footer').slideToggle(1000);
                                                                    });
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

                                                                });
    </script>
    <script src="include/resources/js/Auth.js"></script>
</html>
<!-- Không tốt nghiệp, bay trường :Đ -->
