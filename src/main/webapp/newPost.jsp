<%-- 
    Document   : newPost
    Created on : Nov 16, 2020, 8:45:48 AM
    Author     : Ngoc Do Minh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>BTEC FPT Forum - Post</title>
    <link href="https://fonts.googleapis.com/css?family=Lato:300,400,700,900" rel="stylesheet">
    <!--===============================================================================================-->
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css"
        integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
    <!--===============================================================================================-->
    <link rel="stylesheet" href="include/resources/css/post.css">
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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.14.0/css/all.min.css" />
    <!--===============================================================================================-->
    <link rel="stylesheet" href="include/resources/css/loading.css">
</head>

<body class="preloading">
    <div class="load">
        <img src="include/resources/gif/loader.gif" alt="">
    </div>
    <header id="header">
        <nav class="sticky">
            <div class="first-lever">
                <div class="sign-in">
                    <a>
                        <img src="include/resources/img/pic.png" alt="" class="avartar">
                        <p>John Doe</p>
                    </a>
                    <nav>
                        <div class="drop-btn">
                            <span class="fas fa-caret-down span_hover"></span>
                        </div>
                        <div class="tooltip">
                        </div>
                        <div class="wrapper">
                            <ul class="menu-bar">
                                <li><a href="index.html">
                                        <div class="icon-dropdown">
                                            <span class="fas fa-home"></span></div>
                                        Home
                                    </a></li>
                                <li class="setting-item"><a>
                                        <div class="icon-dropdown">
                                            <span class="fas fa-cog"></span></div>
                                        Settings & privacy <i class="fas fa-angle-right"></i>
                                    </a></li>
                                <li class="help-item"><a>
                                        <div class="icon-dropdown">
                                            <span class="fas fa-question-circle"></span></div>
                                        Help & support <i class="fas fa-angle-right"></i>
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
                                    <li><a href="#">
                                            <div class="icon-dropdown">
                                                <span class="fas fa-lock"></span></div>
                                            Password
                                        </a></li>

                                    <li><a href="#">
                                            <div class="icon-dropdown">
                                                <span class="fas fa-sign-out-alt"></span></div>
                                            Log out
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
                <div class="search-box" id="search-box">
                    <a class="search-btn" href="#">
                        <i class="fas fa-search small-icon" id="icon"></i>
                    </a>
                    <input class="search-txt" type="text" name="" placeholder="Search..." />
                </div>
            </div>
            <div class="second-lever">
                <a href="index.html"><img class="logo" src="include/resources/img/Logo_BTEC.png" alt="Logo BTEC"></a>
                <ul class="main-nav">
                    <li><a href="forumIT.html">Information Technology</a></li>
                    <li><a href="">Graphic design</a></li>
                    <li><a href="">Business administration</a></li>
                    <li><a href="test.html">Test</a></li>
                    <li><a href="#">Other</a></li>
                    <li><a href="#">About</a></li>
                </ul>
            </div>
        </nav>
    </header>
    <div class="announcements">
        <div class="left-site">
            <h4>ANNOUNCEMENTS</h4>
        </div>
        <div class="right-site">
            <p>"Your time is limited, so don't waste it living someone else's life" - Thời gian của bạn luôn có hạn,
                vì
                vậy đừng lãng phí nó để sống cuộc đời khác"</p>
        </div>
    </div>
    <section id="content">
        <form action="" method="POST">
            <div class="row">
                <div class="col span-1-of-3">
                    <select name="" id="" class="sl-post">
                        <option value="">INFORMATION TECHNOLOGY</option>
                        <option value="">GRAPHIC DESIGN</option>
                        <option value="">BUSINESS ADMINISTRATION</option>
                    </select>
                </div>
                <div class="col span-1-of-3">
                    <select name="" id="" class="sl-post">
                        <option value="">Java</option>
                        <option value="">PHP</option>
                        <option value="">.Net</option>
                    </select>
                </div>
                <div class="col span-1-of-3">
                    <select name="" id="" class="sl-post">
                        <option value="">OOP</option>
                        <option value="">OTHER</option>
                        <option value="">OTHER</option>
                    </select>
                </div>
            </div>
            <textarea placeholder="Enter title here..." required class="content-title-post"></textarea>
            <textarea name="" id="editor1" placeholder="Type text content here..."
                required>Write content here...</textarea>
            <br>

            <input type="submit" value=" Post" class="submit-post">
        </form>
    </section>
    <jsp:include page="include/footer.jsp"/>
</body>
<script src="asset/ckeditor/ckeditor.js"></script>
<script type="text/javascript">
    $('textarea').each(function () {
        this.setAttribute('style', 'height:' + (this.scrollHeight) + 'px;overflow-y:hidden;');
    }).on('input', function () {
        this.style.height = 'auto';
        this.style.height = (this.scrollHeight) + 'px';
    });
    // CKEDITOR
    // config
    config = {};
    config.entities_latin = false;
    config.lauguage = 'vi';
    config.allowedContent = true;
    config.removeFormatAttributes = '';
    config.extraPlugins = 'autogrow';
    // Define changes to default configuration here.
    // For complete reference see:
    // http://docs.ckeditor.com/#!/api/CKEDITOR.config

    // The toolbar groups arrangement, optimized for two toolbar rows.
    config.toolbarGroups = [
        { name: 'clipboard', groups: ['clipboard', 'undo'] },
        { name: 'editing', groups: ['find', 'selection', 'spellchecker'] },
        { name: 'links' },
        { name: 'insert' },
        { name: 'forms' },
        { name: 'tools' },
        { name: 'document', groups: ['mode', 'document', 'doctools'] },
        { name: 'others' },
        '/',
        { name: 'basicstyles', groups: ['basicstyles', 'cleanup'] },
        { name: 'paragraph', groups: ['list', 'indent', 'blocks', 'align', 'bidi'] },
        { name: 'styles' },
        { name: 'colors' },
        { name: 'about' }
    ];

    // Replace the <textarea id="editor1"> with a CKEditor 4
    // instance, using default configuration.
    CKEDITOR.replace('editor1', config);
</script>


</html>
</html>
