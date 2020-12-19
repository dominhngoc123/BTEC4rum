<%-- 
    Document   : postdetail
    Created on : Nov 6, 2020, 4:26:43 PM
    Author     : Ngoc Do Minh
--%>

<%@taglib prefix="s" uri="/struts-tags"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>BTEC FPT Forum - Edit Post Detail</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!--=============================================Favicon==================================================-->
        <link rel="icon" type="image/png" href="include/resources/img/logo_BTEC -head.png" />
        <!--==============================================Google font=================================================-->
        <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900" rel="stylesheet">
        <!--==========================================Fort Awesome=====================================================-->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css"
              integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
        <!--=========================================Bootstrap css======================================================-->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
        <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css"> -->
        <!--===============================================Style css================================================-->
        <link rel="stylesheet" href="include/resources/css/postdetail.css">
        <!--===========================================Css Base====================================================-->
        <link rel="stylesheet" href="include/resources/css/base.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" href="include/resources/css/editpost.css">
        <!--===============================================================================================-->

    </head>

    <body class="preloading">
        <!-- *loading -->
        <div class="load">
            <img src="include/resources/gif/loader.gif" alt="">
        </div>
        <!-- *header -->
        <header class="header sticky-top unselecttable" id="header">
            <div class="header_top">
                <div class="header_top-search-box">
                    <a class="header_top-search-box-search-btn" href="#">
                        <i class="fas fa-search header_top-search-box-small-icon"></i>
                    </a>
                    <input class="header_top-search-box-search-txt" type="text" name="" placeholder="Search..." />
                </div>
                <div class="header_top-user">
                    <div class="dropdown show dropdown_color">
                        <a class="btn btn-secondary btn-sm btn_user-color dropdown-toggle user_flex" href="#" role="button"
                           id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
                           style="box-shadow: none;">
                            <div class="header_top-user-bg"><img src="include/resources/img/pic.png" alt=""
                                                                 class="header_top-user-img"></div>
                            <span class="header_top-user-name">john doe</span>
                        </a>

                        <ul class="dropdown-menu dropdown-menu-right edit_dropdown-menu" aria-labelledby="dropdownMenuLink">
                            <a class="dropdown-item" href="index.html"><span
                                    class="fas fa-home dropdown-menu-icon-list"></span>Home</a>
                            <a class="dropdown-item dropdown-item-profile" data-toggle="modal"
                               data-target="#profile-modal"><span
                                    class="fas fa-user dropdown-menu-icon-list"></span>Prolife</a>
                            <a class="dropdown-item" href="#"><span
                                    class="fas fa-lock dropdown-menu-icon-list"></span>Password</a>
                            <a class="dropdown-item" href="managepost.html"><span
                                    class="fas fa-cog dropdown-menu-icon-list"></span>My
                                Posts</a>
                            <a class="dropdown-item" href="#"><span
                                    class="fas fa-sign-out-alt dropdown-menu-icon-list"></span>Log Out</a>
                        </ul>
                    </div>
                </div>
            </div>
            <nav class="header_bottom navbar navbar-expand-lg navbar-light ">
                <div class="container-fluid">
                    <a href="index.html"><img src="include/resources/img/Logo_BTEC.png" alt="" class="header_bottom-logo"></a>
                    <button class="navbar-toggler edit_navbar-toggler" type="button" data-toggle="collapse"
                            data-target="#navbarResponsive">
                        <span class="edit_navbar-toggler-icon"><i class="fas fa-stream"></i></span>
                    </button>
                    <div class="collapse navbar-collapse header_bottom-drop-down" id="navbarResponsive">
                        <ul class="header_bottom-main-nav navbar-nav ml-auto">
                            <li class="nav-item"><a href="forumIT.html">Information Technology</a></li>
                            <li class="nav-item"><a href="">Graphic design</a></li>
                            <li class="nav-item"><a href="">Business administration</a></li>
                            <li class="nav-item"><a href="test.html">Test</a></li>
                            <li class="nav-item"><a href="#">Other</a></li>
                            <li class="nav-item"><a href="#">About</a></li>
                        </ul>
                    </div>
                </div>
            </nav>
        </header>
        <!-- *Modal profile-->
        <div class="modal fade edit-modal-profile" id="profile-modal" tabindex="-1" role="dialog"
             aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
            <div class="modal-dialog modal-lg edit-modal-dialog-profile" role="document">
                <div class="modal-content edit-modal-content">
                    <div class="modal-header edit-modal-header">
                        <button type="button" class="edit-modal-show-more"><i class="fas fa-angle-double-right"
                                                                              onclick="change_profile()"></i></button>
                        <button type="button" class="close edit-close-profile" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body modal-body-profile">
                        <div class="modal-body-profile-left" id="modal-body-profile-left">
                            <div class="modal-body-profile-pic">
                                <img src="include/resources/img/pic.png" alt="">
                            </div>
                            <div class="modal-body-profile-name"><span>John Doe</span>
                            </div>
                            <div class="modal-body-profile-desc"><span>Developer & Designer</span></div>
                            <div class="modal-body-profile-sm">
                                <a href="#" class="fab fa-facebook-f"></a>
                                <a href="#" class="fab fa-twitter"></a>
                                <a href="#" class="fab fa-github"></a>
                                <a href="#" class="fab fa-youtube"></a>
                            </div>
                            <a href="#" class="modal-body-profile-contact-btn">Contact Me</a>
                        </div>
                        <div class="modal-body-profile-right" id="modal-body-profile-right">
                            <ul>
                                <li>
                                    <h6>Name</h6><span>John Doe</span>
                                </li>
                                <li>
                                    <h6>Date of birth</h6><span>07/10/2020</span>
                                </li>
                                <li>
                                    <h6>Gender</h6><span>Male</span>
                                </li>
                                <li>
                                    <h6>Address</h6><span>107, Nguyen Phong Sac, Cau Giay, Ha Noi.</span>
                                </li>
                                <li>
                                    <h6>Phone Number</h6><span>0967115432</span>
                                </li>
                                <li>
                                    <button type="button" data-dismiss="modal" data-toggle="modal"
                                            data-target="#update-profile-modal"><i class="fas fa-user-edit"></i></button>
                                </li>
                            </ul>
                        </div>
                    </div>
                    <div class="modal-footer  modal-footer-profile">
                        <div class="modal-footer-profile-numbers">
                            <div class="modal-footer-profile-item">
                                <span>120</span>
                                <span>Posts</span>
                            </div>
                            <div class="modal-footer-profile-border-card"></div>
                            <div class="modal-footer-profile-item">
                                <span>127</span>
                                <span>Scores</span>
                            </div>
                            <div class="modal-footer-profile-border-card"></div>
                            <div class="modal-footer-profile-item">
                                <span>120K</span>
                                <span>Other</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- *Modal update profile-->
        <div class="modal fade edit-modal-profile" id="update-profile-modal" tabindex="-1" role="dialog"
             aria-labelledby="exampleModalLongTitle" aria-hidden="true">
            <div class="modal-dialog  edit-modal-dialog-profile" role="document">
                <div class="modal-content edit-modal-content">
                    <div class="modal-header edit-modal-header">
                        <button type="button" class="close edit-close-profile" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body modal-body-profile modal-body-profile-update">
                        <form action="" method="POST">
                            <div class="form-row-update-profile">
                                <div class="form-row">
                                    <div class="col-md-5 mb-3">
                                        <label for="validationDefault01">Name</label>
                                        <input type="text" class="form-control form-control-sm" id="validationDefault01"
                                               value="" minlength="6" maxlength="50" required>
                                    </div>
                                    <div class="col-md-5 mb-3">
                                        <label for="validationDefault02">Date of birth</label>
                                        <input type="date" class="form-control form-control-sm" id="validationDefault02"
                                               value="" required>
                                    </div>
                                    <div class="col-md-2 mb-3">
                                        <label for="validationDefault03">Gender</label>
                                        <select class="form-control form-control-sm" id="validationDefault03" required>
                                            <option selected disabled value="">Choose...</option>
                                            <option value="">Male</option>
                                            <option value="">Female</option>
                                            <option value="">Other</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="col-md-5 mb-3">
                                        <label for="validationDefault04">Major</label>
                                        <select class="form-control form-control-sm" id="validationDefault04" required>
                                            <option selected disabled value="">Choose...</option>
                                            <option value="">Information Technology</option>
                                            <option value="">Graphic Design</option>
                                            <option value="">Business Administration</option>
                                        </select>
                                    </div>
                                    <div class="col-md-5 mb-3">
                                        <label for="validationDefault05">Phone Number</label>
                                        <input type="number" class="form-control form-control-sm" id="validationDefault05"
                                               min="100000000" onKeyPress="if (this.value.length == 10)
                                                    return false;">
                                    </div>
                                    <div class="col-md-2 mb-3">
                                        <label for="validationDefault07">Avatar</label>
                                        <input type="file" class="form-control form-control-sm form-control-file-avatar"
                                               id="validationDefault07">
                                    </div>
                                </div>
                                <div class="form-row ">
                                    <div class="col-md-12 mb-3">
                                        <label for="validationDefault06">Address</label>
                                        <input type="text" class="form-control form-control-sm" id="validationDefault06"
                                               minlength="10" maxlength="100">
                                    </div>
                                </div>
                            </div>
                            <div class="btn-action-update-profile">
                                <button class="btn btn-warning btn-jump btn-update-profile btn-update-profile-back"
                                        type="button" data-dismiss="modal" data-toggle="modal"
                                        data-target="#profile-modal">Back</button>
                                <button class="btn btn-success btn-jump btn-update-profile btn-update-profile-save"
                                        type="submit">Save</button>
                            </div>
                        </form>
                    </div>
                    <div class="modal-footer  modal-footer-profile">
                        <div class="modal-footer-profile-numbers">
                            <div class="modal-footer-profile-item">
                                <span>120</span>
                                <span>Posts</span>
                            </div>
                            <div class="modal-footer-profile-border-card"></div>
                            <div class="modal-footer-profile-item">
                                <span>127</span>
                                <span>Scores</span>
                            </div>
                            <div class="modal-footer-profile-border-card"></div>
                            <div class="modal-footer-profile-item">
                                <span>120K</span>
                                <span>Other</span>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- *Announcements -->
        <section class="announcements  unselecttable">
            <div class="announcements-left-site">
                <h6>ANNOUNCEMENTS</h6>
            </div>
            <div class="announcements-right-site">
                <p>"Your time is limited, so don't waste it living someone else's life" - Thời gian của bạn luôn có hạn,
                    vì
                    vậy đừng lãng phí nó để sống cuộc đời khác"</p>
            </div>
        </section>
        <!-- *Content -->
        <section class="container-fluid content">
            <!-- *Content Left-->
            <div class="content_left  unselecttable">
                <div class="table_left new-post">
                    <h2><i class=" far fa-newspaper"></i><span>New post</span></h2>
                    <table class="table_left-header">
                        <tbody>
                            <tr>
                                <td>Title</td>
                                <td>Date</td>
                                <td>Majors</td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="table_left-scroll-table">
                        <table class="table-striped table-hover">
                            <tbody></tbody>
                            <tr data-href="postdetail.html">
                                <td>Body 1 asda asd asd as d asd asd as asdasd as dasd asd asd asd
                                    asd</td>
                                <td>02/02/2020</td>
                                <td>IT</td>
                            </tr>
                            <tr data-href="postdetail.html">
                                <td>Body 1 asda asd asd as d asd asd as asdasd as dasd asd asd asd
                                    asd</td>
                                <td>02/02/2020</td>
                                <td>IT</td>
                            </tr>
                            <tr data-href="postdetail.html">
                                <td>Body 1 asda asd asd as d asd asd as asdasd as dasd asd asd asd
                                    asd</td>
                                <td>02/02/2020</td>
                                <td>IT</td>
                            </tr>
                            <tr data-href="postdetail.html">
                                <td>Body 1 asda asd asd as d asd asd as asdasd as dasd asd asd asd
                                    asd</td>
                                <td>02/02/2020</td>
                                <td>IT</td>
                            </tr>
                            <tr data-href="postdetail.html">
                                <td>Body 1 asda asd asd as d asd asd as asdasd as dasd asd asd asd
                                    asd</td>
                                <td>02/02/2020</td>
                                <td>IT</td>
                            </tr>
                            <tr data-href="postdetail.html">
                                <td>Body 1 asda asd asd as d asd asd as asdasd as dasd asd asd asd
                                    asd</td>
                                <td>02/02/2020</td>
                                <td>IT</td>
                            </tr>
                            <tr data-href="postdetail.html">
                                <td>Body 1 asda asd asd as d asd asd as asdasd as dasd asd asd asd
                                    asd</td>
                                <td>02/02/2020</td>
                                <td>IT</td>
                            </tr>
                            <tr data-href="postdetail.html">
                                <td>Body 1 asda asd asd as d asd asd as asdasd as dasd asd asd asd
                                    asd</td>
                                <td>02/02/2020</td>
                                <td>IT</td>
                            </tr>
                            <tr data-href="postdetail.html">
                                <td>Body 1 asda asd asd as d asd asd as asdasd as dasd asd asd asd
                                    asd</td>
                                <td>02/02/2020</td>
                                <td>IT</td>
                            </tr>
                            <tr data-href="postdetail.html">
                                <td>Body 1 asda asd asd as d asd asd as asdasd as dasd asd asd asd
                                    asd</td>
                                <td>02/02/2020</td>
                                <td>IT</td>
                            </tr>
                            <tr data-href="postdetail.html">
                                <td>Body 1 asda asd asd as d asd asd as asdasd as dasd asd asd asd
                                    asd</td>
                                <td>02/02/2020</td>
                                <td>IT</td>
                            </tr>
                            <tr data-href="postdetail.html">
                                <td>Body 1 asda asd asd as d asd asd as asdasd as dasd asd asd asd
                                    asd</td>
                                <td>02/02/2020</td>
                                <td>IT</td>
                            </tr>
                            <tr data-href="postdetail.html">
                                <td>Body 1 asda asd asd as d asd asd as asdasd as dasd asd asd asd
                                    asd</td>
                                <td>02/02/2020</td>
                                <td>IT</td>
                            </tr>
                        </table>
                    </div>

                </div>
                <div class="table_left top-score">
                    <h2><i class="fas fa-star-half-alt"></i><span>Top score</span></h2>
                    <table class="table_left-header table_left-header-top">
                        <tbody>
                            <tr>
                                <td>Name</td>
                                <td>Post</td>
                                <td>Score</td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="table_left-scroll-table table_left-scroll-table-top">
                        <table class="table-striped table-hover">
                            <tbody></tbody>
                            <tr data-href="#">
                                <td>Nguyen Van A asda asd asd as d asd asd as asdasd as dasd asd asd asd asd</td>
                                <td>2020</td>
                                <td>1000</td>
                            </tr>
                            <tr data-href="#">
                                <td>Nguyen Van A asda asd asd as d asd asd as asdasd as dasd asd asd asd asd</td>
                                <td>2020</td>
                                <td>1000</td>
                            </tr>
                            <tr data-href="#">
                                <td>Nguyen Van A asda asd asd as d asd asd as asdasd as dasd asd asd asd asd</td>
                                <td>2020</td>
                                <td>1000</td>
                            </tr>
                            <tr data-href="#">
                                <td>Nguyen Van A asda asd asd as d asd asd as asdasd as dasd asd asd asd asd</td>
                                <td>2020</td>
                                <td>1000</td>
                            </tr>
                            <tr data-href="#">
                                <td>Nguyen Van A asda asd asd as d asd asd as asdasd as dasd asd asd asd asd</td>
                                <td>2020</td>
                                <td>1000</td>
                            </tr>
                            <tr data-href="#">
                                <td>Nguyen Van A asda asd asd as d asd asd as asdasd as dasd asd asd asd asd</td>
                                <td>2020</td>
                                <td>1000</td>
                            </tr>
                            <tr data-href="#">
                                <td>Nguyen Van A asda asd asd as d asd asd as asdasd as dasd asd asd asd asd</td>
                                <td>2020</td>
                                <td>1000</td>
                            </tr>
                            <tr data-href="#">
                                <td>Nguyen Van A asda asd asd as d asd asd as asdasd as dasd asd asd asd asd</td>
                                <td>2020</td>
                                <td>1000</td>
                            </tr>
                            <tr data-href="#">
                                <td>Nguyen Van A asda asd asd as d asd asd as asdasd as dasd asd asd asd asd</td>
                                <td>2020</td>
                                <td>1000</td>
                            </tr>
                            <tr data-href="#">
                                <td>Nguyen Van A asda asd asd as d asd asd as asdasd as dasd asd asd asd asd</td>
                                <td>2020</td>
                                <td>1000</td>
                            </tr>

                        </table>
                    </div>
                </div>
            </div>
            <!-- *Content Right-->
            <div class="content_right">
                <!-- Post Container -->
                <div class="post-container">
                    <s:iterator value="listPost">
                        <s:if test="postID.length() == 10">
                            <input type="hidden" value="<s:property value="postID"/>" id="postID"/>
                            <input type="hidden" value="<s:property value="thread.threadID"/>" id="threadID"/>
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
                                                            <h6 class="comment-name by-author"><a href="#none" data-toggle="modal"
                                                                                                  data-target="#profile-modal"><s:property value="user.userFullName"/></a></h6>
                                                            <span class="posted-time">Posted on 10-FEB-2015 12:00</span>
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
                                                                          placeholder="Enter comment here..." required></textarea>
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
                                                        <span class="posted-time">Posted on DD-MM-YYYY HH:MM</span>
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
                                                                      placeholder="Enter comment here..." required></textarea>
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
        <footer class="footer">
            <div class="infor-box-footer">
                <ul>
                    <li>
                        <h5>Hà Nội</h5>
                    </li>
                    <li>
                        <p>Tầng 2, Tòa nhà Detech II, 107 Nguyễn Phong Sắc, Cầu Giấy, Hà Nội</p>
                    </li>
                    <li>
                        <p>Điện thoại: 0981 090 513</p>
                    </li>
                    <li>
                        <p>Email: btec.hn@fpt.edu.vn</p>
                    </li>
                    <li>
                        <p>Hotline: 0981 090 513</p>
                    </li>
                </ul>
            </div>

            <div class="infor-box-footer">
                <ul>
                    <li>
                        <h5>Đà Nẵng</h5>
                    </li>
                    <li>
                        <p>66B Võ Văn Tần, Quận Thanh Khê, TP.Đà Nẵng (Tòa nhà Savico Building)</p>
                    </li>
                    <li>
                        <p>Điện thoại: 0236 730 9268</p>
                    </li>
                    <li>
                        <p>Email: btec.dn@fpt.edu.vn</p>
                    </li>
                    <li>
                        <p>Hotline: 0905 888 535</p>
                    </li>
                </ul>
            </div>

            <div class="infor-box-footer">
                <ul>
                    <li>
                        <h5>
                            TP. Hồ Chí Minh
                        </h5>
                    </li>
                    <li>
                        <p>275 Nguyễn Văn Đậu - Quận Bình Thạnh - TP.Hồ Chí Minh</p>
                    </li>
                    <li>
                        <p>Điện thoại: 028 7300 9268</p>
                    </li>
                    <li>
                        <p>Email: btec.hcm@fpt.edu.vn</p>
                    </li>
                    <li>
                        <p>Hotline: 028 7300 9268 / 0942 25 68 25</p>
                    </li>
                </ul>
            </div>

            <div class="infor-box-footer">
                <ul>
                    <li>
                        <h5>Newsletter</h5>
                    </li>
                    <li>
                        <p class="footer-p-last">A rover wearing a fuzzy suit doesn’t alarm the real penguinsi</p>
                    </li>
                    <li>
                        <div class="footer-input-group">
                            <input type="text" class="footer-input-form-control" placeholder="Search for...">
                            <button><i class="fas fa-envelope btn-letter"></i></button>
                        </div>
                    </li>
                </ul>
            </div>
        </footer>
    </body>
    <!--=============================================Bootstrap js==================================================-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.0/js/materialize.min.js"></script>
    <script src="include/resources/js/base.js"></script>
    <script src="include/asset/ckeditor/ckeditor.js"></script>
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
        $(document).on("submit", "#updatePostForm", function ()
        {
            event.preventDefault();
            var postID = $("#postID").val();
            var postTitle = $(this).find(".updateTitle").val();
            var postContent = CKEDITOR.instances.editor1.getData();
            var threadID = $("#threadID").val();
            var accountEmail = $(this).children(".accountEmail").val();
            var tmp = encodeURI("AddNewPost?postTitle=" + postTitle + "&postContent=" + postContent + "&threadID=" + threadID + "&accountEmail=" + accountEmail + "&status=" + postID);
            window.location = tmp;
        });
    </script>
</html>