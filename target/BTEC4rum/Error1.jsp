<%-- 
    Document   : Error1
    Created on : Dec 25, 2020, 10:19:09 AM
    Author     : Ngoc Do Minh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!DOCTYPE html>
<html lang="vi">
    <head>
        <link rel="stylesheet" href="include/resources/css/error.css">
        <meta name="google-signin-client_id" content="861931736148-2ocuuknf09i59bdndlhr8i48f0u1joni.apps.googleusercontent.com">
    </head>
    <body>
        <main>
            <div>
                <div>
                    <span>404&nbsp;Error</span>
                    <span>You are&nbsp;being&nbsp;blocked</span>
                </div>
                <svg viewBox="0 0 200 600">
                <polygon points="118.302698 8 59.5369448 66.7657528 186.487016 193.715824 14 366.202839 153.491505 505.694344 68.1413353 591.044514 200 591.044514 200 8"></polygon>
                </svg>
            </div>
            <svg class="crack" viewBox="0 0 200 600">
            <polyline points="118.302698 8 59.5369448 66.7657528 186.487016 193.715824 14 366.202839 153.491505 505.694344 68.1413353 591.044514"></polyline>
            </svg>
            <div>
                <svg viewBox="0 0 200 600">
                <polygon points="118.302698 8 59.5369448 66.7657528 186.487016 193.715824 14 366.202839 153.491505 505.694344 68.1413353 591.044514 0 591.044514 0 8"></polygon>
                </svg>
                <div>
                    <span>Please&nbsp;contact&nbsp;admin!</span>
                    <span>
                        <a href="" onclick="expiredToken();">
                            <b>Return&nbsp;home?</b>
                        </a>
                    </span>
                </div>
            </div>
        </main>
    </body>
    <script src="include/resources/js/LogOut.js"></script>
    <script src="https://apis.google.com/js/platform.js?onload=onLoad" async defer></script>
</html>
