<%-- 
    Document   : header
    Created on : Oct 28, 2020, 10:28:55 AM
    Author     : Ngoc Do Minh
--%>

<%@taglib prefix="s" uri="/struts-tags"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>BTEC FPT Forum</title>
        <meta name="google-signin-client_id" content="861931736148-2ocuuknf09i59bdndlhr8i48f0u1joni.apps.googleusercontent.com">
        <!--===============================================================================================-->
        <script src="https://apis.google.com/js/platform.js" async defer></script>
        <!--===============================================================================================-->
        <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900" rel="stylesheet">
        <!--===============================================================================================-->
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css"
              integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
        <!--===============================================================================================-->
        <link rel="stylesheet" href="include/resources/css/styleindex.css">
        <!--===============================================================================================-->
        <!-- <link rel="stylesheet" href="vendors/css/griddemo1.css"> -->
        <!--===============================================================================================-->
        <link rel="icon" type="image/png" href="include/resources/img/title_logo_BTEC.png" />
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="include/vendors/bootstrap/css/bootstrap.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="include/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="include/vendors/animate/animate.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="include/vendors/select2/select2.min.css">
        <!--===============================================================================================-->
        <!-- <link rel="stylesheet" type="text/css" href="vendors/perfect-scrollbar/perfect-scrollbar.css"> -->
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="include/resources/css/util.css">
        <link rel="stylesheet" type="text/css" href="include/resources/css/main.css">
        <!--===============================================================================================-->
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css" />
        <!--===============================================================================================-->
        <link rel="stylesheet" href="include/resources/css/loading.css">
        <!--============================================responsive============================================-->
        <link rel="stylesheet" href="include/resources/css/queriesindex.css">
    </head>
    <script>
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
        alert("<s:property value="#session.userName"/>");
    </script>
    <s:if test="#session.login != 'true'">
        <script>
            var revokeAllScopes = function () {
                var auth2 = gapi.auth2.getAuthInstance();
                auth2.signOut().then(function () {
                    window.location = 'home.jsp';
                });
            };
            function onLoad() {
                gapi.load('auth2', function () {
                    gapi.auth2.init();
                });
            }
            alert("Your login session has expired. Please log in again.");
            window.location = "home.jsp";
        </script>
    </s:if>
    <script src="https://apis.google.com/js/platform.js?onload=onLoad" async defer></script> 

    <body>
        <div class="preloading">
            <header id="header">
                <nav class="sticky">
                    <div class="first-lever">
                        <div class="sign-in" style="width: 250px;">
                            <a>
                                <img src="<s:property value="#session.userAvatar"/>" alt="" class="avartar">
                                <p><s:property value="#session.userName"/></p>
                            </a>
                            <nav style="cursor: pointer;">
                                <div class="drop-btn">
                                    <span class="fas fa-caret-down span_hover"></span>
                                </div>
                                <div class="tooltip">
                                </div>
                                <div class="wrapper">
                                    <ul class="menu-bar">
                                        <li><a href="#">
                                                <div class="icon-dropdown">
                                                    <span class="fas fa-home"></span></div>
                                                Home
                                            </a></li>
                                        <li class="setting-item"><a>
                                                <div class="icon-dropdown">
                                                    <span class="fas fa-cog"></span></div>
                                                Account <i class="fas fa-angle-right"></i>
                                            </a></li>
                                        <li class="help-item"><a>
                                                <div class="icon-dropdown">
                                                    <span class="fas fa-question-circle"></span></div>
                                                Help & support <i class="fas fa-angle-right"></i>
                                            </a></li>
                                        <li><a href="#" onclick="signOut();">
                                                <div class="icon-dropdown">
                                                    <span class="fas fa-sign-out-alt"></span></div>
                                                Log out
                                            </a></li>
                                    </ul>
                                    <!-- Settings & privacy Menu-items -->
                                    <center>
                                        <ul class="setting-drop">
                                            <li class="arrow back-setting-btn" style="margin-left: 25%;"><span
                                                    class="fas fa-arrow-left"></span>Settings & privacy
                                            </li>
                                            <li><a onclick="pop(), toggle()" style="color: #b0b3b8;">
                                                    <div class="icon-dropdown">
                                                        <span class="fas fa-user"></span></div>
                                                    Personal info
                                                </a></li>
                                            <li><a onclick="pop2(), toggle()" style="color: #b0b3b8;">
                                                    <div class="icon-dropdown">
                                                        <span class="fas fa-user"></span></div>
                                                    Update personal info
                                                </a></li>
                                            <li><a href="#">
                                                    <div class="icon-dropdown">
                                                        <span class="fas fa-lock"></span></div>
                                                    Password
                                                </a></li>
                                        </ul>
                                        <!-- Help & support Menu-items -->
                                        <ul class="help-drop">
                                            <li class="arrow back-help-btn" style="margin-left: 25%;"><span
                                                    class="fas fa-arrow-left"></span>Help & support</li>
                                            <li><a href="#">
                                                    <div class="icon-dropdown">
                                                        <span class="fas fa-question-circle"></span></div>
                                                    Help centre
                                                </a></li>
                                            <li><a href="#">
                                                    <div class="icon-dropdown">
                                                        <span class="fas fa-envelope"></span></div>
                                                    Support Inbox
                                                </a></li>
                                            <li><a href="#">
                                                    <div class="icon-dropdown">
                                                        <span class="fas fa-comment-alt"></span></div>
                                                    Send feedback
                                                </a></li>
                                            <li><a href="#">
                                                    <div class="icon-dropdown">
                                                        <span class="fas fa-exclamation-circle"></span></div>
                                                    Report problem
                                                </a></li>
                                        </ul>
                                    </center>
                                </div>
                            </nav>
                        </div>
                        <div class="search-box" id="search-box" style="margin-left: 75%;">
                            <a class="search-btn" href="#">
                                <i class="fas fa-search small-icon" id="icon"></i>
                            </a>
                            <input class="search-txt" type="text" name="" placeholder="Search..." />
                        </div>
                    </div>
                    <div class="second-lever">
                        <a href="#"><img class="logo" src="include/resources/img/Logo_BTEC.png" alt="Logo BTEC"></a>
                        <ul class="main-nav">
                            <li><a href="#">Information Technology</a></li>
                            <li><a href="#">Graphic design</a></li>
                            <li><a href="#">Business administration</a></li>
                            <li><a href="#">Test</a></li>
                            <li><a href="#">Other</a></li>
                            <li><a href="#">About</a></li>
                        </ul>
                    </div>
                </nav>
            </header>
        </div>
    </body>
</html>
