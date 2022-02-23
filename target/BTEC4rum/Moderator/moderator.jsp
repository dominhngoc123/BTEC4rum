<%-- 
    Document   : moderator
    Created on : Oct 30, 2020, 9:25:40 AM
    Author     : Ngoc Do Minh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="../include/header.jsp"/>
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link href="https://fonts.googleapis.com/css?family=Ceviche+One&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
          integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <style type="text/css" media="screen">
        body {
            margin: 100px;
        }

        .form-control {
            margin-bottom: 20px;
        }

        .fixed_header {
            width: 100%;
            table-layout: fixed;
            border-collapse: collapse;
        }

        .fixed_header tbody {
            width: 100%;
            overflow: auto;
            height: 25rem;
        }

        .fixed_header thead tr {
            cursor: pointer;
        }

        iframe {
            width: 90%;
            height: 20rem;
            table-layout: fixed;
        }

        .about {
            padding: 1rem;
            margin: 1rem;
        }

        .dhwtj {
            font-family: 'Ceviche One', cursive;

        }

        .scroll-table {
            height: 500px;
            overflow-y: scroll;
            overflow-x: hidden; 
        }
        .scroll-table .fixed_thead th
        {
            position: sticky;
            top: 0;
        }
    </style>
    <body>
        <div id="tabSection" class="container">
            <ul class="nav nav-tabs" id="myTab" role="tablist">
                <li class="nav-item">
                    <a class="nav-link active" id="pendingPost" data-toggle="tab" href="#approvePost" role="tab" aria-controls="approvePost" aria-selected="true">Pending post</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="declinedPost" data-toggle="tab" href="#declinePost" role="tab" aria-controls="declinePost" aria-selected="false">Decline post</a>
                </li>
            </ul>
        </div>
        <div class="tab-content">
            <div class="tab-pane active" id="approvePost" role="tabpanel" aria-labelledby="pendingPost">
                <h3>Pending post</h3>
                <input class="form-control" id="myInput" type="text" placeholder="Type something to search.." label="searchbar">
                <div class="scroll-table">
                    <table class="table table-responsive-sm fixed_header ddj table-borderless table-fixed mb-0" id="ddj" cellspacing="0"
                           width="100%">
                        <thead class="thead-light fixed_thead">
                            <tr>
                                <th onclick="sortTable(0)">Post title</th>
                                <th onclick="sortTable(1)">Posted by</th>
                                <th onclick="sortTable(2)">Posted date</th>
                                <th onclick="sortTable(3)">Thread</th>
                                <th colspan="2" style="text-align: center;">Action</th>
                            </tr>
                        </thead>
                        <tbody id="myTable">
                            <tr>
                                <td>Java is hard</td>
                                <td>Ngoc Minh Do</td>
                                <td>10/20/2020</td>
                                <td>Java</td>
                                <td><a href="#" class="btn btn-primary">Approve</a></td>
                                <td><a href="#" class="btn btn-danger">Decline</a></td>
                            </tr>
                            <tr>
                                <td>PHP is easy</td>
                                <td>Ngoc Minh Do</td>
                                <td>10/20/2020</td>
                                <td>PHP</td>
                                <td><a href="#" class="btn btn-primary">Approve</a></td>
                                <td><a href="#" class="btn btn-danger">Decline</a></td>
                            </tr>
                            <tr>
                                <td>Java is easy</td>
                                <td>Ngoc Minh Do</td>
                                <td>10/20/2020</td>
                                <td>Java</td>
                                <td><a href="#" class="btn btn-primary">Approve</a></td>
                                <td><a href="#" class="btn btn-danger">Decline</a></td>
                            </tr>
                            <tr>
                                <td>Java is easy</td>
                                <td>Ngoc Minh Do</td>
                                <td>10/20/2020</td>
                                <td>Java</td>
                                <td><a href="#" class="btn btn-primary">Approve</a></td>
                                <td><a href="#" class="btn btn-danger">Decline</a></td>
                            </tr>
                            <tr>
                                <td>Java is easy</td>
                                <td>Ngoc Minh Do</td>
                                <td>10/20/2020</td>
                                <td>Java</td>
                                <td><a href="#" class="btn btn-primary">Approve</a></td>
                                <td><a href="#" class="btn btn-danger">Decline</a></td>
                            </tr>
                            <tr>
                                <td>Java is easy</td>
                                <td>Ngoc Minh Do</td>
                                <td>10/20/2020</td>
                                <td>Java</td>
                                <td><a href="#" class="btn btn-primary">Approve</a></td>
                                <td><a href="#" class="btn btn-danger">Decline</a></td>
                            </tr>
                            <tr>
                                <td>Java is easy</td>
                                <td>Ngoc Minh Do</td>
                                <td>10/20/2020</td>
                                <td>Java</td>
                                <td><a href="#" class="btn btn-primary">Approve</a></td>
                                <td><a href="#" class="btn btn-danger">Decline</a></td>
                            </tr>
                            <tr>
                                <td>Java is easy</td>
                                <td>Ngoc Minh Do</td>
                                <td>10/20/2020</td>
                                <td>Java</td>
                                <td><a href="#" class="btn btn-primary">Approve</a></td>
                                <td><a href="#" class="btn btn-danger">Decline</a></td>
                            </tr>
                            <tr>
                                <td>Java is easy</td>
                                <td>Ngoc Minh Do</td>
                                <td>10/20/2020</td>
                                <td>Java</td>
                                <td><a href="#" class="btn btn-primary">Approve</a></td>
                                <td><a href="#" class="btn btn-danger">Decline</a></td>
                            </tr>
                            <tr>
                                <td>Java is easy</td>
                                <td>Ngoc Minh Do</td>
                                <td>10/20/2020</td>
                                <td>Java</td>
                                <td><a href="#" class="btn btn-primary">Approve</a></td>
                                <td><a href="#" class="btn btn-danger">Decline</a></td>
                            </tr>
                            <tr>
                                <td>Java is easy</td>
                                <td>Ngoc Minh Do</td>
                                <td>10/20/2020</td>
                                <td>Java</td>
                                <td><a href="#" class="btn btn-primary">Approve</a></td>
                                <td><a href="#" class="btn btn-danger">Decline</a></td>
                            </tr>
                            <tr>
                                <td>Java is easy</td>
                                <td>Ngoc Minh Do</td>
                                <td>10/20/2020</td>
                                <td>Java</td>
                                <td><a href="#" class="btn btn-primary">Approve</a></td>
                                <td><a href="#" class="btn btn-danger">Decline</a></td>
                            </tr>
                            <tr>
                                <td>Java is easy</td>
                                <td>Ngoc Minh Do</td>
                                <td>10/20/2020</td>
                                <td>Java</td>
                                <td><a href="#" class="btn btn-primary">Approve</a></td>
                                <td><a href="#" class="btn btn-danger">Decline</a></td>
                            </tr>
                            <tr>
                                <td>Java is easy</td>
                                <td>Ngoc Minh Do</td>
                                <td>10/20/2020</td>
                                <td>Java</td>
                                <td><a href="#" class="btn btn-primary">Approve</a></td>
                                <td><a href="#" class="btn btn-danger">Decline</a></td>
                            </tr>
                            <tr>
                                <td>Java is easy</td>
                                <td>Ngoc Minh Do</td>
                                <td>10/20/2020</td>
                                <td>Java</td>
                                <td><a href="#" class="btn btn-primary">Approve</a></td>
                                <td><a href="#" class="btn btn-danger">Decline</a></td>
                            </tr>
                            <tr>
                                <td>Java is easy</td>
                                <td>Ngoc Minh Do</td>
                                <td>10/20/2020</td>
                                <td>Java</td>
                                <td><a href="#" class="btn btn-primary">Approve</a></td>
                                <td><a href="#" class="btn btn-danger">Decline</a></td>
                            </tr>
                            <tr>
                                <td>Java is easy</td>
                                <td>Ngoc Minh Do</td>
                                <td>10/20/2020</td>
                                <td>Java</td>
                                <td><a href="#" class="btn btn-primary">Approve</a></td>
                                <td><a href="#" class="btn btn-danger">Decline</a></td>
                            </tr>
                            <tr>
                                <td>Java is easy</td>
                                <td>Ngoc Minh Do</td>
                                <td>10/20/2020</td>
                                <td>Java</td>
                                <td><a href="#" class="btn btn-primary">Approve</a></td>
                                <td><a href="#" class="btn btn-danger">Decline</a></td>
                            </tr>
                            <tr>
                                <td>Java is easy</td>
                                <td>Ngoc Minh Do</td>
                                <td>10/20/2020</td>
                                <td>Java</td>
                                <td><a href="#" class="btn btn-primary">Approve</a></td>
                                <td><a href="#" class="btn btn-danger">Decline</a></td>
                            </tr>
                            <tr>
                                <td>Java is easy</td>
                                <td>Ngoc Minh Do</td>
                                <td>10/20/2020</td>
                                <td>Java</td>
                                <td><a href="#" class="btn btn-primary">Approve</a></td>
                                <td><a href="#" class="btn btn-danger">Decline</a></td>
                            </tr>
                            <tr>
                                <td>Java is easy</td>
                                <td>Ngoc Minh Do</td>
                                <td>10/20/2020</td>
                                <td>Java</td>
                                <td><a href="#" class="btn btn-primary">Approve</a></td>
                                <td><a href="#" class="btn btn-danger">Decline</a></td>
                            </tr>
                            <tr>
                                <td>Java is easy</td>
                                <td>Ngoc Minh Do</td>
                                <td>10/20/2020</td>
                                <td>Java</td>
                                <td><a href="#" class="btn btn-primary">Approve</a></td>
                                <td><a href="#" class="btn btn-danger">Decline</a></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="tab-pane" id="declinePost" role="tabpanel" aria-labelledby="declinedPost">
                <h3>Decline post</h3>
                <input class="form-control" id="myInput1" type="text" placeholder="Type something to search.." label="searchbar">
                <div class="scroll-table">
                    <table class="table table-responsive-sm fixed_header ddj1 table-borderless table-fixed mb-0" id="ddj1" cellspacing="0"
                           width="100%">
                        <thead class="thead-light fixed_thead">
                            <tr>
                                <th onclick="sortTable1(0)">Post title</th>
                                <th onclick="sortTable1(1)">Posted by</th>
                                <th onclick="sortTable1(2)">Posted date</th>
                                <th onclick="sortTable1(3)">Thread</th>
                                <th colspan="2" style="text-align: center;">Action</th>
                            </tr>
                        </thead>
                        <tbody id="myTable1">
                            <tr>
                                <td>Java is hard</td>
                                <td>Ngoc Minh Do</td>
                                <td>10/20/2020</td>
                                <td>Java</td>
                                <td><a href="#" class="btn btn-primary">Approve</a></td>
                                <td><a href="#" class="btn btn-danger">Remove</a></td>
                            </tr>
                            <tr>
                                <td>PHP is easy</td>
                                <td>Ngoc Minh Do</td>
                                <td>10/20/2020</td>
                                <td>PHP</td>
                                <td><a href="#" class="btn btn-primary">Approve</a></td>
                                <td><a href="#" class="btn btn-danger">Remove</a></td>
                            </tr>
                            <tr>
                                <td>Java is easy</td>
                                <td>Ngoc Minh Do</td>
                                <td>10/20/2020</td>
                                <td>Java</td>
                                <td><a href="#" class="btn btn-primary">Approve</a></td>
                                <td><a href="#" class="btn btn-danger">Remove</a></td>
                            </tr>
                            <tr>
                                <td>Java is easy</td>
                                <td>Ngoc Minh Do</td>
                                <td>10/20/2020</td>
                                <td>Java</td>
                                <td><a href="#" class="btn btn-primary">Approve</a></td>
                                <td><a href="#" class="btn btn-danger">Remove</a></td>
                            </tr>
                            <tr>
                                <td>Java is easy</td>
                                <td>Ngoc Minh Do</td>
                                <td>10/20/2020</td>
                                <td>Java</td>
                                <td><a href="#" class="btn btn-primary">Approve</a></td>
                                <td><a href="#" class="btn btn-danger">Remove</a></td>
                            </tr>
                            <tr>
                                <td>Java is easy</td>
                                <td>Ngoc Minh Do</td>
                                <td>10/20/2020</td>
                                <td>Java</td>
                                <td><a href="#" class="btn btn-primary">Approve</a></td>
                                <td><a href="#" class="btn btn-danger">Remove</a></td>
                            </tr>
                            <tr>
                                <td>Java is easy</td>
                                <td>Ngoc Minh Do</td>
                                <td>10/20/2020</td>
                                <td>Java</td>
                                <td><a href="#" class="btn btn-primary">Approve</a></td>
                                <td><a href="#" class="btn btn-danger">Remove</a></td>
                            </tr>
                            <tr>
                                <td>Java is easy</td>
                                <td>Ngoc Minh Do</td>
                                <td>10/20/2020</td>
                                <td>Java</td>
                                <td><a href="#" class="btn btn-primary">Approve</a></td>
                                <td><a href="#" class="btn btn-danger">Remove</a></td>
                            </tr>
                            <tr>
                                <td>Java is easy</td>
                                <td>Ngoc Minh Do</td>
                                <td>10/20/2020</td>
                                <td>Java</td>
                                <td><a href="#" class="btn btn-primary">Approve</a></td>
                                <td><a href="#" class="btn btn-danger">Remove</a></td>
                            </tr>
                            <tr>
                                <td>Java is easy</td>
                                <td>Ngoc Minh Do</td>
                                <td>10/20/2020</td>
                                <td>Java</td>
                                <td><a href="#" class="btn btn-primary">Approve</a></td>
                                <td><a href="#" class="btn btn-danger">Remove</a></td>
                            </tr>
                            <tr>
                                <td>Java is easy</td>
                                <td>Ngoc Minh Do</td>
                                <td>10/20/2020</td>
                                <td>Java</td>
                                <td><a href="#" class="btn btn-primary">Approve</a></td>
                                <td><a href="#" class="btn btn-danger">Remove</a></td>
                            </tr>
                            <tr>
                                <td>Java is easy</td>
                                <td>Ngoc Minh Do</td>
                                <td>10/20/2020</td>
                                <td>Java</td>
                                <td><a href="#" class="btn btn-primary">Approve</a></td>
                                <td><a href="#" class="btn btn-danger">Remove</a></td>
                            </tr>
                            <tr>
                                <td>Java is easy</td>
                                <td>Ngoc Minh Do</td>
                                <td>10/20/2020</td>
                                <td>Java</td>
                                <td><a href="#" class="btn btn-primary">Approve</a></td>
                                <td><a href="#" class="btn btn-danger">Remove</a></td>
                            </tr>
                            <tr>
                                <td>Java is easy</td>
                                <td>Ngoc Minh Do</td>
                                <td>10/20/2020</td>
                                <td>Java</td>
                                <td><a href="#" class="btn btn-primary">Approve</a></td>
                                <td><a href="#" class="btn btn-danger">Remove</a></td>
                            </tr>
                            <tr>
                                <td>Java is easy</td>
                                <td>Ngoc Minh Do</td>
                                <td>10/20/2020</td>
                                <td>Java</td>
                                <td><a href="#" class="btn btn-primary">Approve</a></td>
                                <td><a href="#" class="btn btn-danger">Remove</a></td>
                            </tr>
                            <tr>
                                <td>Java is easy</td>
                                <td>Ngoc Minh Do</td>
                                <td>10/20/2020</td>
                                <td>Java</td>
                                <td><a href="#" class="btn btn-primary">Approve</a></td>
                                <td><a href="#" class="btn btn-danger">Remove</a></td>
                            </tr>
                            <tr>
                                <td>Java is easy</td>
                                <td>Ngoc Minh Do</td>
                                <td>10/20/2020</td>
                                <td>Java</td>
                                <td><a href="#" class="btn btn-primary">Approve</a></td>
                                <td><a href="#" class="btn btn-danger">Remove</a></td>
                            </tr>
                            <tr>
                                <td>Java is easy</td>
                                <td>Ngoc Minh Do</td>
                                <td>10/20/2020</td>
                                <td>Java</td>
                                <td><a href="#" class="btn btn-primary">Approve</a></td>
                                <td><a href="#" class="btn btn-danger">Remove</a></td>
                            </tr>
                            <tr>
                                <td>Java is easy</td>
                                <td>Ngoc Minh Do</td>
                                <td>10/20/2020</td>
                                <td>Java</td>
                                <td><a href="#" class="btn btn-primary">Approve</a></td>
                                <td><a href="#" class="btn btn-danger">Remove</a></td>
                            </tr>
                            <tr>
                                <td>Java is easy</td>
                                <td>Ngoc Minh Do</td>
                                <td>10/20/2020</td>
                                <td>Java</td>
                                <td><a href="#" class="btn btn-primary">Approve</a></td>
                                <td><a href="#" class="btn btn-danger">Remove</a></td>
                            </tr>
                            <tr>
                                <td>Java is easy</td>
                                <td>Ngoc Minh Do</td>
                                <td>10/20/2020</td>
                                <td>Java</td>
                                <td><a href="#" class="btn btn-primary">Approve</a></td>
                                <td><a href="#" class="btn btn-danger">Remove</a></td>
                            </tr>
                            <tr>
                                <td>Java is easy</td>
                                <td>Ngoc Minh Do</td>
                                <td>10/20/2020</td>
                                <td>Java</td>
                                <td><a href="#" class="btn btn-primary">Approve</a></td>
                                <td><a href="#" class="btn btn-danger">Remove</a></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </body>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script>
                                    $(document).ready(function () {
                                        $("#myInput").on("keyup", function () {
                                            var value = $(this).val().toLowerCase();
                                            $("#myTable tr").filter(function () {
                                                $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                                            });
                                        });
                                    });

                                    function sortTable(n) {
                                        var table, rows, switching, i, x, y, shouldSwitch, dir, switchcount = 0;
                                        table = document.getElementById("ddj");
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
                                            for (i = 1; i < (rows.length - 1); i++) {
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
                                    $(document).ready(function () {
                                        $("#myInput1").on("keyup", function () {
                                            var value = $(this).val().toLowerCase();
                                            $("#myTable1 tr").filter(function () {
                                                $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
                                            });
                                        });
                                    });

                                    function sortTable1(n) {
                                        var table, rows, switching, i, x, y, shouldSwitch, dir, switchcount = 0;
                                        table = document.getElementById("ddj1");
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
                                            for (i = 1; i < (rows.length - 1); i++) {
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
    <jsp:include page="../include/footer.jsp"/>
</html>
