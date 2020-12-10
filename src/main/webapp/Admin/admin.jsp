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
        <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">
        <link href="include/resources/css/adminpage.css" rel="stylesheet">
        <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/css/select2.min.css" rel="stylesheet" />
    </head>
    <body>
        <input type="hidden" value="<s:property value="#session.accountEmail"/>" name="test" id="test"/>
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
                                <a href="memberPage" style="cursor: pointer;">
                                    <i class="fas fa-home"></i>
                                    <span>Go to forum</span>
                                </a>
                            </li>
                            <li class="sidebar">
                                <a href="#" style="cursor: pointer;">
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
        <script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/js/select2.min.js"></script>
        <script src="include/resources/js/adminpage.js"></script>
        <script src="https://apis.google.com/js/platform.js?onload=onLoad" async defer></script> 
    </body>
</html>