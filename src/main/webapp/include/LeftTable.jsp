<%-- 
    Document   : LeftTable
    Created on : Dec 23, 2020, 4:00:13 PM
    Author     : Ngoc Do Minh
--%>

<%@taglib prefix="s" uri="/struts-tags"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<div class="content_left  unselecttable">
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
</div>
