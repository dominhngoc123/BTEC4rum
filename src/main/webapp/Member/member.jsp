<%-- 
    Document   : member
    Created on : Oct 28, 2020, 10:28:26 AM
    Author     : Ngoc Do Minh
--%>

<%@taglib prefix="s" uri="/struts-tags"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>BTEC FPT Forum</title>
        <meta name="google-signin-client_id" content="861931736148-2ocuuknf09i59bdndlhr8i48f0u1joni.apps.googleusercontent.com">
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
        <link rel="stylesheet" href="include/resources/css/index.css">
        <!--===========================================Css Base====================================================-->
        <link rel="stylesheet" href="include/resources/css/base.css">
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
                            <div class="header_top-user-bg"><img src="<s:property value="#session.userAvatar"/>" alt="<s:property value="#session.userFullName"/>"
                                                                 class="header_top-user-img"></div>
                            <span class="header_top-user-name"><s:property value="#session.userFullName"/></span>
                        </a>

                        <ul class="dropdown-menu dropdown-menu-right edit_dropdown-menu" aria-labelledby="dropdownMenuLink">
                            <a class="dropdown-item" href="<s:if test="#session.userRole==1">redirect</s:if>"><span
                                        class="fas fa-home dropdown-menu-icon-list"></span>Home</a>
                                <a class="dropdown-item dropdown-item-profile" data-toggle="modal"
                                   data-target="#profile-modal"><span
                                        class="fas fa-user dropdown-menu-icon-list"></span>Prolife</a>
                                <a class="dropdown-item" href="#"><span
                                        class="fas fa-lock dropdown-menu-icon-list"></span>Password</a>
                                <button class="dropdown-item" value="<s:property value="#session.accountEmail"/>" id="goToPost"><span
                                    class="fas fa-cog dropdown-menu-icon-list"></span>My
                                Posts</button>
                            <button class="dropdown-item" onclick="signOut();"><span
                                    class="fas fa-sign-out-alt dropdown-menu-icon-list"></span>Log Out</button>
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
                            <div class="modal-body-profile-name"><span><s:property value="#session.userFullName"/></span>
                            </div>
                            <div class="modal-body-profile-desc"><span><s:if test="#session.userDescription == null">Lười bỏ mẹ</s:if><s:else><s:property value="#session.userDescription"/></s:else></span></div>
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
                                    <h6>Name</h6><span><s:property value="#session.userFullName"/></span>
                                </li>
                                <li>
                                    <h6>Date of birth</h6><span><s:if test="#session.userDoB != null"><s:property value="#session.userDoB"/></s:if></span>
                                </li>
                                <li>
                                    <h6>Gender</h6><span><s:if test="#session.userGender == 1">Female</s:if><s:elseif test="#session.userGender == 2">Male</s:elseif></span>
                                </li>
                                <li>
                                    <h6>Address</h6><span><s:property value="#session.userAddress"/></span>
                                </li>
                                <li>
                                    <h6>Phone Number</h6><span><s:property value="#session.userPhonenumber"/></span>
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
                                        value="<s:property value="#session.userFullName"/>" minlength="6" maxlength="50" required>
                                </div>
                                <div class="col-md-5 mb-3">
                                    <label for="validationDefault02">Date of birth</label>
                                    <input type="date" class="form-control form-control-sm" id="validationDefault02"
                                        value="<s:property value="#session.userDoB"/>" required>
                                </div>
                                <div class="col-md-2 mb-3">
                                    <label for="validationDefault03">Gender</label>
                                    <select class="form-control form-control-sm" id="validationDefault03" required>
                                        <option selected disabled value="">Choose...</option>
                                        <option value="1" <s:if test="#session.userGender == 1">selected</s:if>>Feale</option>
                                        <option value="2" <s:if test="#session.userGender == 2">selected</s:if>>Male</option>
                                        <option value="">Other</option>
                                    </select>
                                </div>
                            </div>
                            <div class="form-row">
                                <div class="col-md-5 mb-3">
                                    <label for="validationDefault07">Avatar</label>
                                    <input type="file" value="<s:property value="#session.userAvatar"/>" class="form-control form-control-sm form-control-file-avatar"
                                        id="validationDefault07">
                                </div>
                                <div class="col-md-5 mb-3">
                                    <label for="validationDefault04">Major</label>
                                    <input type="text" class="form-control form-control-sm" id="validationDefault04"
                                           value="<s:property value="#session.userDescription"/>" minlength="6" maxlength="50" required>
                                </div>
                                <div class="col-md-2 mb-3">
                                    <label for="validationDefault05">Phone</label>
                                    <input type="number" class="form-control form-control-sm" id="validationDefault05"
                                           min="100000000" value="<s:property value="#session.userPhonenumber"/>" onKeyPress="if(this.value.length==10) return false;">
                                </div>
                            </div>
                            <div class="form-row ">
                                <div class="col-md-12 mb-3">
                                    <label for="validationDefault06">Address</label>
                                    <input type="text" class="form-control form-control-sm" id="validationDefault06"
                                           minlength="10" maxlength="100" value="<s:property value="#session.userAddress"/>">
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
        <section class="container-fluid content">
            <!-- *Content Left-->
            <div class="content_left unselecttable">
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
                        <table id="tblNewPost" class="table-striped table-hover">
                            <tbody>
                            
                            </tbody>
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
                <div class="post">
                    <a href="CreateNewPost" class="btn-jump">
                        Post <i class="fas fa-pen-nib"></i>
                    </a>
                </div>
                <div class="limiter">
                    <div class="container-table100">
                        <div class="wrap-table100">
                            <div class="forum-name"><a href="forumIT.html"><i class="fas fa-server"></i> Information
                                    Technology</a></div>
                            <div class="table100 ver2 m-b-110">
                                <div class="table100-head">
                                    <table>
                                        <thead>
                                            <tr class="row100 head">
                                                <th class="cell100 column1" onclick="sortTableIT(0)">Title</th>
                                                <th class="cell100 column2" onclick="sortTableIT(1)">Topic</th>
                                                <th class="cell100 column3" onclick="sortTableIT(2)">Thead</th>
                                                <th class="cell100 column4" onclick="sortTableIT(3)">Author</th>
                                                <th class="cell100 column5" onclick="sortTableIT(4)">Time</th>
                                            </tr>
                                        </thead>
                                    </table>
                                </div>
                                <div class="table100-body js-pscroll">
                                    <table class="table-striped table-hover" id="tableIT">
                                        <tbody>
                                            
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="forum-name forum-name-2"><a href=""><i class="fas fa-paint-brush"></i> GRAPHIC
                                    DESIGN </a></div>
                            <div class="table100 ver2 m-b-110">
                                <div class="table100-head">
                                    <table>
                                        <thead>
                                            <tr class="row100 head">
                                                <th class="cell100 column1" onclick="sortTableGD(0)">Title</th>
                                                <th class="cell100 column2" onclick="sortTableGD(1)">Topic</th>
                                                <th class="cell100 column3" onclick="sortTableGD(2)">Thead</th>
                                                <th class="cell100 column4" onclick="sortTableGD(3)">Author</th>
                                                <th class="cell100 column5" onclick="sortTableGD(4)">Time</th>
                                            </tr>
                                        </thead>
                                    </table>
                                </div>

                                <div class="table100-body js-pscroll">
                                    <table class="table-striped table-hover" id="tableGD">
                                        <tbody>
                                            
                                        </tbody>
                                    </table>
                                </div>
                            </div>

                            <div class="forum-name forum-name-3"><a href=""><i class="far fa-chart-bar"></i> BUSINESS
                                    ADMINISTRATION</a>
                            </div>
                            <div class="table100 ver2 m-b-110">
                                <div class="table100-head">
                                    <table>
                                        <thead>
                                            <tr class="row100 head">
                                                <th class="cell100 column1" onclick="sortTableBA(0)">Title</th>
                                                <th class="cell100 column2" onclick="sortTableBA(1)">Topic</th>
                                                <th class="cell100 column3" onclick="sortTableBA(2)">Thead</th>
                                                <th class="cell100 column4" onclick="sortTableBA(3)">Author</th>
                                                <th class="cell100 column5" onclick="sortTableBA(4)">Time</th>
                                            </tr>
                                        </thead>
                                    </table>
                                </div>

                                <div class="table100-body js-pscroll">
                                    <table class="table-striped table-hover" id="tableBA">
                                        <tbody>
                                            
                                        </tbody>
                                    </table>
                                </div>
                            </div>


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
    <script>
        function getDate(date){
            return date.substring(8, 10) + "/" + date.substring(5, 7) + "/" + date.substring(0, 4);
        }
        function getDateTime(date)
        {
            var tmp = date.substring(8, 10) + "/" + date.substring(5, 7) + "/" + date.substring(0, 4) + " at ";
            if (date.substring(11, 13) >= 12)
            {
                tmp += (date.substring(11, 13) - 12) + ":";
                tmp += date.substring(14, 16) + " PM";
            }
            else
            {
                tmp += date.substring(11, 13) + ":";
                tmp += date.substring(14, 16) + " AM";
            }
            console.log(tmp);
            return tmp;
        }
        $(document).ready(function (){
            var newPostStr = "";
            <s:iterator value="listNewPost">
                newPostStr += "<tbody>";
                newPostStr += "<tr data-href=''>";
                newPostStr += "<td><s:property value="postTitle"/></td>";
                newPostStr += "<td>" + getDate("<s:property value="approvedDate"/>") + "</td>";
                newPostStr += "<td><s:if test="thread.category.topic.topicID == 'T01'">IT</s:if><s:elseif test="thread.category.topic.topicID == 'T02'">BA</s:elseif><s:elseif test="thread.category.topic.topicID == 'T03'">GD</s:elseif></td>";
                newPostStr += "</tr>";
                newPostStr += "</tbody>";
            </s:iterator>
            $("#tblNewPost").html(newPostStr);
            var strIT = "<tbody>";
            var strGD = "<tbody>";
            var strBA = "<tbody>";
            <s:iterator value="listPost">
                <s:if test="thread.category.topic.topicID == 'T01'">
                    strIT += "<tr class='row100 body' data-href='postdetail.html'>";
                    strIT += "<td class='cell100 column1'><s:property value="postTitle"/></td>";
                    strIT += "<td class='cell100 column2'><s:property value="thread.category.categoryName"/></td>";
                    strIT += "<td class='cell100 column3'><s:property value="thread.threadName"/></td>";
                    strIT += "<td class='cell100 column4'><s:property value="user.userFullName"/></td>";
                    strIT += "<td class='cell100 column5'>" + getDateTime("<s:property value="approvedDate"/>") + "</td>"
                    strIT += "</tr>";  
                </s:if>
                <s:elseif test="thread.category.topic.topicID == 'T02">
                    strBA += "<tr class='row100 body' data-href='postdetail.html'>";
                    strBA += "<td class='cell100 column1'><s:property value="postTitle"/></td>";
                    strBA += "<td class='cell100 column2'><s:property value="thread.category.categoryName"/></td>";
                    strBA += "<td class='cell100 column3'><s:property value="thread.threadName"/></td>";
                    strBA += "<td class='cell100 column4'><s:property value="user.userFullName"/></td>";
                    strBA += "<td class='cell100 column5'>" + getDateTime("<s:property value="approvedDate"/>") + "</td>"
                    strBA += "</tr>";
                </s:elseif>
                <s:elseif test="thread.category.topic.topicID == 'T03">
                    strGD += "<tr class='row100 body' data-href='postdetail.html'>";
                    strGD += "<td class='cell100 column1'><s:property value="postTitle"/></td>";
                    strGD += "<td class='cell100 column2'><s:property value="thread.category.categoryName"/></td>";
                    strGD += "<td class='cell100 column3'><s:property value="thread.threadName"/></td>";
                    strGD += "<td class='cell100 column4'><s:property value="user.userFullName"/></td>";
                    strGD += "<td class='cell100 column5'>" + getDateTime("<s:property value="approvedDate"/>") + "</td>"
                    strGD += "</tr>";
                </s:elseif>
            </s:iterator>
                strIT += "</tbody>";
                strGD += "</tbody>";
                strBA += "</tbody>";
                console.log(strIT);
                $("#tableIT").html(strIT);
                $("#tableGD").html(strGD);
                $("#tableBA").html(strBA);
        })
                                                    $("#goToPost").click(function () {
                                                        var email = $(this).val();
                                                        window.location = "UserGetPost?accountEmail=" + email;
                                                    });
                                                    function signOut() {
                                                        var check = confirm("Do you want to log out?");
                                                        if (check)
                                                        {
                                                            expiredToken();
                                                        }
                                                    }
                                                    function expiredToken() {
                                                        var auth2 = gapi.auth2.getAuthInstance();
                                                        auth2.signOut().then(function () {
                                                            window.location = 'logOut.action';
                                                        });
                                                    }
                                                    function onLoad() {
                                                        gapi.load('auth2', function () {
                                                            gapi.auth2.init();
                                                        });
                                                    }
                                                    function sortTableIT(n) {
                                                        var table, rows, switching, i, x, y, shouldSwitch, dir, switchcount = 0;
                                                        table = document.getElementById("tableIT");
                                                        switching = true;
                                                        // Set the sorting direction to ascending:
                                                        dir = "asc";
                                                        /* Make a loop that will continue until
                                                         no switching has been done: */
                                                        while (switching) {
                                                            // Start by saying: no switching is done:
                                                            switching = false;
                                                            rows = table.rows;
                                                            /* Loop through all table rows (except the
                                                             first, which contains table headers): */
                                                            for (i = 0; i < (rows.length - 1); i++) {
                                                                // Start by saying there should be no switching:
                                                                shouldSwitch = false;
                                                                /* Get the two elements you want to compare,
                                                                 one from current row and one from the next: */
                                                                x = rows[i].getElementsByTagName("TD")[n];
                                                                y = rows[i + 1].getElementsByTagName("TD")[n];
                                                                /* Check if the two rows should switch place,
                                                                 based on the direction, asc or desc: */
                                                                if (dir == "asc") {
                                                                    if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {
                                                                        // If so, mark as a switch and break the loop:
                                                                        shouldSwitch = true;
                                                                        break;
                                                                    }
                                                                } else if (dir == "desc") {
                                                                    if (x.innerHTML.toLowerCase() < y.innerHTML.toLowerCase()) {
                                                                        // If so, mark as a switch and break the loop:
                                                                        shouldSwitch = true;
                                                                        break;
                                                                    }
                                                                }
                                                            }
                                                            if (shouldSwitch) {
                                                                /* If a switch has been marked, make the switch
                                                                 and mark that a switch has been done: */
                                                                rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
                                                                switching = true;
                                                                // Each time a switch is done, increase this count by 1:
                                                                switchcount++;
                                                            } else {
                                                                /* If no switching has been done AND the direction is "asc",
                                                                 set the direction to "desc" and run the while loop again. */
                                                                if (switchcount == 0 && dir == "asc") {
                                                                    dir = "desc";
                                                                    switching = true;
                                                                }
                                                            }
                                                        }
                                                    }
                                                    function sortTableGD(n) {
                                                        var table, rows, switching, i, x, y, shouldSwitch, dir, switchcount = 0;
                                                        table = document.getElementById("tableGD");
                                                        switching = true;
                                                        // Set the sorting direction to ascending:
                                                        dir = "asc";
                                                        /* Make a loop that will continue until
                                                         no switching has been done: */
                                                        while (switching) {
                                                            // Start by saying: no switching is done:
                                                            switching = false;
                                                            rows = table.rows;
                                                            /* Loop through all table rows (except the
                                                             first, which contains table headers): */
                                                            for (i = 0; i < (rows.length - 1); i++) {
                                                                // Start by saying there should be no switching:
                                                                shouldSwitch = false;
                                                                /* Get the two elements you want to compare,
                                                                 one from current row and one from the next: */
                                                                x = rows[i].getElementsByTagName("TD")[n];
                                                                y = rows[i + 1].getElementsByTagName("TD")[n];
                                                                /* Check if the two rows should switch place,
                                                                 based on the direction, asc or desc: */
                                                                if (dir == "asc") {
                                                                    if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {
                                                                        // If so, mark as a switch and break the loop:
                                                                        shouldSwitch = true;
                                                                        break;
                                                                    }
                                                                } else if (dir == "desc") {
                                                                    if (x.innerHTML.toLowerCase() < y.innerHTML.toLowerCase()) {
                                                                        // If so, mark as a switch and break the loop:
                                                                        shouldSwitch = true;
                                                                        break;
                                                                    }
                                                                }
                                                            }
                                                            if (shouldSwitch) {
                                                                /* If a switch has been marked, make the switch
                                                                 and mark that a switch has been done: */
                                                                rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
                                                                switching = true;
                                                                // Each time a switch is done, increase this count by 1:
                                                                switchcount++;
                                                            } else {
                                                                /* If no switching has been done AND the direction is "asc",
                                                                 set the direction to "desc" and run the while loop again. */
                                                                if (switchcount == 0 && dir == "asc") {
                                                                    dir = "desc";
                                                                    switching = true;
                                                                }
                                                            }
                                                        }
                                                    }
                                                    function sortTableBA(n) {
                                                        var table, rows, switching, i, x, y, shouldSwitch, dir, switchcount = 0;
                                                        table = document.getElementById("tableBA");
                                                        switching = true;
                                                        // Set the sorting direction to ascending:
                                                        dir = "asc";
                                                        /* Make a loop that will continue until
                                                         no switching has been done: */
                                                        while (switching) {
                                                            // Start by saying: no switching is done:
                                                            switching = false;
                                                            rows = table.rows;
                                                            /* Loop through all table rows (except the
                                                             first, which contains table headers): */
                                                            for (i = 0; i < (rows.length - 1); i++) {
                                                                // Start by saying there should be no switching:
                                                                shouldSwitch = false;
                                                                /* Get the two elements you want to compare,
                                                                 one from current row and one from the next: */
                                                                x = rows[i].getElementsByTagName("TD")[n];
                                                                y = rows[i + 1].getElementsByTagName("TD")[n];
                                                                /* Check if the two rows should switch place,
                                                                 based on the direction, asc or desc: */
                                                                if (dir == "asc") {
                                                                    if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {
                                                                        // If so, mark as a switch and break the loop:
                                                                        shouldSwitch = true;
                                                                        break;
                                                                    }
                                                                } else if (dir == "desc") {
                                                                    if (x.innerHTML.toLowerCase() < y.innerHTML.toLowerCase()) {
                                                                        // If so, mark as a switch and break the loop:
                                                                        shouldSwitch = true;
                                                                        break;
                                                                    }
                                                                }
                                                            }
                                                            if (shouldSwitch) {
                                                                /* If a switch has been marked, make the switch
                                                                 and mark that a switch has been done: */
                                                                rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
                                                                switching = true;
                                                                // Each time a switch is done, increase this count by 1:
                                                                switchcount++;
                                                            } else {
                                                                /* If no switching has been done AND the direction is "asc",
                                                                 set the direction to "desc" and run the while loop again. */
                                                                if (switchcount == 0 && dir == "asc") {
                                                                    dir = "desc";
                                                                    switching = true;
                                                                }
                                                            }
                                                        }
                                                    }
    </script>
    <script src="https://apis.google.com/js/platform.js?onload=onLoad" async defer></script>
</html>