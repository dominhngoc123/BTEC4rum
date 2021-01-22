<%-- 
    Document   : searchdetail
    Created on : Jan 21, 2021, 10:23:10 AM
    Author     : Ngoc Do Minh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">

    <jsp:include page="include/header.jsp"/>
    <jsp:include page="include/auth.jsp"/>
    <link rel="stylesheet" href="include/resources/css/searchdetail.css">
    <body class="preloading">
        <!-- *loading -->
        <jsp:include page="include/Preloading.jsp"/>
        <jsp:include page="include/ProfileModal.jsp"/>
        <!-- *Content -->
        <input type="hidden" id="searchTxt" value="<s:property value="searchContent"/>"/>
        <section class="content container-fluid">
            <!-- *content_contain header-->
            <div class="content_contain-header unselecttable">
                <div class="sortBy_container">
                    <!-- btn show/hide sortBy_list -->
                    <button type="button" class="btn_sortBy"><i class="fas fa-sort-alpha-down"></i>Sorted By</button>
                    <div class="sortBy_list">
                        <!-- sort by posts -->
                        <button type="button" class="btnSort-post btnSort btn-jump active" value="showPost"><i class="fas fa-book"></i>Posts</button>
                        <!-- sort by people -->
                        <button type="button" class="btnSort-people btnSort btn-jump" value="showUser"><i
                                class="fas fa-user-friends"></i>People</button>
                    </div>
                </div>
            </div>
            <!-- *content_contain bottom-->
            <div class="content_contain-bottom  unselecttable" id="content">
            </div>
        </section>
        <!-- *scrollTop -->
        <div class="scrollTop">
            <a href="#" class="sclTop"><i class="far fa-arrow-alt-circle-up"></i></a>
        </div>
        <!-- *Footer -->
        <jsp:include page="include/footer.jsp"/>
    </body>
    <!--=============================================Bootstrap js==================================================-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="include/resources/js/base.js"></script>
    <script src="include/resources/js/searchdetail.js"></script>
    <script type="text/javascript">
        $("#searchBox").on("submit", function ()
        {
            event.preventDefault();
            var searchContent = $(this).children("#postID").val();
            alert(searchContent);
            return false;
        });
    </script>
    <script src="include/resources/js/Auth.js"></script>
</html>
