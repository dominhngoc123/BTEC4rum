<%-- 
    Document   : admin
    Created on : Oct 30, 2020, 9:25:28 AM
    Author     : Ngoc Do Minh
--%>

<%@taglib prefix="s" uri="/struts-tags"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="BTEC forum - admin page">
        <link rel="icon" type="image/png" href="include/resources/img/title_logo_BTEC.png" />
        <title>BTEC forum - admin page</title>
        <meta name="google-signin-client_id" content="861931736148-2ocuuknf09i59bdndlhr8i48f0u1joni.apps.googleusercontent.com">
        <!--===============================================================================================-->
        <script src="https://apis.google.com/js/platform.js" async defer></script>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css"
              integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
        <link href="include/resources/css/adminpage.css" rel="stylesheet">
        <link href="include/resources/css/base.css" rel="stylesheet" />
        <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/css/select2.min.css" rel="stylesheet" />

        <jsp:include page="/include/auth.jsp"/>
    </head>
    <body>
        <div class="page-wrapper chiller-theme toggled">
            <a id="show-sidebar" class="btn btn-sm btn-dark" href="#">
                <i class="fas fa-bars"></i>
            </a>
            <nav id="sidebar" class="sidebar-wrapper">
                <div class="sidebar-content">
                    <div class="sidebar-brand">
                        <a href="#">Administrator page</a>
                        <div id="close-sidebar">
                            <i class="fas fa-times"></i>
                        </div>
                    </div>
                    <div class="sidebar-header">
                        <div class="user-pic">
                            <img class="img-responsive img-rounded" src="<s:property value="#session.userAvatar"/>"
                                 alt="User avatar">
                        </div>
                        <div class="user-info">
                            <span class="user-name"><s:property value="#session.userFullName"/>
                            </span>
                            <span class="user-role">Administrator</span>
                            <span class="user-status">
                                <a href="#">
                                    <i class="fa fa-bell"></i>
                                    <span class="badge badge-pill badge-warning notification">3</span>
                                </a>
                            </span>
                        </div>
                    </div>
                    <div class="sidebar-menu">
                        <ul>
                            <li class="header-menu">
                                <span>Manage feature</span>
                            </li>
                            <li class="sidebar">
                                <a onclick="loadPost();" style="cursor: pointer;">
                                    <i class="far fa-sticky-note"></i>
                                    <span>Manage post/comment</span>
                                </a>
                            </li>
                            <li class="sidebar">
                                <a onclick="loadTopic();" style="cursor: pointer;">
                                    <i class="fas fa-tasks"></i>
                                    <span>Manage topic</span>
                                </a>
                            </li>
                            <li class="sidebar">
                                <a onclick="loadCategory();" style="cursor: pointer;">
                                    <i class="fas fa-tasks"></i>
                                    <span>Manage category</span>
                                </a>
                            </li>
                            <li class="sidebar">
                                <a onclick="loadThread();" style="cursor: pointer;">
                                    <i class="fas fa-tasks"></i>
                                    <span>Manage thread</span>
                                </a>
                            </li>
                            <li class="sidebar">
                                <a href="#" style="cursor: pointer;">
                                    <i class="fas fa-question-circle"></i>
                                    <span>Manage quiz</span>
                                </a>
                            </li>
                            <li class="sidebar">
                                <a onclick="loadUser();" style="cursor: pointer;">
                                    <i class="fas fa-user"></i>
                                    <span>Manage user</span>
                                </a>
                            </li>
                            <li class="header-menu">
                                <span>Other feature</span>
                            </li>
                            <li class="sidebar">
                                <a href="ForumContent" style="cursor: pointer;">
                                    <i class="fas fa-home"></i>
                                    <span>Go to forum</span>
                                </a>
                            </li>
                            <li class="sidebar">
                                <a href="#" style="cursor: pointer;" data-toggle="modal"
                                   data-target="#profile-modal">
                                    <i class="far fa-user-circle"></i>
                                    <span>Profile</span>
                                </a>
                            </li>
                            <li class="sidebar">
                                <a onclick="signOut();" style="cursor: pointer;">
                                    <i class="fa fa-power-off"></i>
                                    <span>Logout</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                    <!-- sidebar-menu  -->
                </div>
                <!-- sidebar-content  -->
            </nav>
            <!-- sidebar-wrapper  -->
            <main class="page-content">
                <div class="container-fluid" id="showTable">
                </div>
            </main>
        </div>
        <div class="modal fade" id="modal_add" role="dialog"></div>
        <div class="modal fade" id="modal_update" role="dialog"></div>
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
                                    <button type="button" class="btn" data-dismiss="modal" data-toggle="modal"
                                            data-target="#update-profile-modal"><i class="fas fa-user-edit"></i>
                                    </button>
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
                                               min="100000000" onKeyPress="if (this.value.length == 10)
                                                    return false;">
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
        <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/js/select2.min.js"></script>
        <script src="include/resources/js/adminpage.js"></script>
        <script src="https://apis.google.com/js/platform.js?onload=onLoad" async defer></script>
    </body>
</html>