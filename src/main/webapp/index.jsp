<%-- 
    Document   : index
    Created on : Oct 28, 2020, 9:50:39 AM
    Author     : Ngoc Do Minh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>BTEC FPT Forum - Login</title>
        <meta name="google-signin-client_id" content="861931736148-2ocuuknf09i59bdndlhr8i48f0u1joni.apps.googleusercontent.com">
        <!--===============================================================================================-->
        <link rel="stylesheet" type="text/css" href="CSS/LoginPageCSS/LoginPage.css"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    </head>
    <style>
        .login .vertical-form input[type='text'] {
            background: #fcfcfc;
            border: 2px solid #e7e7e7;
            margin: 20px auto;
            padding: 15px;
            width: 100%;
            display: block;
            border-radius: 3px;
            font-size: 18px;
            transition: opacity 0.4s;
            text-align: left;
            height: auto;
            -webkit-appearance: none;
        }
    </style>
    <script type="text/javascript">

    </script>
    <body class="login">
        <input type="hidden" id="session" value="<s:property value="#session.accountEmail"/>"/>
        <img class="logo" height="80" width="208" src="https://btec.fpt.edu.vn/wp-content/uploads/2017/12/2017-Btec-01-354.png" alt="BTEC Forum">
        <form class="vertical-form sign-in" id="sign-in" action="adminLogin.action" accept-charset="UTF-8" method="post">
            <legend>Log In</legend><p style="color: red;"><s:property value="msg"/></p>
            <input type="text" placeholder="Enter username" label="false" spellcheck="false" class="is-sensitive" value="" name="adminUsername" id="user_email" required="true" autocomplete="off">
            <input placeholder="Enter password" label="false" autocomplete="off" class="is-sensitive" type="password" name="adminPassword" id="user_password" required="true" autocomplete="off">
            <input type="submit" name="commit" value="Log In">
            <div class="btnGSignIn" style="margin-top: 20px;">
                <div class="g-signin2" data-width="390" data-height="50" data-longtitle="true" data-onsuccess="onSignIn" id="btn-login"></div>
            </div>
            <p><a href="/forgot_password/new">Forgot password?</a></p>
        </form>
        <!--        <div class="footer">
                    <p>
                        Don't have an account?
                        <a href="#">Sign Up</a>
                    </p>
                </div>-->
    </body>
    <!--===============================================================================================-->
    <script src="https://apis.google.com/js/platform.js" async defer></script>
    <script type="text/javascript">
        $(document).ready(function () {
            var tmp = $("#session").val();
            if (tmp != "")
            {
                window.location = "redirect";
            }
        });
        function onSignIn(googleUser)
        {
            var profile = googleUser.getBasicProfile();
            var name = profile.getName();
            var email = profile.getEmail();
            var avatar = profile.getImageUrl();
            location.assign("login.action?userEmail=" + email + "&userFullName=" + name + "&userAvatar=" + avatar);
        }
    </script>
</html>