<%-- 
    Document   : newPost
    Created on : Nov 16, 2020, 8:45:48 AM
    Author     : Ngoc Do Minh
--%>

<%@taglib prefix="s" uri="/struts-tags"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <jsp:include page="include/auth.jsp"/>
    <jsp:include page="include/header.jsp"/>
    <!--===========================================Css Post====================================================-->
    <link rel="stylesheet" href="include/resources/css/post.css">   
    <!--===============================================Select2 css================================================-->
    <link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/css/select2.min.css" rel="stylesheet" />
    <!--===============================================================================================-->
    <style>
        .select2-container--material {
            width: 100% !important;
        }

        .select2-container {
            width: 100% !important;
        }

        .select2-selection:focus {
            outline: none;
        }
        .select2-search__field{
            border-radius: 8px !important;
        }

        .select2-search__field:focus {
            outline-color: #80bdff;
            border-radius: 8px !important;
        }

        .select2-container--default .select2-selection--single {
            border: none !important;
            box-shadow: 0 1px 2px rgba(0, 0, 0, 0.35) !important;
            min-height: 40px;
        }

        .select2-container--default .select2-selection--single .select2-selection__rendered{
            padding-left: 15px !important;
            line-height: 40px !important;
        }

        .select2-container--default .select2-selection--single .select2-selection__arrow{
            top: 6px !important;
        }
        .select2-results__options{
            border: white !important;
            box-shadow: 0 10px 20px 0px rgba(0, 0, 0, 0.1) !important;
            -moz-box-shadow: 0 10px 20px 0px rgba(0, 0, 0, 0.1) !important;
            -webkit-box-shadow: 0 10px 20px 0px rgba(0, 0, 0, 0.1) !important;
            -o-box-shadow: 0 10px 20px 0px rgba(0, 0, 0, 0.1) !important;
            -ms-box-shadow: 0 10px 20px 0px rgba(0, 0, 0, 0.1) !important;
        }

    </style>
    <body class="preloading">
        <jsp:include page="include/Preloading.jsp"/>
        <jsp:include page="include/ProfileModal.jsp"/>
        <section class="post-content">
            <div class="container-fluid">
                <form id="newPostForm" onsubmit="addPost();">
                    <input type="hidden" id="accountEmail" value="<s:property value="#session.accountEmail"/>">
                    <input type="hidden" id="userRole" value="<s:property value="#session.userRole"/>"/>
                    <input type="hidden" id="categoryModerator">
                    <div class="row">
                        <div class="col-md-4 mb-3">
                            <select class="select2" id="sltTopic" required>
                                <s:iterator value="listTopic">
                                    <option value="<s:property value="topicID"/>"><s:property value="topicName"/></option>
                                </s:iterator>
                            </select>
                        </div>
                        <div class="col-md-4 mb-3">
                            <select class="select2" id="sltCategory" required>
                                <s:iterator value="listCategory">
                                    <option value="<s:property value="categoryID"/>"><s:property value="categoryName"/></option>
                                </s:iterator>
                            </select>
                        </div>
                        <div class="col-md-4 mb-3">
                            <select class="select2" id="sltThread" required>
                                <s:iterator value="listThread">
                                    <option value="<s:property value="threadID"/>"><s:property value="threadName"/></option>
                                </s:iterator>
                            </select>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <textarea id="postTitle" class="form-control auto-textarea post-inp-color" placeholder="Enter title here..."
                                      aria-label="With textarea" style="text-rendering: auto;" required></textarea>
                        </div>
                    </div>
                    <br>
                    <div class="row">
                        <div class="col-md-12">
                            <textarea name="" id="editor1" placeholder="Type text content here..."
                                      required>Write content here...</textarea>
                            <br>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">
                            <button type="submit" class="btn btn-jump btn-post btn-shadow">POST</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </section>
    <!-- *scrollTop -->
    <div class="scrollTop">
        <a href="#" class="sclTop"><i class="far fa-arrow-alt-circle-up"></i></a>
    </div>
    <!-- *Footer -->
    <jsp:include page="include/footer.jsp"/>
</body>
<!--=============================================Jquery==================================================-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!--=============================================Select2==================================================-->
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-beta.1/dist/js/select2.min.js"></script>
<!--=============================================Bootstrap js==================================================-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<!-- <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.0/js/materialize.min.js"></script> -->
<script src="include/resources/js/base.js"></script>
<script src="include/asset/ckeditor/ckeditor.js"></script>

<script type="text/javascript">
                    // CKEDITOR
                    // config
                    config = {};
                    config.entities_latin = false;
                    config.lauguage = 'vi';
                    config.allowedContent = true;
                    config.removeFormatAttributes = '';
                    config.extraPlugins = 'autogrow';
                    // config.height = '80vh';

                    // Define changes to default configuration here.
                    // For complete reference see:
                    // http://docs.ckeditor.com/#!/api/CKEDITOR.config

                    // The toolbar groups arrangement, optimized for two toolbar rows.
                    config.toolbarGroups = [
                        {name: 'clipboard', groups: ['clipboard', 'undo']},
                        {name: 'editing', groups: ['find', 'selection', 'spellchecker']},
                        {name: 'links'},
                        {name: 'insert'},
                        {name: 'forms'},
                        {name: 'tools'},
                        {name: 'document', groups: ['mode', 'document', 'doctools']},
                        {name: 'others'},
                        '/',
                        {name: 'basicstyles', groups: ['basicstyles', 'cleanup']},
                        {name: 'paragraph', groups: ['list', 'indent', 'blocks', 'align', 'bidi']},
                        {name: 'styles'},
                        {name: 'colors'},
                        {name: 'about'}
                    ];

                    // Replace the <textarea id="editor1"> with a CKEditor 4
                    // instance, using default configuration.
                    CKEDITOR.replace('editor1', config);

                    $(document).ready(function () {
                        $(".select2").select2();
                    })
</script>
<script type="text/javascript">
    $("#sltTopic").change(function ()
    {
        var topicID = $(this).val();
        $.ajax({
            type: "GET",
            url: "adminGetCategoryInTopic?topicID=" + topicID,
            success: function (itr)
            {
                var categoryID = "";
                var categoryStr = "";
                var tmp = true;
                $.each(itr['listCategory1'], function ()
                {
                    if (tmp)
                    {
                        categoryID = this['categoryID'];
                    }
                    categoryStr += "<option value='" + this['categoryID'] + "'>" + this['categoryName'] + "</option>";
                });
                $("#sltCategory").html(categoryStr);
                $("#sltCategory").select2();
                $.ajax({
                    type: "GET",
                    url: "adminGetThreadInCategory?categoryID=" + categoryID,
                    success: function (itr)
                    {
                        var threadStr = "";
                        $.each(itr['listThread1'], function ()
                        {
                            threadStr += "<option value='" + this['threadID'] + "'>" + this['threadName'] + "</option>";
                        });
                        $("#sltThread").html(threadStr);
                        $("#sltThread").select2();
                    }
                });
            }
        });
    })
    $("#sltCategory").change(function ()
    {
        var categoryID = $(this).val();
        $.ajax({
            type: "GET",
            url: "getModerator?categoryID=" + categoryID,
            success: function (data)
            {
                var accountEmail = data['category'].user.accountEmail;
                $("#categoryModerator").val(accountEmail);
            }
        });
        $.ajax({
            type: "GET",
            url: "adminGetThreadInCategory?categoryID=" + categoryID,
            success: function (itr)
            {
                var threadStr = "";
                $.each(itr['listThread1'], function ()
                {
                    threadStr += "<option value='" + this['threadID'] + "'>" + this['threadName'] + "</option>";
                });
                $("#sltThread").html(threadStr);
                $("#sltThread").select2();
            }
        });
    })
    function addPost()
    {
        event.preventDefault();
        var postTitle = $("#postTitle").val();
        var postContent = CKEDITOR.instances["editor1"].getData();
        postContent = encodeURI(postContent);
        var threadID = $("#sltThread").val();
        var userRole = $("#userRole").val();
        var accountEmail = $("#accountEmail").val();
        var moderator = $("#categoryModerator").val()
        if ((userRole == 1) || ((userRole == 2) && (accountEmail == moderator)))
        {
            alert("Your post is uploaded to forum!")
            window.location = "AddNewPost?postTitle=" + postTitle + "&postContent=" + postContent + "&threadID=" + threadID + "&accountEmail=" + accountEmail + "&status=1";
        } else
        {
            alert("Your post is waiting for approvement!")
            window.location = "AddNewPost?postTitle=" + postTitle + "&postContent=" + postContent + "&threadID=" + threadID + "&accountEmail=" + accountEmail + "&status=2";
        }
    }
</script>
<script src="include/resources/js/Auth.js"></script>
<script src="include/resources/js/LogOut.js"></script>
</html>