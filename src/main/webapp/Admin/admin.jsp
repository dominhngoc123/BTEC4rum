<%-- 
    Document   : admin
    Created on : Oct 30, 2020, 9:25:28 AM
    Author     : Ngoc Do Minh
--%>

<%@taglib prefix="s" uri="/struts-tags"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!doctype html>
<html lang="en">

    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.min.css">
        <link href="assets/vendor/fonts/circular-std/style.css" rel="stylesheet">
        <link rel="stylesheet" href="assets/libs/css/style.css">
        <link rel="stylesheet" href="assets/vendor/fonts/fontawesome/css/fontawesome-all.css">
        <link rel="stylesheet" href="assets/vendor/charts/chartist-bundle/chartist.css">
        <link rel="stylesheet" href="assets/vendor/charts/morris-bundle/morris.css">
        <link rel="stylesheet" href="assets/vendor/fonts/material-design-iconic-font/css/materialdesignicons.min.css">
        <link rel="stylesheet" href="assets/vendor/charts/c3charts/c3.css">
        <link rel="stylesheet" href="assets/vendor/fonts/flag-icon-css/flag-icon.min.css">
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="assets/vendor/charts/morris-bundle/morris.js"></script>
        <title>BTEC Forum - admin page</title>
    </head>
    <style type="text/css" media="screen">
        .form-control {
            margin-bottom: 20px;
        }

        .fixed_header {
            width: 100%;
            table-layout: fixed;
            border-collapse: collapse;
        }

        .fixed_header tbody {
            width: 100%;
            overflow: auto;
            height: 25rem;
        }

        .fixed_header thead tr {
            cursor: pointer;
        }

        iframe {
            width: 90%;
            height: 20rem;
            table-layout: fixed;
        }

        .about {
            padding: 1rem;
            margin: 1rem;
        }

        .dhwtj {
            font-family: 'Ceviche One', cursive;

        }

        .scroll-table {
            height: 600px;
            overflow-y: scroll;
            overflow-x: hidden; 
        }
        .scroll-table .fixed_thead th
        {
            position: sticky;
            top: 0;
        }
        [data-href] {
            cursor: pointer;
        }
    </style>
    <script type="text/javascript">
        function alertAdminBlocUser(accountEmail)
        {
            return confirm("Do you want to block user with email:" + accountEmail);
        }
        ;
        function alertAdminUnblocUser(accountEmail)
        {
            return confirm("Do you want to unblock user with email:" + accountEmail);
        }
        ;
        function test()
        {
            return confirm("OK?");
        }
    </script>
    <body>
        <!-- ============================================================== -->
        <!-- main wrapper -->
        <!-- ============================================================== -->
        <div class="dashboard-main-wrapper">
            <!-- ============================================================== -->
            <!-- navbar -->
            <!-- ============================================================== -->
            <div class="dashboard-header">
                <nav class="navbar navbar-expand-lg bg-white fixed-top">
                    <a class="navbar-brand" href="index.html"><img id="logoImg" src="assets/images/logo.png" alt="BTEC FPT"/></a>
                    <div class="collapse navbar-collapse " id="navbarSupportedContent">
                        <ul class="navbar-nav ml-auto navbar-right-top">
                            <li class="nav-item">
                                <div id="custom-search" class="top-search-bar">
                                    <input class="form-control" type="text" placeholder="Search..">
                                </div>
                            </li>
                            <!-- -------------------------------------------------------------------------------------------------------------- -->
                            <!-- Drop down notification -->
                            <!-- <li class="nav-item dropdown notification">
                                <a class="nav-link nav-icons" href="#" id="navbarDropdownMenuLink1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><i class="fas fa-fw fa-bell"></i> <span class="indicator"></span></a>
                                <ul class="dropdown-menu dropdown-menu-right notification-dropdown">
                                    <li>
                                        <div class="notification-title"> Notification</div>
                                        <div class="notification-list">
                                            <div class="list-group">
                                                <a href="#" class="list-group-item list-group-item-action active">
                                                    <div class="notification-info">
                                                        <div class="notification-list-user-img"><img src="assets/images/avatar-2.jpg" alt="" class="user-avatar-md rounded-circle"></div>
                                                        <div class="notification-list-user-block"><span class="notification-list-user-name">Jeremy Rakestraw</span>accepted your invitation to join the team.
                                                            <div class="notification-date">2 min ago</div>
                                                        </div>
                                                    </div>
                                                </a>
                                                <a href="#" class="list-group-item list-group-item-action">
                                                    <div class="notification-info">
                                                        <div class="notification-list-user-img"><img src="assets/images/avatar-3.jpg" alt="" class="user-avatar-md rounded-circle"></div>
                                                        <div class="notification-list-user-block"><span class="notification-list-user-name">John Abraham </span>is now following you
                                                            <div class="notification-date">2 days ago</div>
                                                        </div>
                                                    </div>
                                                </a>
                                                <a href="#" class="list-group-item list-group-item-action">
                                                    <div class="notification-info">
                                                        <div class="notification-list-user-img"><img src="assets/images/avatar-4.jpg" alt="" class="user-avatar-md rounded-circle"></div>
                                                        <div class="notification-list-user-block"><span class="notification-list-user-name">Monaan Pechi</span> is watching your main repository
                                                            <div class="notification-date">2 min ago</div>
                                                        </div>
                                                    </div>
                                                </a>
                                                <a href="#" class="list-group-item list-group-item-action">
                                                    <div class="notification-info">
                                                        <div class="notification-list-user-img"><img src="assets/images/avatar-5.jpg" alt="" class="user-avatar-md rounded-circle"></div>
                                                        <div class="notification-list-user-block"><span class="notification-list-user-name">Jessica Caruso</span>accepted your invitation to join the team.
                                                            <div class="notification-date">2 min ago</div>
                                                        </div>
                                                    </div>
                                                </a>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="list-footer"> <a href="#">View all notifications</a></div>
                                    </li>
                                </ul>
                            </li> -->
                            <!-- End drop down notification -->
                            <!-- -------------------------------------------------------------------------------------------------------------- -->
                            <!-- Drop down connection to other -->
                            <!-- <li class="nav-item dropdown connection">
                                <a class="nav-link" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> <i class="fas fa-fw fa-th"></i> </a>
                                <ul class="dropdown-menu dropdown-menu-right connection-dropdown">
                                    <li class="connection-list">
                                        <div class="row">
                                            <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                                <a href="#" class="connection-item"><img src="assets/images/github.png" alt="" > <span>Github</span></a>
                                            </div>
                                            <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                                <a href="#" class="connection-item"><img src="assets/images/dribbble.png" alt="" > <span>Dribbble</span></a>
                                            </div>
                                            <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                                <a href="#" class="connection-item"><img src="assets/images/dropbox.png" alt="" > <span>Dropbox</span></a>
                                            </div>
                                        </div>
                                        <div class="row">
                                            <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                                <a href="#" class="connection-item"><img src="assets/images/bitbucket.png" alt=""> <span>Bitbucket</span></a>
                                            </div>
                                            <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                                <a href="#" class="connection-item"><img src="assets/images/mail_chimp.png" alt="" ><span>Mail chimp</span></a>
                                            </div>
                                            <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12 ">
                                                <a href="#" class="connection-item"><img src="assets/images/slack.png" alt="" > <span>Slack</span></a>
                                            </div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="conntection-footer"><a href="#">More</a></div>
                                    </li>
                                </ul>
                            </li> -->
                            <!-- End drop down connection to other -->
                            <!-- -------------------------------------------------------------------------------------------------------------- -->
                            <li class="nav-item dropdown nav-user">
                                <a class="nav-link nav-user-img" href="#" id="navbarDropdownMenuLink2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><img src="assets/images/avatar-1.jpg" alt="" class="user-avatar-md rounded-circle"></a>
                                <div class="dropdown-menu dropdown-menu-right nav-user-dropdown" aria-labelledby="navbarDropdownMenuLink2">
                                    <div class="nav-user-info">
                                        <h5 class="mb-0 text-white nav-user-name">John Abraham</h5>
                                        <span class="status"></span><span class="ml-2">Administrator</span>
                                    </div>
                                    <a class="dropdown-item" href="#"><i class="fas fa-user mr-2"></i>Account</a>
                                    <a class="dropdown-item" href="#"><i class="fas fa-cog mr-2"></i>Setting</a>
                                    <a class="dropdown-item" href="logOut.action"><i class="fas fa-power-off mr-2"></i>Logout</a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </nav>
            </div>
            <!-- ============================================================== -->
            <!-- end navbar -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- left sidebar -->
            <!-- ============================================================== -->
            <div class="nav-left-sidebar sidebar-dark">
                <div class="menu-list">
                    <nav class="navbar navbar-expand-lg navbar-light">
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>
                        <div class="container" id="navbarNav tabSection">
                            <ul class="navbar-nav flex-column nav-tab nav" role="tablist">
                                <li class="nav-divider">
                                    <h4>Menu</h4>
                                </li>
                                <li class="nav-item" style="width: 220px;">
                                    <a class="nav-link" href="#" data-toggle="collapse" data-toggle="tab" aria-expanded="false" data-target="#submenu-1" aria-controls="submenu-1"><i class="fas fa-arrow-alt-circle-right"></i>Manage post/comment<span class="badge badge-success">2</span></a>
                                    <div id="submenu-1" class="collapse submenu">
                                        <ul class="nav flex-column">
                                            <li class="nav-item">
                                                <a class="nav-link" id="managePost" data-toggle="tab" href="#listPost" role="tab" aria-controls="listPost" aria-selected="false"><i class="fas fa-arrow-alt-circle-down"></i>Manage post</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" id="manageComment" data-toggle="tab" href="#listComment" role="tab" aria-controls="listComment" aria-selected="false"><i class="fas fa-arrow-alt-circle-down"></i>Manage comment</a>
                                            </li>
                                        </ul>
                                    </div>
                                </li>
                                <li class="nav-item" style="width: 220px;">
                                    <a class="nav-link" id="manageTopic" data-toggle="tab" href="#listTopic" role="tab" aria-controls="listTopic" aria-selected="false"><i class="fas fa-arrow-alt-circle-right"></i>Manage topic</a>
                                </li>
                                <li class="nav-item" style="width: 220px;">
                                    <a class="nav-link" id="manageCategory" data-toggle="tab" href="#listCategory" role="tab" aria-controls="listCategory" aria-selected="false"><i class="fas fa-arrow-alt-circle-right"></i>Manage category</a>
                                </li>
                                <li class="nav-item" style="width: 220px;">
                                    <a class="nav-link" id="manageThread" data-toggle="tab" href="#listThread" role="tab" aria-controls="listThread" aria-selected="false"><i class="fas fa-arrow-alt-circle-right"></i>Manage thread</a>
                                </li>
                                <li class="nav-item" style="width: 220px;">
                                    <a class="nav-link" id="manageQuiz" data-toggle="tab" href="#listQuiz" role="tab" aria-controls="listQuiz" aria-selected="false"><i class="fas fa-arrow-alt-circle-right"></i>Manage quiz</a>
                                </li>
                                <li class="nav-item" style="width: 220px;">
                                    <a class="nav-link" id="manageAccount" data-toggle="tab" href="#listAccount" role="tab" aria-controls="listAccount" aria-selected="false"><i class="fas fa-arrow-alt-circle-right"></i>Manage account</a>
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
            </div>
            <!-- ============================================================== -->
            <!-- end left sidebar -->
            <!-- ============================================================== -->
            <!-- ============================================================== -->
            <!-- wrapper  -->
            <!-- ============================================================== -->
            <div class="dashboard-wrapper">
                <div class="tab-content" style="margin-top: 40px; margin-left: 20px; margin-right: 20px;">
                    <div class="tab-pane active" id="listPost" role="tabpanel" aria-labelledby="managePost">
                        <h3 style="text-align: center;">Manage post</h3>
                        <input class="form-control" id="myInput1" type="text" placeholder="Type something to search.." label="searchbar">
                        <div class="scroll-table">
                            <table class="table table-responsive-sm fixed_header ddj table-borderless table-fixed mb-0" id="ddj1" cellspacing="0"
                                   width="100%">
                                <thead class="thead-light fixed_thead">
                                    <tr>
                                        <th onclick="sortTable(1, 0)">Post title</th>
                                        <th onclick="sortTable(1, 1)">Posted by</th>
                                        <th onclick="sortTable(1, 2)">Posted date</th>
                                        <th onclick="sortTable(1, 3)">Status</th>
                                        <th onclick="sortTable(1, 4)">Thread</th>
                                        <th colspan="3" style="text-align: center;">Action</th>
                                    </tr>
                                </thead>
                                <tbody id="myTable1">
                                    <s:iterator value="listPost">
                                        <tr class="clickable-row" data-href="">
                                            <td><s:property value="postTitle"/></td>
                                            <td><s:property value="accountEmail"/></td>
                                            <td><s:property value="dateAdded"/></td>
                                            <td><s:if test="status==2">Pending</s:if><s:else>Approved</s:else></td>
                                            <td><s:property value="threadID"/></td>
                                            <td><a href="#" class="btn btn-success">Detail</a></td>
                                            <td><a href="#" class="btn btn-primary">Update</a></td>
                                            <td><a href="#" class="btn btn-danger">Delete</a></td>
                                        </tr>
                                    </s:iterator>
                                </tbody>
                            </table>
                        </div>
                        <div style="text-align: center;">
                            <a class="btn btn-info" href="#">Add new</a>
                        </div>
                    </div>
                    <div class="tab-pane" id="listTopic" role="tabpanel" aria-labelledby="manageTopic">
                        <h3 style="text-align: center;">Manage topic</h3>
                        <input class="form-control" id="myInput2" type="text" placeholder="Type something to search.." label="searchbar">
                        <div class="scroll-table">
                            <table class="table table-responsive-sm fixed_header table-borderless table-fixed mb-0" id="ddj2" cellspacing="0" width="100%">
                                <thead class="thead-light fixed_thead">
                                    <tr>
                                        <th onclick="sortTable(2, 0)">Topic name</th>
                                        <th onclick="sortTable(2, 1)">Topic description</th>
                                        <th onclick="sortTable(2, 2)">Added date</th>
                                        <th colspan="2" style="text-align: center;">Action</th>
                                    </tr>
                                </thead>
                                <tbody id="myTable2">
                                    <tr>
                                        <td>IT</td>
                                        <td>Information technology</td>
                                        <td>11/06/1993</td>
                                        <td><a href="#" class="btn btn-primary">Update</a></td>
                                        <td><a href="#" class="btn btn-danger">Delete</a></td>
                                    </tr>
                                    <tr>
                                        <td>Graphic Design</td>
                                        <td>Information technology</td>
                                        <td>11/06/1993</td>
                                        <td><a href="#" class="btn btn-primary">Update</a></td>
                                        <td><a href="#" class="btn btn-danger">Delete</a></td>
                                    </tr>
                                    <tr>
                                        <td>Other</td>
                                        <td>Other topic</td>
                                        <td>10/20/2020</td>
                                        <td><a href="#" class="btn btn-primary">Update</a></td>
                                        <td><a href="#" class="btn btn-danger">Delete</a></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div style="text-align: center;">
                            <a class="btn btn-info" href="#">Add new</a>
                        </div>
                    </div>
                    <div class="tab-pane" id="listCategory" role="tabpanel" aria-labelledby="manageCategory">
                        <h3 style="text-align: center;">Manage category</h3>
                        <input class="form-control" id="myInput3" type="text" placeholder="Type something to search.." label="searchbar">
                        <div class="scroll-table">
                            <table class="table table-responsive-sm fixed_header table-borderless table-fixed mb-0" id="ddj3" cellspacing="0" width="100%">
                                <thead class="thead-light fixed_thead">
                                    <tr>
                                        <th onclick="sortTable(3, 0)">Category name</th>
                                        <th onclick="sortTable(3, 1)">Category description</th>
                                        <th onclick="sortTable(3, 2)">Added date</th>
                                        <th colspan="2" style="text-align: center;">Action</th>
                                    </tr>
                                </thead>
                                <tbody id="myTable3">
                                    <tr>
                                        <td>IT</td>
                                        <td>Information technology</td>
                                        <td>11/06/1993</td>
                                        <td><a href="#" class="btn btn-primary">Update</a></td>
                                        <td><a href="#" class="btn btn-danger">Delete</a></td>
                                    </tr>
                                    <tr>
                                        <td>Graphic Design</td>
                                        <td>Information technology</td>
                                        <td>11/06/1993</td>
                                        <td><a href="#" class="btn btn-primary">Update</a></td>
                                        <td><a href="#" class="btn btn-danger">Delete</a></td>
                                    </tr>
                                    <tr>
                                        <td>Other</td>
                                        <td>Other Category</td>
                                        <td>10/20/2020</td>
                                        <td><a href="#" class="btn btn-primary">Update</a></td>
                                        <td><a href="#" class="btn btn-danger">Delete</a></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div style="text-align: center;">
                            <a class="btn btn-info" href="#">Add new</a>
                        </div>
                    </div>
                    <div class="tab-pane" id="listQuiz" role="tabpanel" aria-labelledby="manageQuiz">
                        <h3 style="text-align: center;">Manage quiz</h3>
                        <input class="form-control" id="myInput4" type="text" placeholder="Type something to search.." label="searchbar">
                        <div class="scroll-table">
                            <table class="table table-responsive-sm fixed_header table-borderless table-fixed mb-0" id="ddj4" cellspacing="0" width="100%">
                                <thead class="thead-light fixed_thead">
                                    <tr>
                                        <th onclick="sortTable(4, 0)">Quiz name</th>
                                        <th onclick="sortTable(4, 1)">Quiz description</th>
                                        <th onclick="sortTable(4, 2)">Added date</th>
                                        <th colspan="2" style="text-align: center;">Action</th>
                                    </tr>
                                </thead>
                                <tbody id="myTable4">
                                    <tr>
                                        <td>IT</td>
                                        <td>Information technology</td>
                                        <td>11/06/1993</td>
                                        <td><a href="#" class="btn btn-primary">Update</a></td>
                                        <td><a href="#" class="btn btn-danger">Delete</a></td>
                                    </tr>
                                    <tr>
                                        <td>Graphic Design</td>
                                        <td>Information technology</td>
                                        <td>11/06/1993</td>
                                        <td><a href="#" class="btn btn-primary">Update</a></td>
                                        <td><a href="#" class="btn btn-danger">Delete</a></td>
                                    </tr>
                                    <tr>
                                        <td>Other</td>
                                        <td>Other topic</td>
                                        <td>10/20/2020</td>
                                        <td><a href="#" class="btn btn-primary">Update</a></td>
                                        <td><a href="#" class="btn btn-danger">Delete</a></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div style="text-align: center;">
                            <a class="btn btn-info" href="#">Add new</a>
                        </div>
                    </div>
                    <div class="tab-pane" id="listAccount" role="tabpanel" aria-labelledby="manageAccount">
                        <h3 style="text-align: center;">Manage account</h3>
                        <input class="form-control" id="myInput5" type="text" placeholder="Type something to search.." label="searchbar">
                        <div class="scroll-table">
                            <table class="table table-responsive-sm fixed_header table-borderless table-fixed mb-0" id="ddj5" cellspacing="0" width="100%">
                                <thead class="thead-light fixed_thead">
                                    <tr>
                                        <th onclick="sortTable(5, 0)">Email</th>
                                        <th onclick="sortTable(5, 1)">Fullname</th>
                                        <th onclick="sortTable(5, 2)">Date added</th>
                                        <th onclick="sortTable(5, 3)">Status</th>
                                        <th colspan="2" style="text-align: center;">Action</th>
                                    </tr>
                                </thead>
                                <tbody id="myTable5">
                                    <s:iterator value="listAllUser">
                                        <tr>
                                            <td style="width: 50px;"><s:property value="accountEmail"/></td>
                                            <td><s:property value="userFullName"/></td>
                                            <td><s:property value="dateAdded"/></td>
                                            <td><s:if test="status==1">Available</s:if><s:else>Block</s:else></td>
                                                <td><a href="#" class="btn btn-primary">Update</a></td>
                                                <td>
                                                <s:if test="status==1">
                                                    <a href="adminBlockUser.action?accountEmail=<s:property value="accountEmail"/>&status=<s:property value="status"/>" class="btn btn-danger" onclick="adminBlockUser('<s:property value="accountEmail"/>')">Block</a>
                                                </s:if>
                                                <s:else>
                                                    <a href="adminBlockUser.action?accountEmail=<s:property value="accountEmail"/>&status=<s:property value="status"/>" class="btn btn-info" onclick="return test()">Unblock</a>
                                                </s:else>
                                            </td>
                                        </tr>
                                    </s:iterator>
                                </tbody>
                            </table>
                        </div>
                        <div style="text-align: center;">
                            <a class="btn btn-info" href="#">Add new</a>
                        </div>                    
                    </div>
                    <div class="tab-pane" id="listThread" role="tabpanel" aria-labelledby="manageThread">
                        <h3 style="text-align: center;">Manage thread</h3>
                        <input class="form-control" id="myInput6" type="text" placeholder="Type something to search.." label="searchbar">
                        <div class="scroll-table">
                            <table class="table table-responsive-sm fixed_header table-borderless table-fixed mb-0" id="ddj6" cellspacing="0" width="100%">
                                <thead class="thead-light fixed_thead">
                                    <tr>
                                        <th onclick="sortTable(6, 0)">Thread name</th>
                                        <th onclick="sortTable(6, 1)">Thread description</th>
                                        <th onclick="sortTable(6, 2)">Added date</th>
                                        <th colspan="2" style="text-align: center;">Action</th>
                                    </tr>
                                </thead>
                                <tbody id="myTable6">
                                    <tr>
                                        <td>IT</td>
                                        <td>Information technology</td>
                                        <td>11/06/1993</td>
                                        <td><a href="#" class="btn btn-primary">Update</a></td>
                                        <td><a href="#" class="btn btn-danger">Delete</a></td>
                                    </tr>
                                    <tr>
                                        <td>Graphic Design</td>
                                        <td>Information technology</td>
                                        <td>11/06/1993</td>
                                        <td><a href="#" class="btn btn-primary">Update</a></td>
                                        <td><a href="#" class="btn btn-danger">Delete</a></td>
                                    </tr>
                                    <tr>
                                        <td>Other</td>
                                        <td>Other topic</td>
                                        <td>10/20/2020</td>
                                        <td><a href="#" class="btn btn-primary">Update</a></td>
                                        <td><a href="#" class="btn btn-danger">Delete</a></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div style="text-align: center;">
                            <a class="btn btn-info" href="#">Add new</a>
                        </div>
                    </div>
                    <div class="tab-pane" id="listComment" role="tabpanel" aria-labelledby="manageComment">
                        <h3 style="text-align: center;">Manage comment</h3>
                        <input class="form-control" id="myInput7" type="text" placeholder="Type something to search.." label="searchbar">
                        <div class="scroll-table">
                            <table class="table table-responsive-sm fixed_header table-borderless table-fixed mb-0" id="ddj7" cellspacing="0" width="100%">
                                <thead class="thead-light fixed_thead">
                                    <tr>
                                        <th onclick="sortTable(7, 0)">Comment name</th>
                                        <th onclick="sortTable(7, 1)">Comment description</th>
                                        <th onclick="sortTable(7, 2)">Added date</th>
                                        <th colspan="2" style="text-align: center;">Action</th>
                                    </tr>
                                </thead>
                                <tbody id="myTable7">
                                    <tr>
                                        <td>IT</td>
                                        <td>Information technology</td>
                                        <td>11/06/1993</td>
                                        <td><a href="#" class="btn btn-primary">Update</a></td>
                                        <td><a href="#" class="btn btn-danger">Delete</a></td>
                                    </tr>
                                    <tr>
                                        <td>Graphic Design</td>
                                        <td>Information technology</td>
                                        <td>11/06/1993</td>
                                        <td><a href="#" class="btn btn-primary">Update</a></td>
                                        <td><a href="#" class="btn btn-danger">Delete</a></td>
                                    </tr>
                                    <tr>
                                        <td>Other</td>
                                        <td>Other topic</td>
                                        <td>10/20/2020</td>
                                        <td><a href="#" class="btn btn-primary">Update</a></td>
                                        <td><a href="#" class="btn btn-danger">Delete</a></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div style="text-align: center;">
                            <a class="btn btn-info" href="#">Add new</a>
                        </div>
                    </div>
                </div>
                <!-- ============================================================== -->
                <!-- end wrapper  -->
                <!-- ============================================================== -->
            </div>
            <!-- ============================================================== -->
            <!-- end main wrapper  -->
            <!-- ============================================================== -->
            <!-- Optional JavaScript -->
            <!-- jquery 3.3.1 -->
            <!-- bootstap bundle js -->
            <script src="assets/vendor/bootstrap/js/bootstrap.bundle.js"></script>
            <!-- slimscroll js -->
            <script src="https://code.jquery.com/jquery-3.3.1.js"></script>
            <script src="assets/vendor/slimscroll/jquery.slimscroll.js"></script>
            <!-- main js -->
            <script src="assets/libs/js/main-js.js"></script>
            <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.5.3/umd/popper.min.js"></script>
            <script>
                                            jQuery(document).ready(function ($) {
                                                $(".clickable-row").click(function () {
                                                    window.location = $(this).data("href");
                                                });
                                            });
                                            function sortTable(tableNumber, n) {
                                                var table, rows, switching, i, x, y, shouldSwitch, dir, switchcount = 0;
                                                table = document.getElementById("ddj" + tableNumber);
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
                                                    for (i = 1; i < (rows.length - 1); i++) {
                                                        // Start by saying there should be no switching:
                                                        shouldSwitch = false;
                                                        /* Get the two elements you want to compare,
                                                         one from current row and one from the next: */
                                                        x = rows[i].getElementsByTagName("TD")[n];
                                                        y = rows[i + 1].getElementsByTagName("TD")[n];
                                                        /* Check if the two rows should switch place,
                                                         based on the direction, asc or desc: */
                                                        if (dir === "asc") {
                                                            if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {
                                                                // If so, mark as a switch and break the loop:
                                                                shouldSwitch = true;
                                                                break;
                                                            }
                                                        } else if (dir === "desc") {
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
                                                        if (switchcount === 0 && dir === "asc") {
                                                            dir = "desc";
                                                            switching = true;
                                                        }
                                                    }
                                                }
                                            }
                                            $(document).ready(function () {
                                                $("#myInput1").on("keyup", function () {
                                                    var value = $(this).val().toLowerCase();
                                                    $("#myTable1 tr").filter(function () {
                                                        $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
                                                    });
                                                });
                                            });
                                            $(document).ready(function () {
                                                $("#myInput2").on("keyup", function () {
                                                    var value = $(this).val().toLowerCase();
                                                    $("#myTable2 tr").filter(function () {
                                                        $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
                                                    });
                                                });
                                            });
                                            $(document).ready(function () {
                                                $("#myInput3").on("keyup", function () {
                                                    var value = $(this).val().toLowerCase();
                                                    $("#myTable3 tr").filter(function () {
                                                        $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
                                                    });
                                                });
                                            });
                                            $(document).ready(function () {
                                                $("#myInput4").on("keyup", function () {
                                                    var value = $(this).val().toLowerCase();
                                                    $("#myTable4 tr").filter(function () {
                                                        $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
                                                    });
                                                });
                                            });
                                            $(document).ready(function () {
                                                $("#myInput5").on("keyup", function () {
                                                    var value = $(this).val().toLowerCase();
                                                    $("#myTable5 tr").filter(function () {
                                                        $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
                                                    });
                                                });
                                            });
                                            $(document).ready(function () {
                                                $("#myInput6").on("keyup", function () {
                                                    var value = $(this).val().toLowerCase();
                                                    $("#myTable6 tr").filter(function () {
                                                        $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
                                                    });
                                                });
                                            });
                                            $(document).ready(function () {
                                                $("#myInput7").on("keyup", function () {
                                                    var value = $(this).val().toLowerCase();
                                                    $("#myTable7 tr").filter(function () {
                                                        $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
                                                    });
                                                });
                                            });
            </script>
    </body>
</html>