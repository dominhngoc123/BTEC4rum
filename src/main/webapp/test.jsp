<%-- 
    Document   : test
    Created on : Mar 20, 2021, 4:42:35 PM
    Author     : Ngoc Do Minh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BTEC FPT Forum - Test</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--=============================================Favicon==================================================-->
    <link rel="icon" type="image/png" href="resources/img/logo_BTEC -head.png" />
    <!--==============================================Google font=================================================-->
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900" rel="stylesheet">
    <!--==========================================Fort Awesome=====================================================-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css"
        integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
    <!--=========================================Bootstrap css======================================================-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!--===============================================Style css================================================-->
    <link rel="stylesheet" href="resources/css/test.css">
    <!--===========================================Css Base====================================================-->
    <link rel="stylesheet" href="include/resources/css/base.css">
    <!--===============================================================================================-->

</head>

<body class="preloading">
    <!-- *loading -->
    <div class="load">
        <img src="resources/gif/loader.gif" alt="">
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
                        <div class="header_top-user-bg"><img src="resources/img/pic.png" alt=""
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
                <a href="index.html"><img src="resources/img/Logo_BTEC.png" alt="" class="header_bottom-logo"></a>
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
                            <img src="/resources/img/pic.png" alt="">
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
                                    <label for="validationDefault07">Avatar</label>
                                    <input type="file" class="form-control form-control-sm form-control-file-avatar"
                                        id="validationDefault07">
                                </div>
                                <div class="col-md-5 mb-3">
                                    <label for="validationDefault04">Major</label>
                                    <input type="text" class="form-control form-control-sm" id="validationDefault04"
                                        value="" minlength="6" maxlength="50" required>
                                </div>
                                <div class="col-md-2 mb-3">
                                    <label for="validationDefault05">Phone</label>
                                    <input type="number" class="form-control form-control-sm" id="validationDefault05"
                                        min="100000000" onKeyPress="if(this.value.length==10) return false;">
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
    <section class="announcements unselecttable">
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
    <section class="main-content unselecttable">
        <div class="test-content">
            <nav class="navigation">
                <!-- *nav test -->
                <div class="main-menu-test">
                    <section class="test-links">
                        <ul>
                            <li class="menu-item-test menu-item-test-IT" data-toggle="modal" data-target="#modalIT"><i
                                    class="fas fa-code"></i><span>Information Technology</span></li>
                            <li class="menu-item-test menu-item-test-GD" data-toggle="modal" data-target="#modalGD"><i
                                    class="fas fa-paint-brush"></i><span>Graphic
                                    Design</span></li>
                            <li class="menu-item-test menu-item-test-BA" data-toggle="modal" data-target="#modalBA"><i
                                    class="fas fa-chart-bar"></i><span>Business
                                    Administration</span></li>
                        </ul>
                    </section>
                </div>
                <!-- Modal Select IT Test -->
                <div class="modal_select-IT">
                    <div class="modal fade" id="modalIT">
                        <div class="modal-dialog anm-modal" role="document">
                            <div class="modal-content">
                                <form action="" method="post">
                                    <div class="modal-header">
                                        <h5 class="modal-title modal-title-IT">Information Technology Test</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-12">
                                                    <div class="input-group mb-3">
                                                        <div class="input-group-prepend">
                                                            <label class="input-group-text"
                                                                for="inputGroupSelect01">Category</label>
                                                        </div>
                                                        <select class="custom-select" id="inputGroupSelect01" required>
                                                            <option selected disabled value="">Choose...</option>
                                                            <option value="">Java</option>
                                                            <option value="">PHP</option>
                                                            <option value="">.Net</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-12">
                                                    <div class="input-group mb-3">
                                                        <div class="input-group-prepend">
                                                            <label class="input-group-text"
                                                                for="inputGroupSelect01">Thread</label>
                                                        </div>
                                                        <select class="custom-select" id="inputGroupSelect02" required>
                                                            <option selected disabled value="">Choose...</option>
                                                            <option value="">OOP</option>
                                                            <option value="">Framework</option>
                                                            <option value="">Other</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-12">
                                                    <div class="input-group mb-3">
                                                        <div class="input-group-prepend">
                                                            <label class="input-group-text"
                                                                for="inputGroupSelect01">Lever</label>
                                                        </div>
                                                        <select class="custom-select" id="inputGroupSelect03" required>
                                                            <option selected disabled value="">Choose...</option>
                                                            <option value="">Beginner</option>
                                                            <option value="">Intermediate</option>
                                                            <option value="">Advance</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary"
                                            data-dismiss="modal">Close</button>
                                        <button type="submit" class="btn btn-primary">Test Now</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Modal Select GD Test -->
                <div class="modal_select-GD">
                    <div class="modal fade" id="modalGD">
                        <div class="modal-dialog anm-modal" role="document">
                            <div class="modal-content">
                                <form action="" method="post">
                                    <div class="modal-header">
                                        <h5 class="modal-title modal-title-GD">Graphic Design Test</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-12">
                                                    <div class="input-group mb-3">
                                                        <div class="input-group-prepend">
                                                            <label class="input-group-text"
                                                                for="inputGroupSelect01">Category</label>
                                                        </div>
                                                        <select class="custom-select" id="inputGroupSelect04" required>
                                                            <option selected disabled value="">Choose...</option>
                                                            <option value="">Other</option>
                                                            <option value="">Other</option>
                                                            <option value="">Other</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-12">
                                                    <div class="input-group mb-3">
                                                        <div class="input-group-prepend">
                                                            <label class="input-group-text"
                                                                for="inputGroupSelect01">Thread</label>
                                                        </div>
                                                        <select class="custom-select" id="inputGroupSelect05" required>
                                                            <option selected disabled value="">Choose...</option>
                                                            <option value="">Other</option>
                                                            <option value="">Other</option>
                                                            <option value="">Other</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-12">
                                                    <div class="input-group mb-3">
                                                        <div class="input-group-prepend">
                                                            <label class="input-group-text"
                                                                for="inputGroupSelect01">Lever</label>
                                                        </div>
                                                        <select class="custom-select" id="inputGroupSelect06" required>
                                                            <option selected disabled value="">Choose...</option>
                                                            <option value="">Beginner</option>
                                                            <option value="">Intermediate</option>
                                                            <option value="">Advance</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary"
                                            data-dismiss="modal">Close</button>
                                        <button type="submit" class="btn btn-primary">Test Now</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Modal Select BA Test -->
                <div class="modal_select-BA">
                    <div class="modal fade" id="modalBA">
                        <div class="modal-dialog anm-modal" role="document">
                            <div class="modal-content">
                                <form action="" method="post">
                                    <div class="modal-header">
                                        <h5 class="modal-title modal-title-BA">Business Administration Test</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <div class="container-fluid">
                                            <div class="row">
                                                <div class="col-12">
                                                    <div class="input-group mb-3">
                                                        <div class="input-group-prepend">
                                                            <label class="input-group-text"
                                                                for="inputGroupSelect01">Category</label>
                                                        </div>
                                                        <select class="custom-select" id="inputGroupSelect07" required>
                                                            <option selected disabled value="">Choose...</option>
                                                            <option value="">Other</option>
                                                            <option value="">Other</option>
                                                            <option value="">Other</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-12">
                                                    <div class="input-group mb-3">
                                                        <div class="input-group-prepend">
                                                            <label class="input-group-text"
                                                                for="inputGroupSelect01">Thread</label>
                                                        </div>
                                                        <select class="custom-select" id="inputGroupSelect08" required>
                                                            <option selected disabled value="">Choose...</option>
                                                            <option value="">Other</option>
                                                            <option value="">Other</option>
                                                            <option value="">Other</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="col-12">
                                                    <div class="input-group mb-3">
                                                        <div class="input-group-prepend">
                                                            <label class="input-group-text"
                                                                for="inputGroupSelect01">Lever</label>
                                                        </div>
                                                        <select class="custom-select" id="inputGroupSelect09" required>
                                                            <option selected disabled value="">Choose...</option>
                                                            <option value="">Beginner</option>
                                                            <option value="">Intermediate</option>
                                                            <option value="">Advance</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary"
                                            data-dismiss="modal">Close</button>
                                        <button type="submit" class="btn btn-primary">Test Now</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </nav>
            <!-- *content_test -->
            <div class="content_test">
                <div class="start-test">
                    <img src="/resources/img/test_img.png" alt="">
                    <div class="start-test-title">
                        <h1>Welcome to the online test</h1>
                        <h3>Select the test using the Navigation Menu</h3>
                        <img src="resources/gif/Gif Arrow Left.gif" alt="" class="gif-arrow-left">
                    </div>
                </div>
            </div>
        </div>
    </section>
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

</html>
