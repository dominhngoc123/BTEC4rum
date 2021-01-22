<%-- 
    Document   : member
    Created on : Oct 28, 2020, 10:28:26 AM
    Author     : Ngoc Do Minh
--%>

<%@taglib prefix="s" uri="/struts-tags"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="../include/header.jsp"/>
    <jsp:include page="../include/auth.jsp"/>
    <link rel="stylesheet" href="include/resources/css/index.css">
    <body class="preloading">
        <jsp:include page="../include/Preloading.jsp"/>
        <jsp:include page="../include/ProfileModal.jsp"/>
        <!-- *Content -->
        <section class="container-fluid content">
            <jsp:include page="../include/LeftTable.jsp"/>
            <!-- *Content Right-->
            <div class="content_right  unselecttable">
                <!-- all post -->
                <div class="content_right_in">
                    <s:iterator value="listForumPost" var="loop1">
                        <s:if test="thread.category.topic.topicID == 'T01'">
                            <!-- post container -->
                            <div class="post_container">
                                <!-- post container left -->
                                <div class="post_container_left">
                                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAJXiFFfvFmV53VYjhdlBAFK0gSxpZJn7onw&usqp=CAU"
                                         alt="">
                                </div>
                                <!-- post container right -->
                                <div class="post_container_right">
                                    <div class="post_container_right_header">
                                        <!-- post title -->
                                        <div class="post_container_right_header-title">
                                            <a href="getDetailPost?postID=<s:property value="postID"/>"><s:property value="postTitle"/></a>
                                        </div>
                                        <!-- post desc -->
                                        <div class="post_container_right_header-desc">
                                            <div class="desc_author"><i class="far fa-user"></i> <s:property value="user.userFullName"/></div>
                                            <div class="desc_time"><i class="far fa-clock"> <s:property value="approvedDate"/></i></div>
                                            <div class="desc_cmt"><i class="far fa-comment"></i> <s:iterator value="commentCount" var="tmp"><s:if test="get(0) == #loop1.postID"><s:property value="get(1)"/></s:if></s:iterator></div>
                                            </div>
                                        </div>
                                        <!-- post content -->
                                        <div class="post_container_right_body">
                                        <s:property value="postContent" escape="false"/>
                                    </div>
                                    <!-- post footer -->
                                    <div class="post_container_right_footer">
                                        <a href="getDetailPost?postID=<s:property value="postID"/>">Read more</a>
                                    </div>
                                </div>
                            </div>
                        </s:if>
                    </s:iterator>


                    <!-- btn Post -->
                    <div class="btn_cmt_action">
                        <a href="CreateNewPost"><img src="include/resources/img/btnPost2.png" alt="" class="btn-jump" title="Post"></a>
                    </div>
                </div>

        </section>
        <!-- *scrollTop -->
        <div class="scrollTop">
            <a href="#" class="sclTop"><i class="far fa-arrow-alt-circle-up"></i></a>
        </div>
        <jsp:include page="../include/footer.jsp"/>
    </body>
    <!--=============================================Bootstrap js==================================================-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.0/js/materialize.min.js"></script>
    <script src="include/resources/js/memberpage.js" type="text/javascript"></script>
    <script src="include/resources/js/base.js"></script>
    <script src="include/resources/js/LogOut.js"></script>
    <script>
        function sortTableIT(n) {
            var table, rows, switching, i, x, y, shouldSwitch, dir, switchcount = 0;
            table = document.getElementById("tableIT");
            switching = true;
            // Set the sorting direction to ascending:
            dir = "asc";
            /* Make a loop that will continue until
             no switching has been done: */
            while (switching) {
                // Start by saying: no switching is done:
                switching = false;
                rows = table.rows;
                /* Loop through all table rows (except the
                 first, which contains table headers): */
                for (i = 0; i < (rows.length - 1); i++) {
                    // Start by saying there should be no switching:
                    shouldSwitch = false;
                    /* Get the two elements you want to compare,
                     one from current row and one from the next: */
                    x = rows[i].getElementsByTagName("TD")[n];
                    y = rows[i + 1].getElementsByTagName("TD")[n];
                    /* Check if the two rows should switch place,
                     based on the direction, asc or desc: */
                    if (dir == "asc") {
                        if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {
                            // If so, mark as a switch and break the loop:
                            shouldSwitch = true;
                            break;
                        }
                    } else if (dir == "desc") {
                        if (x.innerHTML.toLowerCase() < y.innerHTML.toLowerCase()) {
                            // If so, mark as a switch and break the loop:
                            shouldSwitch = true;
                            break;
                        }
                    }
                }
                if (shouldSwitch) {
                    /* If a switch has been marked, make the switch
                     and mark that a switch has been done: */
                    rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
                    switching = true;
                    // Each time a switch is done, increase this count by 1:
                    switchcount++;
                } else {
                    /* If no switching has been done AND the direction is "asc",
                     set the direction to "desc" and run the while loop again. */
                    if (switchcount == 0 && dir == "asc") {
                        dir = "desc";
                        switching = true;
                    }
                }
            }
        }
        function sortTableGD(n) {
            var table, rows, switching, i, x, y, shouldSwitch, dir, switchcount = 0;
            table = document.getElementById("tableGD");
            switching = true;
            // Set the sorting direction to ascending:
            dir = "asc";
            /* Make a loop that will continue until
             no switching has been done: */
            while (switching) {
                // Start by saying: no switching is done:
                switching = false;
                rows = table.rows;
                /* Loop through all table rows (except the
                 first, which contains table headers): */
                for (i = 0; i < (rows.length - 1); i++) {
                    // Start by saying there should be no switching:
                    shouldSwitch = false;
                    /* Get the two elements you want to compare,
                     one from current row and one from the next: */
                    x = rows[i].getElementsByTagName("TD")[n];
                    y = rows[i + 1].getElementsByTagName("TD")[n];
                    /* Check if the two rows should switch place,
                     based on the direction, asc or desc: */
                    if (dir == "asc") {
                        if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {
                            // If so, mark as a switch and break the loop:
                            shouldSwitch = true;
                            break;
                        }
                    } else if (dir == "desc") {
                        if (x.innerHTML.toLowerCase() < y.innerHTML.toLowerCase()) {
                            // If so, mark as a switch and break the loop:
                            shouldSwitch = true;
                            break;
                        }
                    }
                }
                if (shouldSwitch) {
                    /* If a switch has been marked, make the switch
                     and mark that a switch has been done: */
                    rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
                    switching = true;
                    // Each time a switch is done, increase this count by 1:
                    switchcount++;
                } else {
                    /* If no switching has been done AND the direction is "asc",
                     set the direction to "desc" and run the while loop again. */
                    if (switchcount == 0 && dir == "asc") {
                        dir = "desc";
                        switching = true;
                    }
                }
            }
        }
        function sortTableBA(n) {
            var table, rows, switching, i, x, y, shouldSwitch, dir, switchcount = 0;
            table = document.getElementById("tableBA");
            switching = true;
            // Set the sorting direction to ascending:
            dir = "asc";
            /* Make a loop that will continue until
             no switching has been done: */
            while (switching) {
                // Start by saying: no switching is done:
                switching = false;
                rows = table.rows;
                /* Loop through all table rows (except the
                 first, which contains table headers): */
                for (i = 0; i < (rows.length - 1); i++) {
                    // Start by saying there should be no switching:
                    shouldSwitch = false;
                    /* Get the two elements you want to compare,
                     one from current row and one from the next: */
                    x = rows[i].getElementsByTagName("TD")[n];
                    y = rows[i + 1].getElementsByTagName("TD")[n];
                    /* Check if the two rows should switch place,
                     based on the direction, asc or desc: */
                    if (dir == "asc") {
                        if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {
                            // If so, mark as a switch and break the loop:
                            shouldSwitch = true;
                            break;
                        }
                    } else if (dir == "desc") {
                        if (x.innerHTML.toLowerCase() < y.innerHTML.toLowerCase()) {
                            // If so, mark as a switch and break the loop:
                            shouldSwitch = true;
                            break;
                        }
                    }
                }
                if (shouldSwitch) {
                    /* If a switch has been marked, make the switch
                     and mark that a switch has been done: */
                    rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
                    switching = true;
                    // Each time a switch is done, increase this count by 1:
                    switchcount++;
                } else {
                    /* If no switching has been done AND the direction is "asc",
                     set the direction to "desc" and run the while loop again. */
                    if (switchcount == 0 && dir == "asc") {
                        dir = "desc";
                        switching = true;
                    }
                }
            }
        }
    </script>
    <script src="https://apis.google.com/js/platform.js?onload=onLoad" async defer></script>
    <script src="../include/resources/js/Auth.js"></script>
</html>