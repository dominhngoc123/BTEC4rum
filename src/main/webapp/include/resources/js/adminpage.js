/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

jQuery(function ($) {
    $(".sidebar-dropdown > a").click(function () {
        $(".sidebar-submenu").slideUp(200);
        if (
                $(this)
                .parent()
                .hasClass("active")
                ) {
            $(".sidebar-dropdown").removeClass("active");
            $(this)
                    .parent()
                    .removeClass("active");
        } else {
            $(".sidebar-dropdown").removeClass("active");
            $(this)
                    .next(".sidebar-submenu")
                    .slideDown(200);
            $(this)
                    .parent()
                    .addClass("active");
        }
    });

    $("#close-sidebar").click(function () {
        $(".page-wrapper").removeClass("toggled");
    });
    $("#show-sidebar").click(function () {
        $(".page-wrapper").addClass("toggled");
    });

});
jQuery(document).ready(function ($) {
    $(".clickable-row").click(function () {
        window.location = $(this).data("href");
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
    $("#myInput").on("keyup", function () {
        var value = $(this).val().toLowerCase();
        $("#myTable tr").filter(function () {
            $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1);
        });
    });
});
function alertAdminBlocUser(accountEmail)
{
    return confirm("Do you want to block user with email:" + accountEmail);
}
;
function alertAdminUnblocUser(accountEmail)
{
    return confirm("Do you want to unblock user with email:" + accountEmail);
}
;
function loadTopic()
{
    $.ajax({
        type: "GET",
        url: "adminLoadTopicData",
        success: function (itr) {
            var tmpStr = "";
            tmpStr += "<h3 style='text-align: center;'>Manage topic</h3>";
            tmpStr += "<input class='form-control' id='myInput2' type='text' placeholder='Type something to search..' label='searchbar'>";
            tmpStr += "<div class='scroll-table'>";
            tmpStr += "<table class='table table-responsive-sm fixed_header table-borderless table-fixed mb-0' id='ddj2' cellspacing='0' width='100%'>";
            tmpStr += "<thead class='thead-light fixed_thead'>";
            tmpStr += "<tr>";
            tmpStr += "<th onclick='sortTable(2, 0)'>Topic name</th>";
            tmpStr += "<th onclick='sortTable(2, 1)'>Topic description</th>";
            tmpStr += "<th onclick='sortTable(2, 2)'>Added date</th>";
            tmpStr += "<th colspan='2' style='text-align: center;'>Action</th>";
            tmpStr += "</tr>";
            tmpStr += "</thead>";
            tmpStr += "<tbody id=myTable2'>";
            $.each(itr["listTopic"], function () {
                tmpStr += "<tr>";
                tmpStr += "<td>" + this['topicName'] + "</td>";
                tmpStr += "<td>" + this['topicDescription'] + "</td>";
                tmpStr += "<td>" + this['dateAdded'] + "</td>";
                tmpStr += "<td><a href='#' class='btn btn-primary'>Update</a></td>";
                tmpStr += "<td><a href='#' class='btn btn-danger'>Delete</a></td>";
                tmpStr += "</tr>";
            });
            tmpStr += "</tbody>";
            tmpStr += "</table>";
            tmpStr += "</div>";
            tmpStr += "<div style='text-align: center;'>";
            tmpStr += "<button type='button' class='btn btn-primary' data-toggle='modal' data-target='#modal_add-topic'>Add Topic</button>";
            tmpStr += "</div>";
            $("#showTable").html(tmpStr);            
            $("#showModal").html("OK");
        }
    });
}
