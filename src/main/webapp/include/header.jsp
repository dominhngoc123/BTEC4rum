<%-- 
    Document   : header
    Created on : Oct 28, 2020, 10:28:55 AM
    Author     : Ngoc Do Minh
--%>

<%@taglib prefix="s" uri="/struts-tags"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
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
    <!--===========================================Css Base====================================================-->
    <link rel="stylesheet" href="include/resources/css/base.css">
    <!--===============================================================================================-->
</head>
<header class="header sticky-top unselecttable" id="header">
    <div class="header_top">
        <form class="header_top-search-box" id="searchBox" action="search-result" method="post">
            <a id="searchBtn" class="header_top-search-box-search-btn">
                <i class="fas fa-search header_top-search-box-small-icon"></i>
            </a>            
            <input class="header_top-search-box-search-txt" autocomplete="off" id="searchContent" type="text" name="searchContent" placeholder="Search..." />
        </form>
        <div class="header_top-user">
            <div class="dropdown show dropdown_color">
                <a class="btn btn-secondary btn-sm btn_user-color dropdown-toggle user_flex" href="#" role="button"
                   id="dropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"
                   style="box-shadow: none;">
                    <div class="header_top-user-bg"><img src="<s:property value="#session.userAvatar"/>" alt="" class="header_top-user-img"/></div>
                    <span class="header_top-user-name"><s:property value="#session.userFullName"/></span>
                </a>

                <ul class="dropdown-menu dropdown-menu-right edit_dropdown-menu" aria-labelledby="dropdownMenuLink">
                    <a class="dropdown-item" href="redirect"><span
                            class="fas fa-home dropdown-menu-icon-list"></span>Home</a>
                    <a class="dropdown-item dropdown-item-profile" data-toggle="modal"
                       data-target="#profile-modal"><span
                            class="fas fa-user dropdown-menu-icon-list"></span>Prolife</a>
                    <a class="dropdown-item" href="UserGetPost?accountEmail=<s:property value="#session.accountEmail"/>"><span
                            class="fas fa-cog dropdown-menu-icon-list"></span>My
                        Posts</a>
                    <a class="dropdown-item" href="" onclick="signOut()"><span
                            class="fas fa-sign-out-alt dropdown-menu-icon-list"></span>Log Out</a>
                </ul>
            </div>
        </div>
    </div>
    <nav class="header_bottom navbar navbar-expand-lg navbar-light ">
        <div class="container-fluid">
            <a href="ForumContent"><img src="include/resources/img/Logo_BTEC.png" alt="" class="header_bottom-logo"></a>
            <button class="navbar-toggler edit_navbar-toggler" type="button" data-toggle="collapse"
                    data-target="#navbarResponsive">
                <span class="edit_navbar-toggler-icon"><i class="fas fa-stream"></i></span>
            </button>
            <div class="collapse navbar-collapse header_bottom-drop-down" id="navbarResponsive">
                <ul class="header_bottom-main-nav navbar-nav ml-auto">
                    <li class="nav-item"><a href="">Information Technology</a></li>
                    <li class="nav-item"><a href="">Graphic design</a></li>
                    <li class="nav-item"><a href="">Business administration</a></li>
                    <li class="nav-item"><a href="">Other</a></li>
                    <li class="nav-item"><a href="#">Quiz</a></li>
                    <li class="nav-item"><a href="#">About</a></li>
                </ul>
            </div>
        </div>
    </nav>
</header>
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
