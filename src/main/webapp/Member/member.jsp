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
    <body>
        <section id="content" style="margin-top: 80px;">
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
                <div class="post">
                    <a href="CreateNewPost">
                        Post <i class="fas fa-pen-nib"></i>
                    </a>
                </div>
                <div class="limiter">
                    <div class="container-table100">
                        <div class="wrap-table100">
                            <div class="forum-name"><a href="forumIT.html"><i class="fas fa-server"></i> Information
                                    Technology</a></div>
                            <div class="table100 ver2 m-b-110">
                                <div class="table100-head">
                                    <table>
                                        <thead>
                                            <tr class="row100 head">
                                                <th class="cell100 column1">Class name</th>
                                                <th class="cell100 column2">Type</th>
                                                <th class="cell100 column3">Hours</th>
                                                <th class="cell100 column4">Trainer</th>
                                                <th class="cell100 column5">Spots</th>
                                            </tr>
                                        </thead>
                                    </table>
                                </div>

                                <div class="table100-body js-pscroll">
                                    <table>
                                        <tbody>
                                        <a href="#">
                                            <tr class="row100 body">
                                                <td class="cell100 column1"><a href="postdetail.html">Like a
                                                        butterfly</a></td>
                                                <td class="cell100 column2">Boxing</td>
                                                <td class="cell100 column3">9:00 AM - 11:00 AM</td>
                                                <td class="cell100 column4">Aaron Chapman</td>
                                                <td class="cell100 column5">10</td>
                                            </tr>
                                        </a>

                                        <tr class="row100 body">
                                            <td class="cell100 column1">Mind & Body</td>
                                            <td class="cell100 column2">Yoga</td>
                                            <td class="cell100 column3">8:00 AM - 9:00 AM</td>
                                            <td class="cell100 column4">Adam Stewart</td>
                                            <td class="cell100 column5">15</td>
                                        </tr>

                                        <tr class="row100 body">
                                            <td class="cell100 column1">Crit Cardio</td>
                                            <td class="cell100 column2">Gym</td>
                                            <td class="cell100 column3">9:00 AM - 10:00 AM</td>
                                            <td class="cell100 column4">Aaron Chapman</td>
                                            <td class="cell100 column5">10</td>
                                        </tr>

                                        <tr class="row100 body">
                                            <td class="cell100 column1">Wheel Pose Full Posture</td>
                                            <td class="cell100 column2">Yoga</td>
                                            <td class="cell100 column3">7:00 AM - 8:30 AM</td>
                                            <td class="cell100 column4">Donna Wilson</td>
                                            <td class="cell100 column5">15</td>
                                        </tr>

                                        <tr class="row100 body">
                                            <td class="cell100 column1">Playful Dancer's Flow</td>
                                            <td class="cell100 column2">Yoga</td>
                                            <td class="cell100 column3">8:00 AM - 9:00 AM</td>
                                            <td class="cell100 column4">Donna Wilson</td>
                                            <td class="cell100 column5">10</td>
                                        </tr>

                                        <tr class="row100 body">
                                            <td class="cell100 column1">Zumba Dance</td>
                                            <td class="cell100 column2">Dance</td>
                                            <td class="cell100 column3">5:00 PM - 7:00 PM</td>
                                            <td class="cell100 column4">Donna Wilson</td>
                                            <td class="cell100 column5">20</td>
                                        </tr>

                                        <tr class="row100 body">
                                            <td class="cell100 column1">Cardio Blast</td>
                                            <td class="cell100 column2">Gym</td>
                                            <td class="cell100 column3">5:00 PM - 7:00 PM</td>
                                            <td class="cell100 column4">Randy Porter</td>
                                            <td class="cell100 column5">10</td>
                                        </tr>

                                        <tr class="row100 body">
                                            <td class="cell100 column1">Pilates Reformer</td>
                                            <td class="cell100 column2">Gym</td>
                                            <td class="cell100 column3">8:00 AM - 9:00 AM</td>
                                            <td class="cell100 column4">Randy Porter</td>
                                            <td class="cell100 column5">10</td>
                                        </tr>

                                        <tr class="row100 body">
                                            <td class="cell100 column1">Supple Spine and Shoulders</td>
                                            <td class="cell100 column2">Yoga</td>
                                            <td class="cell100 column3">6:30 AM - 8:00 AM</td>
                                            <td class="cell100 column4">Randy Porter</td>
                                            <td class="cell100 column5">15</td>
                                        </tr>

                                        <tr class="row100 body">
                                            <td class="cell100 column1">Yoga for Divas</td>
                                            <td class="cell100 column2">Yoga</td>
                                            <td class="cell100 column3">9:00 AM - 11:00 AM</td>
                                            <td class="cell100 column4">Donna Wilson</td>
                                            <td class="cell100 column5">20</td>
                                        </tr>

                                        <tr class="row100 body">
                                            <td class="cell100 column1">Virtual Cycle</td>
                                            <td class="cell100 column2">Gym</td>
                                            <td class="cell100 column3">8:00 AM - 9:00 AM</td>
                                            <td class="cell100 column4">Randy Porter</td>
                                            <td class="cell100 column5">20</td>
                                        </tr>

                                        <tr class="row100 body">
                                            <td class="cell100 column1">Like a butterfly</td>
                                            <td class="cell100 column2">Boxing</td>
                                            <td class="cell100 column3">9:00 AM - 11:00 AM</td>
                                            <td class="cell100 column4">Aaron Chapman</td>
                                            <td class="cell100 column5">10</td>
                                        </tr>

                                        <tr class="row100 body">
                                            <td class="cell100 column1">Mind & Body</td>
                                            <td class="cell100 column2">Yoga</td>
                                            <td class="cell100 column3">8:00 AM - 9:00 AM</td>
                                            <td class="cell100 column4">Adam Stewart</td>
                                            <td class="cell100 column5">15</td>
                                        </tr>

                                        <tr class="row100 body">
                                            <td class="cell100 column1">Crit Cardio</td>
                                            <td class="cell100 column2">Gym</td>
                                            <td class="cell100 column3">9:00 AM - 10:00 AM</td>
                                            <td class="cell100 column4">Aaron Chapman</td>
                                            <td class="cell100 column5">10</td>
                                        </tr>

                                        <tr class="row100 body">
                                            <td class="cell100 column1">Wheel Pose Full Posture</td>
                                            <td class="cell100 column2">Yoga</td>
                                            <td class="cell100 column3">7:00 AM - 8:30 AM</td>
                                            <td class="cell100 column4">Donna Wilson</td>
                                            <td class="cell100 column5">15</td>
                                        </tr>

                                        <tr class="row100 body">
                                            <td class="cell100 column1">Playful Dancer's Flow</td>
                                            <td class="cell100 column2">Yoga</td>
                                            <td class="cell100 column3">8:00 AM - 9:00 AM</td>
                                            <td class="cell100 column4">Donna Wilson</td>
                                            <td class="cell100 column5">10</td>
                                        </tr>

                                        <tr class="row100 body">
                                            <td class="cell100 column1">Zumba Dance</td>
                                            <td class="cell100 column2">Dance</td>
                                            <td class="cell100 column3">5:00 PM - 7:00 PM</td>
                                            <td class="cell100 column4">Donna Wilson</td>
                                            <td class="cell100 column5">20</td>
                                        </tr>

                                        <tr class="row100 body">
                                            <td class="cell100 column1">Cardio Blast</td>
                                            <td class="cell100 column2">Gym</td>
                                            <td class="cell100 column3">5:00 PM - 7:00 PM</td>
                                            <td class="cell100 column4">Randy Porter</td>
                                            <td class="cell100 column5">10</td>
                                        </tr>

                                        <tr class="row100 body">
                                            <td class="cell100 column1">Pilates Reformer</td>
                                            <td class="cell100 column2">Gym</td>
                                            <td class="cell100 column3">8:00 AM - 9:00 AM</td>
                                            <td class="cell100 column4">Randy Porter</td>
                                            <td class="cell100 column5">10</td>
                                        </tr>

                                        <tr class="row100 body">
                                            <td class="cell100 column1">Supple Spine and Shoulders</td>
                                            <td class="cell100 column2">Yoga</td>
                                            <td class="cell100 column3">6:30 AM - 8:00 AM</td>
                                            <td class="cell100 column4">Randy Porter</td>
                                            <td class="cell100 column5">15</td>
                                        </tr>

                                        <tr class="row100 body">
                                            <td class="cell100 column1">Yoga for Divas</td>
                                            <td class="cell100 column2">Yoga</td>
                                            <td class="cell100 column3">9:00 AM - 11:00 AM</td>
                                            <td class="cell100 column4">Donna Wilson</td>
                                            <td class="cell100 column5">20</td>
                                        </tr>

                                        <tr class="row100 body">
                                            <td class="cell100 column1">Virtual Cycle</td>
                                            <td class="cell100 column2">Gym</td>
                                            <td class="cell100 column3">8:00 AM - 9:00 AM</td>
                                            <td class="cell100 column4">Randy Porter</td>
                                            <td class="cell100 column5">20</td>
                                        </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="forum-name forum-name-2"><a href=""><i class="fas fa-paint-brush"></i> GRAPHIC
                                    DESIGN </a></div>
                            <div class="table100 ver2 m-b-110">
                                <div class="table100-head">
                                    <table>
                                        <thead>
                                            <tr class="row100 head">
                                                <th class="cell100 column1">Class name</th>
                                                <th class="cell100 column2">Type</th>
                                                <th class="cell100 column3">Hours</th>
                                                <th class="cell100 column4">Trainer</th>
                                                <th class="cell100 column5">Spots</th>
                                            </tr>
                                        </thead>
                                    </table>
                                </div>

                                <div class="table100-body js-pscroll">
                                    <table>
                                        <tbody>
                                            <tr class="row100 body">
                                                <td class="cell100 column1">Like a butterfly</td>
                                                <td class="cell100 column2">Boxing</td>
                                                <td class="cell100 column3">9:00 AM - 11:00 AM</td>
                                                <td class="cell100 column4">Aaron Chapman</td>
                                                <td class="cell100 column5">10</td>
                                            </tr>

                                            <tr class="row100 body">
                                                <td class="cell100 column1">Mind & Body</td>
                                                <td class="cell100 column2">Yoga</td>
                                                <td class="cell100 column3">8:00 AM - 9:00 AM</td>
                                                <td class="cell100 column4">Adam Stewart</td>
                                                <td class="cell100 column5">15</td>
                                            </tr>

                                            <tr class="row100 body">
                                                <td class="cell100 column1">Crit Cardio</td>
                                                <td class="cell100 column2">Gym</td>
                                                <td class="cell100 column3">9:00 AM - 10:00 AM</td>
                                                <td class="cell100 column4">Aaron Chapman</td>
                                                <td class="cell100 column5">10</td>
                                            </tr>

                                            <tr class="row100 body">
                                                <td class="cell100 column1">Wheel Pose Full Posture</td>
                                                <td class="cell100 column2">Yoga</td>
                                                <td class="cell100 column3">7:00 AM - 8:30 AM</td>
                                                <td class="cell100 column4">Donna Wilson</td>
                                                <td class="cell100 column5">15</td>
                                            </tr>

                                            <tr class="row100 body">
                                                <td class="cell100 column1">Playful Dancer's Flow</td>
                                                <td class="cell100 column2">Yoga</td>
                                                <td class="cell100 column3">8:00 AM - 9:00 AM</td>
                                                <td class="cell100 column4">Donna Wilson</td>
                                                <td class="cell100 column5">10</td>
                                            </tr>

                                            <tr class="row100 body">
                                                <td class="cell100 column1">Zumba Dance</td>
                                                <td class="cell100 column2">Dance</td>
                                                <td class="cell100 column3">5:00 PM - 7:00 PM</td>
                                                <td class="cell100 column4">Donna Wilson</td>
                                                <td class="cell100 column5">20</td>
                                            </tr>

                                            <tr class="row100 body">
                                                <td class="cell100 column1">Cardio Blast</td>
                                                <td class="cell100 column2">Gym</td>
                                                <td class="cell100 column3">5:00 PM - 7:00 PM</td>
                                                <td class="cell100 column4">Randy Porter</td>
                                                <td class="cell100 column5">10</td>
                                            </tr>

                                            <tr class="row100 body">
                                                <td class="cell100 column1">Pilates Reformer</td>
                                                <td class="cell100 column2">Gym</td>
                                                <td class="cell100 column3">8:00 AM - 9:00 AM</td>
                                                <td class="cell100 column4">Randy Porter</td>
                                                <td class="cell100 column5">10</td>
                                            </tr>

                                            <tr class="row100 body">
                                                <td class="cell100 column1">Supple Spine and Shoulders</td>
                                                <td class="cell100 column2">Yoga</td>
                                                <td class="cell100 column3">6:30 AM - 8:00 AM</td>
                                                <td class="cell100 column4">Randy Porter</td>
                                                <td class="cell100 column5">15</td>
                                            </tr>

                                            <tr class="row100 body">
                                                <td class="cell100 column1">Yoga for Divas</td>
                                                <td class="cell100 column2">Yoga</td>
                                                <td class="cell100 column3">9:00 AM - 11:00 AM</td>
                                                <td class="cell100 column4">Donna Wilson</td>
                                                <td class="cell100 column5">20</td>
                                            </tr>

                                            <tr class="row100 body">
                                                <td class="cell100 column1">Virtual Cycle</td>
                                                <td class="cell100 column2">Gym</td>
                                                <td class="cell100 column3">8:00 AM - 9:00 AM</td>
                                                <td class="cell100 column4">Randy Porter</td>
                                                <td class="cell100 column5">20</td>
                                            </tr>

                                            <tr class="row100 body">
                                                <td class="cell100 column1">Like a butterfly</td>
                                                <td class="cell100 column2">Boxing</td>
                                                <td class="cell100 column3">9:00 AM - 11:00 AM</td>
                                                <td class="cell100 column4">Aaron Chapman</td>
                                                <td class="cell100 column5">10</td>
                                            </tr>

                                            <tr class="row100 body">
                                                <td class="cell100 column1">Mind & Body</td>
                                                <td class="cell100 column2">Yoga</td>
                                                <td class="cell100 column3">8:00 AM - 9:00 AM</td>
                                                <td class="cell100 column4">Adam Stewart</td>
                                                <td class="cell100 column5">15</td>
                                            </tr>

                                            <tr class="row100 body">
                                                <td class="cell100 column1">Crit Cardio</td>
                                                <td class="cell100 column2">Gym</td>
                                                <td class="cell100 column3">9:00 AM - 10:00 AM</td>
                                                <td class="cell100 column4">Aaron Chapman</td>
                                                <td class="cell100 column5">10</td>
                                            </tr>

                                            <tr class="row100 body">
                                                <td class="cell100 column1">Wheel Pose Full Posture</td>
                                                <td class="cell100 column2">Yoga</td>
                                                <td class="cell100 column3">7:00 AM - 8:30 AM</td>
                                                <td class="cell100 column4">Donna Wilson</td>
                                                <td class="cell100 column5">15</td>
                                            </tr>

                                            <tr class="row100 body">
                                                <td class="cell100 column1">Playful Dancer's Flow</td>
                                                <td class="cell100 column2">Yoga</td>
                                                <td class="cell100 column3">8:00 AM - 9:00 AM</td>
                                                <td class="cell100 column4">Donna Wilson</td>
                                                <td class="cell100 column5">10</td>
                                            </tr>

                                            <tr class="row100 body">
                                                <td class="cell100 column1">Zumba Dance</td>
                                                <td class="cell100 column2">Dance</td>
                                                <td class="cell100 column3">5:00 PM - 7:00 PM</td>
                                                <td class="cell100 column4">Donna Wilson</td>
                                                <td class="cell100 column5">20</td>
                                            </tr>

                                            <tr class="row100 body">
                                                <td class="cell100 column1">Cardio Blast</td>
                                                <td class="cell100 column2">Gym</td>
                                                <td class="cell100 column3">5:00 PM - 7:00 PM</td>
                                                <td class="cell100 column4">Randy Porter</td>
                                                <td class="cell100 column5">10</td>
                                            </tr>

                                            <tr class="row100 body">
                                                <td class="cell100 column1">Pilates Reformer</td>
                                                <td class="cell100 column2">Gym</td>
                                                <td class="cell100 column3">8:00 AM - 9:00 AM</td>
                                                <td class="cell100 column4">Randy Porter</td>
                                                <td class="cell100 column5">10</td>
                                            </tr>

                                            <tr class="row100 body">
                                                <td class="cell100 column1">Supple Spine and Shoulders</td>
                                                <td class="cell100 column2">Yoga</td>
                                                <td class="cell100 column3">6:30 AM - 8:00 AM</td>
                                                <td class="cell100 column4">Randy Porter</td>
                                                <td class="cell100 column5">15</td>
                                            </tr>

                                            <tr class="row100 body">
                                                <td class="cell100 column1">Yoga for Divas</td>
                                                <td class="cell100 column2">Yoga</td>
                                                <td class="cell100 column3">9:00 AM - 11:00 AM</td>
                                                <td class="cell100 column4">Donna Wilson</td>
                                                <td class="cell100 column5">20</td>
                                            </tr>

                                            <tr class="row100 body">
                                                <td class="cell100 column1">Virtual Cycle</td>
                                                <td class="cell100 column2">Gym</td>
                                                <td class="cell100 column3">8:00 AM - 9:00 AM</td>
                                                <td class="cell100 column4">Randy Porter</td>
                                                <td class="cell100 column5">20</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>

                            <div class="forum-name forum-name-3"><a href=""><i class="far fa-chart-bar"></i> BUSINESS
                                    ADMINISTRATION</a>
                            </div>
                            <div class="table100 ver2 m-b-110">
                                <div class="table100-head">
                                    <table>
                                        <thead>
                                            <tr class="row100 head">
                                                <th class="cell100 column1">Class name</th>
                                                <th class="cell100 column2">Type</th>
                                                <th class="cell100 column3">Hours</th>
                                                <th class="cell100 column4">Trainer</th>
                                                <th class="cell100 column5">Spots</th>
                                            </tr>
                                        </thead>
                                    </table>
                                </div>

                                <div class="table100-body js-pscroll">
                                    <table>
                                        <tbody>
                                            <tr class="row100 body">
                                                <td class="cell100 column1">Like a butterfly</td>
                                                <td class="cell100 column2">Boxing</td>
                                                <td class="cell100 column3">9:00 AM - 11:00 AM</td>
                                                <td class="cell100 column4">Aaron Chapman</td>
                                                <td class="cell100 column5">10</td>
                                            </tr>

                                            <tr class="row100 body">
                                                <td class="cell100 column1">Mind & Body</td>
                                                <td class="cell100 column2">Yoga</td>
                                                <td class="cell100 column3">8:00 AM - 9:00 AM</td>
                                                <td class="cell100 column4">Adam Stewart</td>
                                                <td class="cell100 column5">15</td>
                                            </tr>

                                            <tr class="row100 body">
                                                <td class="cell100 column1">Crit Cardio</td>
                                                <td class="cell100 column2">Gym</td>
                                                <td class="cell100 column3">9:00 AM - 10:00 AM</td>
                                                <td class="cell100 column4">Aaron Chapman</td>
                                                <td class="cell100 column5">10</td>
                                            </tr>

                                            <tr class="row100 body">
                                                <td class="cell100 column1">Wheel Pose Full Posture</td>
                                                <td class="cell100 column2">Yoga</td>
                                                <td class="cell100 column3">7:00 AM - 8:30 AM</td>
                                                <td class="cell100 column4">Donna Wilson</td>
                                                <td class="cell100 column5">15</td>
                                            </tr>

                                            <tr class="row100 body">
                                                <td class="cell100 column1">Playful Dancer's Flow</td>
                                                <td class="cell100 column2">Yoga</td>
                                                <td class="cell100 column3">8:00 AM - 9:00 AM</td>
                                                <td class="cell100 column4">Donna Wilson</td>
                                                <td class="cell100 column5">10</td>
                                            </tr>

                                            <tr class="row100 body">
                                                <td class="cell100 column1">Zumba Dance</td>
                                                <td class="cell100 column2">Dance</td>
                                                <td class="cell100 column3">5:00 PM - 7:00 PM</td>
                                                <td class="cell100 column4">Donna Wilson</td>
                                                <td class="cell100 column5">20</td>
                                            </tr>

                                            <tr class="row100 body">
                                                <td class="cell100 column1">Cardio Blast</td>
                                                <td class="cell100 column2">Gym</td>
                                                <td class="cell100 column3">5:00 PM - 7:00 PM</td>
                                                <td class="cell100 column4">Randy Porter</td>
                                                <td class="cell100 column5">10</td>
                                            </tr>

                                            <tr class="row100 body">
                                                <td class="cell100 column1">Pilates Reformer</td>
                                                <td class="cell100 column2">Gym</td>
                                                <td class="cell100 column3">8:00 AM - 9:00 AM</td>
                                                <td class="cell100 column4">Randy Porter</td>
                                                <td class="cell100 column5">10</td>
                                            </tr>

                                            <tr class="row100 body">
                                                <td class="cell100 column1">Supple Spine and Shoulders</td>
                                                <td class="cell100 column2">Yoga</td>
                                                <td class="cell100 column3">6:30 AM - 8:00 AM</td>
                                                <td class="cell100 column4">Randy Porter</td>
                                                <td class="cell100 column5">15</td>
                                            </tr>

                                            <tr class="row100 body">
                                                <td class="cell100 column1">Yoga for Divas</td>
                                                <td class="cell100 column2">Yoga</td>
                                                <td class="cell100 column3">9:00 AM - 11:00 AM</td>
                                                <td class="cell100 column4">Donna Wilson</td>
                                                <td class="cell100 column5">20</td>
                                            </tr>

                                            <tr class="row100 body">
                                                <td class="cell100 column1">Virtual Cycle</td>
                                                <td class="cell100 column2">Gym</td>
                                                <td class="cell100 column3">8:00 AM - 9:00 AM</td>
                                                <td class="cell100 column4">Randy Porter</td>
                                                <td class="cell100 column5">20</td>
                                            </tr>

                                            <tr class="row100 body">
                                                <td class="cell100 column1">Like a butterfly</td>
                                                <td class="cell100 column2">Boxing</td>
                                                <td class="cell100 column3">9:00 AM - 11:00 AM</td>
                                                <td class="cell100 column4">Aaron Chapman</td>
                                                <td class="cell100 column5">10</td>
                                            </tr>

                                            <tr class="row100 body">
                                                <td class="cell100 column1">Mind & Body</td>
                                                <td class="cell100 column2">Yoga</td>
                                                <td class="cell100 column3">8:00 AM - 9:00 AM</td>
                                                <td class="cell100 column4">Adam Stewart</td>
                                                <td class="cell100 column5">15</td>
                                            </tr>

                                            <tr class="row100 body">
                                                <td class="cell100 column1">Crit Cardio</td>
                                                <td class="cell100 column2">Gym</td>
                                                <td class="cell100 column3">9:00 AM - 10:00 AM</td>
                                                <td class="cell100 column4">Aaron Chapman</td>
                                                <td class="cell100 column5">10</td>
                                            </tr>

                                            <tr class="row100 body">
                                                <td class="cell100 column1">Wheel Pose Full Posture</td>
                                                <td class="cell100 column2">Yoga</td>
                                                <td class="cell100 column3">7:00 AM - 8:30 AM</td>
                                                <td class="cell100 column4">Donna Wilson</td>
                                                <td class="cell100 column5">15</td>
                                            </tr>

                                            <tr class="row100 body">
                                                <td class="cell100 column1">Playful Dancer's Flow</td>
                                                <td class="cell100 column2">Yoga</td>
                                                <td class="cell100 column3">8:00 AM - 9:00 AM</td>
                                                <td class="cell100 column4">Donna Wilson</td>
                                                <td class="cell100 column5">10</td>
                                            </tr>

                                            <tr class="row100 body">
                                                <td class="cell100 column1">Zumba Dance</td>
                                                <td class="cell100 column2">Dance</td>
                                                <td class="cell100 column3">5:00 PM - 7:00 PM</td>
                                                <td class="cell100 column4">Donna Wilson</td>
                                                <td class="cell100 column5">20</td>
                                            </tr>

                                            <tr class="row100 body">
                                                <td class="cell100 column1">Cardio Blast</td>
                                                <td class="cell100 column2">Gym</td>
                                                <td class="cell100 column3">5:00 PM - 7:00 PM</td>
                                                <td class="cell100 column4">Randy Porter</td>
                                                <td class="cell100 column5">10</td>
                                            </tr>

                                            <tr class="row100 body">
                                                <td class="cell100 column1">Pilates Reformer</td>
                                                <td class="cell100 column2">Gym</td>
                                                <td class="cell100 column3">8:00 AM - 9:00 AM</td>
                                                <td class="cell100 column4">Randy Porter</td>
                                                <td class="cell100 column5">10</td>
                                            </tr>

                                            <tr class="row100 body">
                                                <td class="cell100 column1">Supple Spine and Shoulders</td>
                                                <td class="cell100 column2">Yoga</td>
                                                <td class="cell100 column3">6:30 AM - 8:00 AM</td>
                                                <td class="cell100 column4">Randy Porter</td>
                                                <td class="cell100 column5">15</td>
                                            </tr>

                                            <tr class="row100 body">
                                                <td class="cell100 column1">Yoga for Divas</td>
                                                <td class="cell100 column2">Yoga</td>
                                                <td class="cell100 column3">9:00 AM - 11:00 AM</td>
                                                <td class="cell100 column4">Donna Wilson</td>
                                                <td class="cell100 column5">20</td>
                                            </tr>

                                            <tr class="row100 body">
                                                <td class="cell100 column1">Virtual Cycle</td>
                                                <td class="cell100 column2">Gym</td>
                                                <td class="cell100 column3">8:00 AM - 9:00 AM</td>
                                                <td class="cell100 column4">Randy Porter</td>
                                                <td class="cell100 column5">20</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <jsp:include page="../include/footer.jsp"/>
    </body>
</html>
