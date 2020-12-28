<%-- 
    Document   : postdetail
    Created on : Nov 6, 2020, 4:26:43 PM
    Author     : Ngoc Do Minh
--%>

<%@taglib prefix="s" uri="/struts-tags"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="include/auth.jsp"/>
    <jsp:include page="include/header.jsp"/>
    <!--===============================================Style css================================================-->
    <link rel="stylesheet" href="include/resources/css/postdetail.css">
    <!--===========================================Css Base====================================================-->
    <link rel="stylesheet" href="include/resources/css/base.css">
    <!--===============================================================================================-->
    <link rel="stylesheet" href="include/resources/css/editpost.css">
    <!--===============================================================================================-->

    <body class="preloading">
        <!-- *loading -->
        <jsp:include page="include/Preloading.jsp"/>
        <!-- *header -->
        <jsp:include page="include/ProfileModal.jsp"/>
        <!-- *Authentication -->
        <jsp:include page="include/auth.jsp"/>
        <!-- *Content -->
        <section class="container-fluid content">
            <!-- *Content Left-->
            <jsp:include page="include/LeftTable.jsp"/>
            <!-- *Content Right-->
            <div class="content_right">
                <input type="hidden" value="<s:property value="#session.accountEmail"/>" id="modifierEmail"/>
                <input type="hidden" id="userRole" value="<s:property value="#session.userRole"/>"/>
                <input type="hidden" id="categoryModerator"/>
                <!-- Post Container -->
                <div class="post-container">
                    <s:iterator value="listPost">
                        <s:if test="postID.length() == 10">                            
                            <input type="hidden" value="<s:property value="postID"/>" id="postID"/>
                            <input type="hidden" value="<s:property value="thread.threadID"/>" id="threadID"/>
                            <input type="hidden" id="categoryID" value="<s:property value="thread.category.categoryID"/>"/>
                            <form id="updatePostForm">
                                <!-- Post Header -->
                                <input type="hidden" value="<s:property value="user.accountEmail"/>" class="accountEmail"/>
                                <div class="post__header container">
                                    <div class="post__header-title">                                        
                                        <textarea class="form-control auto-textarea updateTitle post-inp-color post-inp-edit fadeUpdate"
                                                  placeholder="Enter title here..." aria-label="With textarea"
                                                  style="text-rendering: auto;" required><s:property value="postTitle"/></textarea>
                                    </div>
                                    <div class="post__header-action">
                                        <div class="btn-group">
                                            <div class="btn-group" role="group">
                                                <button type="button" class="btn-jump btn-post__header-action dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
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
                                <!-- Post Body -->
                                <div class="post__body container">
                                    <div class="post__body-author">
                                        <div class="post__body-author-bg-img">
                                            <a data-toggle="modal" data-target="#profile-modal"><img src="<s:property value="user.userAvatar"/>" alt=""></a>
                                        </div>
                                        <ul class="post__body-author-text">
                                            <li><span class="post__body-author-name" data-toggle="modal"
                                                      data-target="#profile-modal"><s:property value="user.userFullName"/></span></li>
                                            <li><span class="post__body-author-time">Posted on
                                                    <span>10-FEB-2015</span> <span>12:00</span></span></li>
                                        </ul>
                                    </div>
                                    <div class="post__body-content">
                                        <textarea name="" id="editor1" placeholder="Type text content here..." required><s:property value="postContent" escape="false"/></textarea>
                                    </div>
                                    <br>
                                    <button class="btn btn-jump btn-post btn-shadow btnFade">Update</button>
                                    <div class="post__body-action unselecttable">
                                        <div class="post__body-action-like">
                                            <button type="button" class="btn-like btn-jump"><i class="far fa-thumbs-up"></i>
                                                <span>Like</span> <span>12</span></button>
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
                            </form>
                            <div class="post__footer container" id="post__footer">
                                <div class="post__footer-post-comment">
                                    <div class="cmt__action-container">
                                        <div class="cmt__action-container-avatar">
                                            <img class="cmt__action-avatar" src="<s:property value="#session.userAvatar"/>" alt="">
                                        </div>
                                        <form action="" method="POST" class="cmt__action-post-area">
                                            <div class="cmt__action-post-area-header">
                                                <textarea name="" class="form-control auto-textarea edit-txta"
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
                                                    <div class="comment-avatar"><img src="<s:property value="user.userAvatar"/>" alt=""></div>
                                                    <!-- Contenedor del Comentario -->
                                                    <div class="comment-box">
                                                        <div class="comment-head">
                                                            <h6 class="comment-name by-author"><a href="#none" data-toggle="modal" data-target="#profile-modal"><s:property value="user.userFullName"/></a></h6>
                                                            <span class="posted-time"><s:property value="approvedDate"/></span>
                                                            <div class="comment-head-more-action">
                                                                <button type="button"
                                                                        class="btn-jump btn-post__header-action dropdown-toggle dropdown-toggle-split"
                                                                        data-toggle="dropdown" aria-haspopup="true"
                                                                        aria-expanded="false">
                                                                    <span class="sr-only">Toggle Dropleft</span>
                                                                    <i class="fas fa-ellipsis-v"></i>
                                                                </button>
                                                                <div class="dropdown-menu edit-dropdown-menu">
                                                                    <a class="dropdown-item edit-dropdown-item" href="#">Delete</a>
                                                                    <a class="dropdown-item edit-dropdown-item" href="#">Report</a>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="comment-content">
                                                            <form action="" method="post">
                                                                <textarea type="text" class="txtUpdatecmt"
                                                                          placeholder="Enter comment here..." required><s:property value="postContent"/></textarea>
                                                                <br>
                                                                <button type="submit"
                                                                        class="btn-jump btn-shadow btnUpdatecmt">update</button>
                                                                <br>
                                                            </form>
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
                                                                <form action="" method="post">
                                                                    <textarea class="form-control auto-textarea" name=""
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
                                                        <span class="posted-time"><s:property value="approvedDate"/></span>
                                                        <div class="comment-head-more-action">
                                                            <button type="button"
                                                                    class="btn-jump btn-post__header-action dropdown-toggle dropdown-toggle-split"
                                                                    data-toggle="dropdown" aria-haspopup="true"
                                                                    aria-expanded="false">
                                                                <span class="sr-only">Toggle Dropleft</span>
                                                                <i class="fas fa-ellipsis-v"></i>
                                                            </button>
                                                            <div class="dropdown-menu edit-dropdown-menu">
                                                                <a class="dropdown-item edit-dropdown-item"
                                                                   href="#">Delete</a>
                                                                <a class="dropdown-item edit-dropdown-item"
                                                                   href="#">Report</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="comment-content">
                                                        <form action="" method="post">
                                                            <textarea type="text" class="txtUpdatecmt"
                                                                      placeholder="Enter comment here..." required><s:property value="postContent"/></textarea>
                                                            <br>
                                                            <button type="submit"
                                                                    class="btn-jump btn-shadow btnUpdatecmt">update</button>
                                                            <br>
                                                        </form>
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
                                                            <form action="" method="post">
                                                                <textarea class="form-control auto-textarea" name=""
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
        </section>
        <!-- *scrollTop -->
        <div class="scrollTop">
            <a href="#" class="sclTop"><i class="far fa-arrow-alt-circle-up"></i></a>
        </div>
        <!-- *Footer -->
        <script src="include/resources/js/LogOut.js"></script>
        <!-- *Footer -->
        <jsp:include page="include/footer.jsp"/>
    </body>
    <!--=============================================Bootstrap js==================================================-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.0/js/materialize.min.js"></script>
    <script src="include/resources/js/base.js"></script>
    <script src="include/asset/ckeditor/ckeditor.js"></script>
    <script src="include/resources/js/Auth.js"></script>
    <script type="text/javascript">
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

            $('.btnUpdatecmt').fadeOut(0);
            $('.txtUpdatecmt').on('keyup', function () {
                $(this).next().next().fadeIn(200);
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



        // $(document).on('click', '.btn-send', function (eve) {
        //     var targetObject = $(this).parent().parent().parent().parent().parent();
        //     //console.log(targetObject);
        //     var reply_text = $(this).parent().siblings('textarea').val();

        //     if ($.trim(reply_text) == " " || $.trim(reply_text) == "") {
        //         alert("insert comment");
        //     } else {
        //         if ($(targetObject).hasClass("comment-main-level")) {
        //             if ($(targetObject).siblings('.comments-list.reply-list')) {
        //                 element_prepend = '<li> <div class="comment-avatar"><img alt="" src="http://dummyimage.com/60"></div><div class="comment-box"> <div class="comment-head"> <h6 class="comment-name"><a href="#">Lorena Rojero</a></h6> <span class="posted-time">Posted on DD-MM-YYYY HH:MM</span> <i class="fa fa-reply"></i> <i class="fa fa-heart"></i> </div> <div class="comment-content">' + reply_text + ' <div class="comment-open"> <a class="btn-reply"> <i class="fa fa-reply"></i> </a> </div> </div> <div class="comment-footer"> <div class="comment-form"> <textarea id="" name="" class="form-control"></textarea> <div class="pull-right send-button"> <a class="btn-send">send</a> </div> </div> </div> </div> </li>';
        //                 $(targetObject).siblings('.comments-list.reply-list').prepend(element_prepend);
        //             }
        //         }
        //     }
        // });

    </script>

    <script type="text/javascript">
        $(document).ready(function () {
            var userRole = $("#userRole").val();
            if (userRole == 2)
            {
                var categoryID = $("#categoryID").val();
                $.ajax({
                    type: "GET",
                    url: "getModerator?categoryID=" + categoryID,
                    success: function (data)
                    {
                        var accountEmail = data['category'].user.accountEmail;
                        $("#categoryModerator").val(accountEmail);
                    }
                });
            }
        });
        $(document).on("submit", "#updatePostForm", function ()
        {
            event.preventDefault();
            var tmp;
            var postID = $("#postID").val();
            var postTitle = $(this).find(".updateTitle").val();
            var postContent = CKEDITOR.instances.editor1.getData();
            var threadID = $("#threadID").val();
            var accountEmail = $(this).children(".accountEmail").val();
            var userRole = $("#userRole").val();
            var categoryModerator = $("#categoryModerator").val();
            var modifier = $("#modifierEmail").val();
            if (userRole == 1 || ((userRole == 2) && (categoryModerator == modifier)))
            {
                tmp = encodeURI("Admin/updatePost?postTitle=" + postTitle + "&postContent=" + postContent + "&threadID=" + threadID + "&postID=" + postID);
            } else
            {
                tmp = encodeURI("AddNewPost?postTitle=" + postTitle + "&postContent=" + postContent + "&threadID=" + threadID + "&accountEmail=" + accountEmail + "&status=" + postID);
            }
            window.location = tmp;
        });
    </script>
    <script src="include/resources/js/Auth.js"></script>
</html>