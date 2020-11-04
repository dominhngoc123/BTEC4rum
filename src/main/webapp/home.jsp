<%-- 
    Document   : home
    Created on : Nov 3, 2020, 12:30:10 AM
    Author     : Ngoc Do Minh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>BTEC FPT Forum - Homepage</title>
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
    <style type="text/css" media="screen">
        /* Reset. */
        * {
            box-sizing: border-box;
        }

        body {
            margin: 0;
            padding: 0;
            font-size: 100%;
            font-family: Arial, Helvetica, sans-serif;
        }

        /* Panels. */
        .splitview {
            position: relative;
            width: 100%;
            min-height: 45vw;
            overflow: hidden;
        }

        .panel {
            position: absolute;
            width: 100vw;
            min-height: 45vw;
            overflow: hidden;
        }

        .panel .content {
            position: absolute;
            width: 100vw;
            min-height: 45vw;
            color: #FFF;
        }

        .panel .description {
            width: 25%;
            position: absolute;
            top: 50%;
            transform: translateY(-50%);
            text-align: center;
        }

        .panel img {
            box-shadow: 0 0 20px 20px rgba(0, 0, 0, 0.15);
            width: 35%;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
        }


        .bottom {
            background-color: rgb(44, 44, 44);
            z-index: 1;
        }

        .bottom .description {
            right: 5%;
        }

        .top {
            background-color: rgb(77, 69, 173);
            z-index: 2;
            width: 50vw;

            /*-webkit-clip-path: polygon(60% 0, 100% 0, 100% 100%, 40% 100%);
            clip-path: polygon(60% 0, 100% 0, 100% 100%, 40% 100%);*/
        }

        .top .description {
            left: 5%;
        }

        /* Handle. */
        .handle {
            height: 100%;
            position: absolute;
            display: block;
            background-color: rgb(253, 171, 0);
            width: 5px;
            top: 0;
            left: 50%;
            z-index: 3;
        }

        /* Skewed. */
        .skewed .handle {
            top: 50%;
            transform: rotate(30deg) translateY(-50%);
            height: 150%;
            -webkit-transform-origin: top;
            -moz-transform-origin: top;
            transform-origin: top;
        }

        .skewed .top {
            transform: skew(-30deg);
            margin-left: -1000px;
            width: calc(50vw + 1000px);
        }

        .skewed .top .content {
            transform: skew(30deg);
            margin-left: 1000px;
        }

        /* Responsive. */
        @media (max-width: 900px) {
            body {
                font-size: 75%;
            }
        }
        .btn-login{
            display: block;
            line-height: 40px;
            text-align: center;
            color: white;
            text-transform: uppercase;
        }
        .btn-login:hover{
            color: white;
        }
    </style>
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            var parent = document.querySelector('.splitview'),
                    topPanel = parent.querySelector('.top'),
                    handle = parent.querySelector('.handle'),
                    skewHack = 0,
                    delta = 0;

            // If the parent has .skewed class, set the skewHack var.
            if (parent.className.indexOf('skewed') != -1) {
                skewHack = 1000;
            }

            parent.addEventListener('mousemove', function (event) {
                // Get the delta between the mouse position and center point.
                delta = (event.clientX - window.innerWidth / 2) * 0.5;

                // Move the handle.
                handle.style.left = event.clientX + delta + 'px';

                // Adjust the top panel width.
                topPanel.style.width = event.clientX + skewHack + delta + 'px';
            });
        });
    </script>
    <body style="display: block; overflow-x: hidden; overflow-y: scroll">
        <div class="preloading">
            <header id="header">
                <nav class="sticky">
                    <div class="first-lever">
                        <div class="sign-in" style="width: 250px;">
                            <a href="index.jsp" class="btn-login">Login</a>
                        </div>
                        <div class="search-box" id="search-box" style="margin-left: 75%;">
                            <a class="search-btn" href="#">
                                <i class="fas fa-search small-icon" id="icon"></i>
                            </a>
                            <input class="search-txt" type="text" name="" placeholder="Search..." />
                        </div>
                    </div>
                </nav>
            </header>
        </div>
        <div class="splitview skewed">
            <div class="panel bottom">
                <div class="content">
                    <div class="description">
                        <h1>BTEC FPT</h1>
                        <p>Học thì chơi - chơi thì đếch học</p>
                    </div>

                    <img src="include/resources/img/home.jpg" alt="Original">
                </div>
            </div>
            <div class="panel top">
                <div class="content">
                    <div class="description">
                        <h1>BTEC FPT</h1>
                        <p>Luôn luôn lắng nghe - lâu lâu mới hiểu</p>
                    </div>

                    <img src="include/resources/img/home.jpg" alt="Duotone">
                </div>
            </div>
            <div class="handle"></div>
        </div>
        <footer id="footer" style="margin-top: 50px;">
            <div class="row">
                <div class="col span-1-of-3">
                    <div class="infor-box">
                        <h3>Hà Nội</h3>
                        <ul>
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
                </div>

                <div class="col span-1-of-3">
                    <div class="infor-box">
                        <h3>Đà Nẵng</h3>
                        <ul>
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
                </div>

                <div class="col span-1-of-3">
                    <div class="infor-box">
                        <h3>TP. Hồ Chí Minh</h3>
                        <ul>
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
                </div>
            </div>
        </footer>
    </body>
</html>
