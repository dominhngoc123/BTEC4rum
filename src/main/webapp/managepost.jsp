<%-- 
    Document   : managepost
    Created on : Dec 12, 2020, 10:45:54 AM
    Author     : Ngoc Do Minh
--%>

<%@taglib prefix="s" uri="/struts-tags"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>BTEC FPT Forum - Manage Post</title>
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
        <!--===============================================Style css================================================-->
        <link rel="stylesheet" href="include/resources/css/managepost.css">
        <!--===========================================Css Base====================================================-->
        <link rel="stylesheet" href="include/resources/css/base.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
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
            <div class="content_right  unselecttable">
                <div class="row">
                    <div id="admin" class="col s12">
                        <div class="card material-table">
                            <div class="table-header table-header-content-right">
                                <span class="table-title"><a href="#none"><i class="fas fa-tasks"></i> Manage
                                        Post</a></span>
                                <div class="actions">
                                    <a href="post.html" class="modal-trigger waves-effect btn-flat nopadding"><i
                                            class="material-icons material-icons-header">post_add</i></a>
                                    <a href="#none" class="search-toggle waves-effect btn-flat nopadding"><i
                                            class="material-icons material-icons-header">search</i></a>
                                </div>
                            </div>
                            <table id="datatable" class="datatable table-striped">
                                <thead>
                                    <tr>
                                        <th style="width: 40%;">Post Title</th>
                                        <!--<th style="width: 15%;">Topic</th>-->
                                        <th style="width: 15%;">Thead</th>
                                        <th style="width: 15%;">Posted by</th>
                                        <th style="width: 15%;">Date</th>
                                        <th style="width: 7.5%;">Update</th>
                                        <th style="width: 7.5%;">Delete</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <s:iterator value="listPost">
                                        <tr>
                                        <td><s:property value="postTitle"/></td>
                                            <td><s:property value="thread.threadName"/></td>
                                            <td><s:property value="user.userFullName"/></td>
                                            <td><s:property value="approvedDate"/></td>
                                            <td><button type="button" class="btn btn-jump"><i
                                                        class="fas fa-wrench btn-update"></i></button>
                                            </td>
                                            <td><button type="button" class="btn btn-jump"><i
                                                        class="far fa-trash-alt btn-del"></i></button>
                                            </td>
                                        </tr>
                                    </s:iterator>
                                </tbody>
                            </table>
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
    <script src="https://cdn.datatables.net/1.10.7/js/jquery.dataTables.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.0/js/materialize.min.js"></script>
    <script src="include/resources/js/base.js"></script>
    <script type="text/javascript">
                                                // table content right
                                                (function (window, document, undefined) {

                                                    var factory = function ($, DataTable) {
                                                        "use strict";

                                                        $('.search-toggle').click(function () {
                                                            if ($('.hiddensearch').css('display') == 'none')
                                                                $('.hiddensearch').slideDown();
                                                            else
                                                                $('.hiddensearch').slideUp();
                                                        });

                                                        /* Set the defaults for DataTables initialisation */
                                                        $.extend(true, DataTable.defaults, {
                                                            dom: "<'hiddensearch'f'>" +
                                                                    "tr" +
                                                                    "<'table-footer'lip'>",
                                                            renderer: 'material'
                                                        });

                                                        /* Default class modification */
                                                        $.extend(DataTable.ext.classes, {
                                                            sWrapper: "dataTables_wrapper",
                                                            sFilterInput: "form-control input-sm",
                                                            sLengthSelect: "form-control input-sm"
                                                        });

                                                        /* Bootstrap paging button renderer */
                                                        DataTable.ext.renderer.pageButton.material = function (settings, host, idx, buttons, page, pages) {
                                                            var api = new DataTable.Api(settings);
                                                            var classes = settings.oClasses;
                                                            var lang = settings.oLanguage.oPaginate;
                                                            var btnDisplay, btnClass, counter = 0;

                                                            var attach = function (container, buttons) {
                                                                var i, ien, node, button;
                                                                var clickHandler = function (e) {
                                                                    e.preventDefault();
                                                                    if (!$(e.currentTarget).hasClass('disabled')) {
                                                                        api.page(e.data.action).draw(false);
                                                                    }
                                                                };

                                                                for (i = 0, ien = buttons.length; i < ien; i++) {
                                                                    button = buttons[i];

                                                                    if ($.isArray(button)) {
                                                                        attach(container, button);
                                                                    } else {
                                                                        btnDisplay = '';
                                                                        btnClass = '';

                                                                        switch (button) {

                                                                            case 'first':
                                                                                btnDisplay = lang.sFirst;
                                                                                btnClass = button + (page > 0 ?
                                                                                        '' : ' disabled');
                                                                                break;

                                                                            case 'previous':
                                                                                btnDisplay = '<i class="material-icons">chevron_left</i>';
                                                                                btnClass = button + (page > 0 ?
                                                                                        '' : ' disabled');
                                                                                break;

                                                                            case 'next':
                                                                                btnDisplay = '<i class="material-icons">chevron_right</i>';
                                                                                btnClass = button + (page < pages - 1 ?
                                                                                        '' : ' disabled');
                                                                                break;

                                                                            case 'last':
                                                                                btnDisplay = lang.sLast;
                                                                                btnClass = button + (page < pages - 1 ?
                                                                                        '' : ' disabled');
                                                                                break;

                                                                        }

                                                                        if (btnDisplay) {
                                                                            node = $('<li>', {
                                                                                'class': classes.sPageButton + ' ' + btnClass,
                                                                                'id': idx === 0 && typeof button === 'string' ?
                                                                                        settings.sTableId + '_' + button : null
                                                                            })
                                                                                    .append($('<a>', {
                                                                                        'href': '#',
                                                                                        'aria-controls': settings.sTableId,
                                                                                        'data-dt-idx': counter,
                                                                                        'tabindex': settings.iTabIndex
                                                                                    })
                                                                                            .html(btnDisplay)
                                                                                            )
                                                                                    .appendTo(container);

                                                                            settings.oApi._fnBindAction(
                                                                                    node, {
                                                                                        action: button
                                                                                    }, clickHandler
                                                                                    );

                                                                            counter++;
                                                                        }
                                                                    }
                                                                }
                                                            };

                                                            // IE9 throws an 'unknown error' if document.activeElement is used
                                                            // inside an iframe or frame. 
                                                            var activeEl;

                                                            try {
                                                                // Because this approach is destroying and recreating the paging
                                                                // elements, focus is lost on the select button which is bad for
                                                                // accessibility. So we want to restore focus once the draw has
                                                                // completed
                                                                activeEl = $(document.activeElement).data('dt-idx');
                                                            } catch (e) {
                                                            }

                                                            attach(
                                                                    $(host).empty().html('<ul class="material-pagination"/>').children('ul'),
                                                                    buttons
                                                                    );

                                                            if (activeEl) {
                                                                $(host).find('[data-dt-idx=' + activeEl + ']').focus();
                                                            }
                                                        };

                                                        /*
                                                         * TableTools Bootstrap compatibility
                                                         * Required TableTools 2.1+
                                                         */
                                                        if (DataTable.TableTools) {
                                                            // Set the classes that TableTools uses to something suitable for Bootstrap
                                                            $.extend(true, DataTable.TableTools.classes, {
                                                                "container": "DTTT btn-group",
                                                                "buttons": {
                                                                    "normal": "btn btn-default",
                                                                    "disabled": "disabled"
                                                                },
                                                                "collection": {
                                                                    "container": "DTTT_dropdown dropdown-menu",
                                                                    "buttons": {
                                                                        "normal": "",
                                                                        "disabled": "disabled"
                                                                    }
                                                                },
                                                                "print": {
                                                                    "info": "DTTT_print_info"
                                                                },
                                                                "select": {
                                                                    "row": "active"
                                                                }
                                                            });

                                                            // Have the collection use a material compatible drop down
                                                            $.extend(true, DataTable.TableTools.DEFAULTS.oTags, {
                                                                "collection": {
                                                                    "container": "ul",
                                                                    "button": "li",
                                                                    "liner": "a"
                                                                }
                                                            });
                                                        }

                                                    }; // /factory

                                                    // Define as an AMD module if possible
                                                    if (typeof define === 'function' && define.amd) {
                                                        define(['jquery', 'datatables'], factory);
                                                    } else if (typeof exports === 'object') {
                                                        // Node/CommonJS
                                                        factory(require('jquery'), require('datatables'));
                                                    } else if (jQuery) {
                                                        // Otherwise simply initialise as normal, stopping multiple evaluation
                                                        factory(jQuery, jQuery.fn.dataTable);
                                                    }

                                                })(window, document);

                                                $(document).ready(function () {
                                                    $('#datatable').dataTable({
                                                        "oLanguage": {
                                                            "sStripClasses": "",
                                                            "sSearch": "",
                                                            "sSearchPlaceholder": "Enter Keywords Here",
                                                            "sInfo": "_START_ -_END_ of _TOTAL_",
                                                            "sLengthMenu": '<span>Rows per page:</span><select class="browser-default">' +
                                                                    '<option value="10">10</option>' +
                                                                    '<option value="20">20</option>' +
                                                                    '<option value="30">30</option>' +
                                                                    '<option value="40">40</option>' +
                                                                    '<option value="50">50</option>' +
                                                                    '<option value="-1">All</option>' +
                                                                    '</select></div>'
                                                        },
                                                        bAutoWidth: false
                                                    });
                                                });
                                                // =================================Table rows clickable====================================
                                                document.addEventListener("DOMContentLoaded", () => {
                                                    const rows = document.querySelectorAll("td[data-href]")
                                                    rows.forEach(row => {
                                                        row.addEventListener("click", () => {
                                                            window.location.href = row.dataset.href;
                                                        });
                                                    });
                                                });
    </script>

</html>
