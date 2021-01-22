<%-- 
    Document   : LeftTable
    Created on : Dec 23, 2020, 4:00:13 PM
    Author     : Ngoc Do Minh
--%>

<%@taglib prefix="s" uri="/struts-tags"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!-- *Content Left-->
<div class="content_left unselecttable">
    <div class="newPost">
        <!-- new post title -->
        <div class="newPost_title">New Post</div>
        <!-- new post content -->
        <div class="newPost_container_list">
            <s:iterator value="listNewPost" var="newPostLoop">
                <div class="newPost_container">
                    <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAJXiFFfvFmV53VYjhdlBAFK0gSxpZJn7onw&usqp=CAU" alt="">
                    <div class="newPost_content">
                        <div class="newPost_content_header">
                            <a href="getDetailPost?postID=<s:property value="postID"/>"><s:property value="postTitle"/></a>
                        </div>
                        <div class="newPost_content_bottom">
                            <!-- post desc -->
                            <div class="newPost_content_bottom_desc">
                                <div class="desc_author desc_author_newPost">
                                    <i class="far fa-user"></i> <s:property value="user.userFullName"/></div>
                                <div class="desc_cmt desc_cmt_newPost">
                                    <s:iterator value="newPostCommentCount" var="tmp"><s:if test="get(0) == #newPostLoop.postID"> <s:property value="get(1)"/></s:if></s:iterator> <i class="far fa-comment"></i>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </s:iterator>
        </div>
    </div>
    <div class="topScore">
        <div class="topScore_title">Top Score</div>
        <div class="topScore_container_list">
            <div class="topScore_people_container">
                <div class="topScore_people_container_left">
                    <div class="topScore_people_container_left_avatar modal-body-profile-pic">
                        <img src="https://hedieuhanh.com/wp-content/uploads/2019/08/anh-avatar-buc-minh-cuc-hai-huoc.jpg" alt="">
                    </div>
                </div>
                <div class="topScore_people_container_right">
                    <div class="topScore_people_container_right_header">
                        <p>
                            +
                            <span>396</span>
                        </p>
                        <p>vip</p>
                    </div>
                    <div class="topScore_people_container_right_bottom">
                        <span>Nguyen Van A (BTEC_HN)</span>
                    </div>
                </div>
            </div>
            <div class="topScore_people_container">
                <div class="topScore_people_container_left">
                    <div class="topScore_people_container_left_avatar modal-body-profile-pic">
                        <img src="https://scr.vn/wp-content/uploads/2020/07/H%C3%ACnh-avatar-c%C3%B4-g%C3%A1i-t%C3%B3c-ng%E1%BA%AFn-d%E1%BB%85-th%C6%B0%C6%A1ng.jpg" alt="">
                    </div>
                </div>
                <div class="topScore_people_container_right">
                    <div class="topScore_people_container_right_header">
                        <p>
                            +
                            <span>130</span>
                        </p>
                        <p>high grade</p>
                    </div>
                    <div class="topScore_people_container_right_bottom">
                        Nguyen Thi Lmao (BTEC_HCM) ád ád sad á
                    </div>
                </div>
            </div>
            <div class="topScore_people_container">
                <div class="topScore_people_container_left">
                    <div class="topScore_people_container_left_avatar modal-body-profile-pic">
                        <img
                            src="/resources/img/pic.png"
                            alt=""
                            data-toggle="modal"
                            data-target="#profile-modal"
                            >
                    </div>
                </div>
                <div class="topScore_people_container_right">
                    <div class="topScore_people_container_right_header">
                        <p>
                            +
                            <span>450</span>
                        </p>
                        <p>vip</p>
                    </div>
                    <div class="topScore_people_container_right_bottom">
                        <span data-toggle="modal" data-target="#profile-modal">John Doe</span>
                    </div>
                </div>
            </div>
            <div class="topScore_people_container">
                <div class="topScore_people_container_left">
                    <div class="topScore_people_container_left_avatar modal-body-profile-pic">
                        <img src="https://anhdepfree.com/wp-content/uploads/2019/01/avatar-den-bo-vest-dep_015639142.jpg" alt="">
                    </div>
                </div>
                <div class="topScore_people_container_right">
                    <div class="topScore_people_container_right_header">
                        <p>
                            +
                            <span>65</span>
                        </p>
                        <p>high grade</p>
                    </div>
                    <div class="topScore_people_container_right_bottom">
                        <span>John Wick</span>
                    </div>
                </div>
            </div>
            <div class="topScore_people_container">
                <div class="topScore_people_container_left">
                    <div class="topScore_people_container_left_avatar modal-body-profile-pic">
                        <img src="https://taoanhonline.com/wp-content/uploads/2019/08/hinh-anh-avatar-96.jpg" alt="">
                    </div>
                </div>
                <div class="topScore_people_container_right">
                    <div class="topScore_people_container_right_header">
                        <p>
                            +
                            <span>30</span>
                        </p>
                        <p>Positive</p>
                    </div>
                    <div class="topScore_people_container_right_bottom">
                        <span>John Constantine 1234567890123</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-------->
<!--<div class="content_left  unselecttable">
    <div class="table_left new-post">
        <h2><i class=" far fa-newspaper"></i><span>New post</span></h2>
        <table class="table_left-header">
            <tbody>
                <tr>
                    <td>Title</td>
                    <td>Date</td>
                    <td>Majors</td>
                </tr>
            </tbody>
        </table>
        <div class="table_left-scroll-table">
            <table class="table-striped table-hover" id="myTable9">
                <tbody>
<s:iterator value="listNewPost">
    <tr data-href="getDetailPost?postID=<s:property value="postID"/>">
        <td><s:property value="postTitle"/></td>
        <td><s:property value="approvedDate"/></td>
        <td><s:property value="thread.category.topic.topicID"/></td>
    </tr>
</s:iterator>
</tbody>
</table>
</div>

</div>
<div class="table_left top-score">
<h2><i class="fas fa-star-half-alt"></i><span>Top score</span></h2>
<table class="table_left-header table_left-header-top">
<tbody>
<tr>
<td>Name</td>
<td>Post</td>
<td>Score</td>
</tr>
</tbody>
</table>
<div class="table_left-scroll-table table_left-scroll-table-top">
<table class="table-striped table-hover">
<tbody></tbody>
<tr data-href="#">
<td>Nguyen Van A asda asd asd as d asd asd as asdasd as dasd asd asd asd asd</td>
<td>2020</td>
<td>1000</td>
</tr>
<tr data-href="#">
<td>Nguyen Van A asda asd asd as d asd asd as asdasd as dasd asd asd asd asd</td>
<td>2020</td>
<td>1000</td>
</tr>
<tr data-href="#">
<td>Nguyen Van A asda asd asd as d asd asd as asdasd as dasd asd asd asd asd</td>
<td>2020</td>
<td>1000</td>
</tr>
<tr data-href="#">
<td>Nguyen Van A asda asd asd as d asd asd as asdasd as dasd asd asd asd asd</td>
<td>2020</td>
<td>1000</td>
</tr>
<tr data-href="#">
<td>Nguyen Van A asda asd asd as d asd asd as asdasd as dasd asd asd asd asd</td>
<td>2020</td>
<td>1000</td>
</tr>
<tr data-href="#">
<td>Nguyen Van A asda asd asd as d asd asd as asdasd as dasd asd asd asd asd</td>
<td>2020</td>
<td>1000</td>
</tr>
<tr data-href="#">
<td>Nguyen Van A asda asd asd as d asd asd as asdasd as dasd asd asd asd asd</td>
<td>2020</td>
<td>1000</td>
</tr>
<tr data-href="#">
<td>Nguyen Van A asda asd asd as d asd asd as asdasd as dasd asd asd asd asd</td>
<td>2020</td>
<td>1000</td>
</tr>
<tr data-href="#">
<td>Nguyen Van A asda asd asd as d asd asd as asdasd as dasd asd asd asd asd</td>
<td>2020</td>
<td>1000</td>
</tr>
<tr data-href="#">
<td>Nguyen Van A asda asd asd as d asd asd as asdasd as dasd asd asd asd asd</td>
<td>2020</td>
<td>1000</td>
</tr>

</table>
</div>
</div>
</div>-->
