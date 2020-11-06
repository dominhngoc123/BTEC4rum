<%-- 
    Document   : postdetail
    Created on : Nov 6, 2020, 4:26:43 PM
    Author     : Ngoc Do Minh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <link rel="stylesheet" href="include/resources/css/postdetail.css">
        <jsp:include page="include/header.jsp"/>
        <section id="content">
            <div class="content-left">
                <div class="new-post">
                    <h2><i class=" far fa-newspaper"></i> New post</h2>

                    <table class="head">
                        <tbody>
                            <tr>
                                <td
                                    style="width: 47%; font-weight: bold; background-color: #009688; color: white; color: white; border-radius: 5px 0 0 0;">
                                    Title</td>
                                <td style="width: 28%; font-weight: bold; background-color: #009688; color: white;">
                                    Date
                                </td>
                                <td
                                    style="width: 24%; font-weight: bold; background-color: #009688; color: white; color: white; border-radius: 0 5px 0 0;">
                                    Other</td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="scroll-table">
                        <table>
                            <tbody></tbody>
                            <tr>
                                <td style="width: 49%;">Body 1</td>
                                <td style="width: 30%;">02/02/2020</td>
                                <td style="width: 21%;">Body 3</td>
                            </tr>
                            <tr>
                                <td>Body 2</td>
                                <td>Body 2</td>
                                <td>Body 3</td>
                            </tr>
                            <tr>
                                <td>Body 2</td>
                                <td>Body 2</td>
                                <td>Body 3</td>
                            </tr>
                            <tr>
                                <td>Body 2</td>
                                <td>Body 2</td>
                                <td>Body 3</td>
                            </tr>
                            <tr>
                                <td>Body 2</td>
                                <td>Body 2</td>
                                <td>Body 3</td>
                            </tr>
                            <tr>
                                <td>Body 2</td>
                                <td>Body 2</td>
                                <td>Body 3</td>
                            </tr>
                            <tr>
                                <td>Body 2</td>
                                <td>Body 2</td>
                                <td>Body 3</td>
                            </tr>
                            <tr>
                                <td>Body 2</td>
                                <td>Body 2</td>
                                <td>Body 3</td>
                            </tr>
                            <tr>
                                <td>Body 2</td>
                                <td>Body 2</td>
                                <td>Body 3</td>
                            </tr>
                        </table>
                    </div>

                </div>
                <div class="border"></div>
                <div class="top-score">
                    <h2><i class="fas fa-star-half-alt"></i> Top score</h2>
                    <table class="head">
                        <tbody>
                            <tr>
                                <td
                                    style="width: 47%; font-weight: bold; background-color: #ff9f1a; color: white; border-radius: 5px 0 0 0;">
                                    Name
                                </td>
                                <td style="width: 28%; font-weight: bold; background-color: #ff9f1a; color: white;">
                                    Other
                                </td>
                                <td
                                    style="width: 24%; font-weight: bold; background-color: #ff9f1a; color: white; border-radius: 0 5px 0 0;">
                                    Other
                                </td>
                            </tr>
                        </tbody>
                    </table>
                    <div class="scroll-table">
                        <table>
                            <tbody></tbody>
                            <tr>
                                <td style="width: 49%; word-break: break-work;">Body
                                    111111111111111111111111</td>
                                <td style="width: 30%;">Body 11111111111111112</td>
                                <td style="width: 21%;">Body 3</td>
                            </tr>
                            <tr>
                                <td>Body 11</td>
                                <td>Body 2</td>
                                <td>Body 3</td>
                            </tr>
                            <tr>
                                <td>Body 11</td>
                                <td>Body 2</td>
                                <td>Body 3</td>
                            </tr>
                            <tr>
                                <td>Body 11</td>
                                <td>Body 2</td>
                                <td>Body 3</td>
                            </tr>
                            <tr>
                                <td>Body 11</td>
                                <td>Body 2</td>
                                <td>Body 3</td>
                            </tr>
                            <tr>
                                <td>Body 11</td>
                                <td>Body 2</td>
                                <td>Body 3</td>
                            </tr>
                            <tr>
                                <td>Body 11</td>
                                <td>Body 2</td>
                                <td>Body 3</td>
                            </tr>
                            <tr>
                                <td>Body 11</td>
                                <td>Body 2</td>
                                <td>Body 3</td>
                            </tr>
                            <tr>
                                <td>Body 11</td>
                                <td>Body 2</td>
                                <td>Body 3</td>
                            </tr>
                        </table>
                    </div>
                </div>
            </div>
            <div class="content-right">
                <div class="post-content">
                    <div class="post-title">
                        <h3>Lorem ipsum dolor sit, amet consectetur adipisicing elit. Suscipit nisi sapiente fugiat optio
                            inventore fugit.</h3>
                    </div>
                    <div class="post-author">
                        <div class="post-author-info">
                            <a onclick="pop()"><img src="include/resources/img/pic.png" alt=""></a>
                        </div>
                        <ul>
                            <li><span onclick="pop()" class="post-author-name">Doe John</span></li>
                            <li><span class="posted-time">Posted on 10-FEB-2015 12:00</span></li>
                        </ul>
                    </div>
                    <div class="post-main">
                        <p>
                            Lorem ipsum dolor sit amet consectetur adipisicing elit. Rem nam error dignissimos praesentium
                            istevoluptates fugiat, quasi, eveniet provident ex repellendus repellat reiciendis id
                            repudiandae ad
                            facilis vero neque corrupti. Lorem ipsum dolor sit amet consectetur adipisicing elit. Sapiente,
                            iusto omnis ex dolorem asperiores cumque alias sint labore doloremque. A dolorum alias quos odit
                            maiores atque! Assumenda debitis possimus ducimus?

                            Lorem ipsum dolor sit, amet consectetur adipisicing elit. Harum expedita quas eius magnam
                            deleniti
                            inventore? Dolores ipsa, iure ullam sunt corrupti eligendi culpa sint sequi ipsam maiores, in,
                            impedit aperiam.
                            Lorem ipsum dolor sit, amet consectetur adipisicing elit. Provident voluptatum amet recusandae
                            laboriosam saepe! Ipsam odio reprehenderit repellat ullam quisquam, repudiandae aliquam vero
                            iste
                            eaque excepturi esse et est ducimus? Lorem ipsum dolor sit amet consectetur adipisicing elit.
                            Cum,
                            totam inventore, repellendus velit unde a provident rem enim et doloribus, cupiditate ad. Culpa
                            alias, voluptates obcaecati sunt sint similique nostrum. Lorem ipsum dolor sit, amet consectetur
                            adipisicing elit. Laudantium nisi nostrum consequatur molestias, inventore ad impedit nemo
                            accusantium laboriosam doloremque cumque incidunt adipisci illum, sed pariatur eius iure nihil
                            tempore? Lorem ipsum dolor sit amet consectetur adipisicing elit. Labore maxime sequi similique,
                            unde numquam accusamus dolore nesciunt totam consequatur eos, blanditiis soluta! Voluptate
                            sapiente
                            id soluta. Doloribus hic assumenda ipsam.
                        </p>
                    </div>
                    <div class="thread-action" id="write-cmt">
                        <div class="heart-btn">
                            <div class="heart-btn-content">
                                <span class="heart"> </span>
                                <span class="heart-btn-text"> Like</span>
                                <span class="heart-btn-numb"></span>
                            </div>
                        </div>
                        <div class="comment-btn">
                            <a onclick="show_cmt_box()"><span>4</span> Comment</a>
                        </div>
                        <div class="report-btn">
                            <a href="#">Report</a>
                        </div>
                    </div>

                    <div class="post-comment-box" id="post-comment-box">
                        <!-- comment form action-->
                        <div class="post-author-info avt-move">
                            <a onclick="pop()"><img src="include/resources/img/pic.png" alt=""></a>
                        </div>
                        <form action="" method="POST" class="cmt-form">
                            <textarea name="" id="" required placeholder="Add your comment here..."></textarea>
                            <div class="cmt-btn-post">
                                <button type="submit">Post</button>
                            </div>
                        </form>
                        <!-- comment form -->
                        <div class="comments-container">
                            <ul id="comments-list" class="comments-list">
                                <li>
                                    <div class="comment-main-level">
                                        <!-- Avatar -->
                                        <div class="comment-avatar"><img src="resources/img/pic.png" alt="" onclick="pop()">
                                        </div>
                                        <!-- Contenedor del Comentario -->
                                        <div class="comment-box">
                                            <div class="comment-head">
                                                <h6 class="comment-name by-author"><a onclick="pop()">Doe John</a>
                                                </h6>
                                                <span class="posted-time">Posted on 10-FEB-2015 12:00</span>
                                                <i class="fas fa-wrench btn-edit"></i>
                                                <i class="far fa-trash-alt btn-del"></i>
                                            </div>
                                            <div class="comment-content">
                                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit omnis animi
                                                et iure
                                                laudantium vitae, praesentium optio, sapiente distinctio illo?
                                                <div class="comment-open">
                                                    <div class="btn-func">
                                                        <a class="btn-like">
                                                            <input type="checkbox" id="o-like-1">
                                                            <label class="like-cmt-text" for="o-like-1">Like</label>
                                                        </a>
                                                        <span class="like-cmt-numb">2</span>
                                                    </div>
                                                    <a class="btn-reply">
                                                        Reply
                                                    </a>
                                                    <a class="btn-report">
                                                        Report
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="comment-footer">
                                                <div class="comment-form">
                                                    <form action="" method="POST">
                                                        <textarea class="form-control" name="" id="" required
                                                                  placeholder="Add your comment here..." cols=""
                                                                  rows=""></textarea>
                                                        <div class="pull-right send-button">
                                                            <button class="btn-send">send</button>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                    <ul class="comments-list reply-list">
                                        <li>

                                            <div class="comment-avatar"><img src="http://dummyimage.com/60" alt=""></div>

                                            <div class="comment-box">
                                                <div class="comment-head">
                                                    <h6 class="comment-name"><a href="#">Lorena Rojero</a></h6>
                                                    <span class="posted-time">Posted on DD-MM-YYYY HH:MM</span>
                                                    <i class="fas fa-wrench btn-edit"></i>
                                                    <i class="far fa-trash-alt btn-del"></i>
                                                </div>
                                                <div class="comment-content">
                                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit omnis
                                                    animi et iure
                                                    laudantium vitae, praesentium optio, sapiente distinctio illo?
                                                    <div class="comment-open">
                                                        <div class="btn-func">
                                                            <a class="btn-like">
                                                                <input type="checkbox" id="o-like-2">
                                                                <label class="like-cmt-text" for="o-like-2">Like</label>
                                                            </a>
                                                            <span class="like-cmt-numb">1</span>
                                                        </div>
                                                        <a class="btn-reply">
                                                            Reply
                                                        </a>
                                                        <a class="btn-report">
                                                            Report
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="comment-footer">
                                                    <div class="comment-form">
                                                        <form action="" method="POST">
                                                            <textarea class="form-control" name="" id="" required
                                                                      placeholder="Add your comment here..." cols=""
                                                                      rows=""></textarea>
                                                            <div class="pull-right send-button">
                                                                <button class="btn-send">send</button>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>

                                        <li>

                                            <div class="comment-avatar"><img src="resources/img/pic.png" alt=""
                                                                             onclick="pop()"></div>

                                            <div class="comment-box">
                                                <div class="comment-head">
                                                    <h6 class="comment-name by-author"><a onclick="pop()">Doe
                                                            John</a></h6>
                                                    <span class="posted-time">Posted on DD-MM-YYYY HH:MM</span>
                                                    <i class="fas fa-wrench btn-edit"></i>
                                                    <i class="far fa-trash-alt btn-del"></i>
                                                </div>
                                                <div class="comment-content">
                                                    Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit omnis
                                                    animi et iure
                                                    laudantium vitae, praesentium optio, sapiente distinctio illo?
                                                    <div class="comment-open">
                                                        <div class="btn-func">
                                                            <a class="btn-like">
                                                                <input type="checkbox" id="o-like-3">
                                                                <label class="like-cmt-text" for="o-like-3">Like</label>
                                                            </a>
                                                            <span class="like-cmt-numb">1</span>
                                                        </div>
                                                        <a class="btn-reply">
                                                            Reply
                                                        </a>
                                                        <a class="btn-report">
                                                            Report
                                                        </a>
                                                    </div>
                                                </div>
                                                <div class="comment-footer">
                                                    <div class="comment-form">
                                                        <form action="" method="POST">
                                                            <textarea class="form-control" name="" id="" required
                                                                      placeholder="Add your comment here..." cols=""
                                                                      rows=""></textarea>
                                                            <div class="pull-right send-button">
                                                                <button class="btn-send">send</button>
                                                            </div>
                                                        </form>
                                                    </div>
                                                </div>
                                            </div>
                                        </li>
                                    </ul>
                                </li>

                                <li>
                                    <div class="comment-main-level">

                                        <div class="comment-avatar"><img src="http://dummyimage.com/60" alt=""></div>

                                        <div class="comment-box">
                                            <div class="comment-head">
                                                <h6 class="comment-name"><a href="#">Lorena Rojero</a></h6>
                                                <span class="posted-time">Posted on DD-MM-YYYY HH:MM</span>
                                                <i class="fas fa-wrench btn-edit"></i>
                                                <i class="far fa-trash-alt btn-del"></i>
                                            </div>
                                            <div class="comment-content">
                                                Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit omnis animi
                                                et iure
                                                laudantium vitae, praesentium optio, sapiente distinctio illo?
                                                <div class="comment-open">
                                                    <div class="btn-func">
                                                        <a class="btn-like">
                                                            <input type="checkbox" id="o-like-4">
                                                            <label class="like-cmt-text" for="o-like-4">Like</label>
                                                        </a>
                                                        <span class="like-cmt-numb">1</span>
                                                    </div>
                                                    <a class="btn-reply">
                                                        Reply
                                                    </a>
                                                    <a class="btn-report">
                                                        Report
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="comment-footer">
                                                <div class="comment-form">
                                                    <form action="" method="POST">
                                                        <textarea class="form-control" name="" id="" required
                                                                  placeholder="Add your comment here..." cols=""
                                                                  rows=""></textarea>
                                                        <div class="pull-right send-button">
                                                            <button class="btn-send">send</button>
                                                        </div>
                                                    </form>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <div class="write-cmt">
                            <a href="#write-cmt">Write your comment...</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <jsp:include page="include/footer.jsp"/>
        <script src="include/resources/js/postdetail.js"></script>
        <script>
                                                        function show_cmt_box() {
                                                            if (d == 0) {
                                                                document.getElementById("post-comment-box").style.display = "block"
                                                                d = 1;
                                                            } else {
                                                                document.getElementById("post-comment-box").style.display = "none"
                                                                d = 0;
                                                            }
                                                        }

                                                        $(document).ready(function () {
                                                            $('.heart-btn-content').click(function () {
                                                                $('.heart-btn-content').toggleClass("heart-active")
                                                                $('.heart-btn-text').toggleClass("heart-active")
                                                                $('.heart-btn-numb').toggleClass("heart-active")
                                                                $('.heart').toggleClass("heart-active")
                                                            });
                                                        });

                                                        $('textarea').each(function () {
                                                            this.setAttribute('style', 'height:' + (this.scrollHeight) + 'px;overflow-y:hidden;');
                                                        }).on('input', function () {
                                                            this.style.height = 'auto';
                                                            this.style.height = (this.scrollHeight) + 'px';
                                                        });
        </script>
    </body>
</html>
