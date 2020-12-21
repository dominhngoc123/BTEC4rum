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
        <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
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
        <img class="logo" height="80" width="208" src="https://upload.wikimedia.org/wikipedia/commons/2/2f/Logo_BTEC.png" alt="BTEC Forum">
        <form class="vertical-form sign-in" id="sign-in" action="Admin/adminLogin.action" accept-charset="UTF-8" method="post">
            <legend class="legendTitle">Sign In</legend><p style="color: red;"><s:property value="msg"/></p>
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
        function onSignIn(googleUser)
        {
            var profile = googleUser.getBasicProfile();
            var name = profile.getName();
            var email = profile.getEmail();
            var avatar = profile.getImageUrl();
            location.assign("Forum/Login?userEmail=" + email + "&userFullName=" + name + "&userAvatar=" + avatar);
        }
    </script>
</html>