<%-- 
    Document   : managepost
    Created on : Dec 12, 2020, 10:45:54 AM
    Author     : Ngoc Do Minh
--%>

<%@taglib prefix="s" uri="/struts-tags"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <jsp:include page="include/auth.jsp"/>
    <jsp:include page="include/header.jsp"/>
    <link rel="stylesheet" href="include/resources/css/managepost.css">
    <!--===========================================Css Base====================================================-->
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

    <body class="preloading">
        <!-- *loading -->
        <jsp:include page="include/Preloading.jsp"/>
        <!-- *header -->
        <jsp:include page="include/ProfileModal.jsp"/>

        <!-- *Content -->
        <section class="container-fluid content">
            <!-- *Content Left-->
            <jsp:include page="include/LeftTable.jsp"/>
            <!-- *Content Right-->
            <div class="content_right  unselecttable">
                <div class="row">
                    <div id="admin" class="col s12">
                        <div class="card material-table">
                            <div class="table-header table-header-content-right">
                                <span class="table-title"><a href="#none"><i class="fas fa-tasks"></i> Manage
                                        Post</a></span>
                                <div class="actions">
                                    <a href="post.html" class="modal-trigger waves-effect btn-flat nopadding"><i
                                            class="material-icons material-icons-header">post_add</i></a>
                                    <a href="#none" class="search-toggle waves-effect btn-flat nopadding"><i
                                            class="material-icons material-icons-header">search</i></a>
                                </div>
                            </div>
                            <table id="datatable" class="datatable table-striped">
                                <thead>
                                    <tr>
                                        <th style="width: 40%;">Post Title</th>
                                        <!--<th style="width: 15%;">Topic</th>-->
                                        <th style="width: 15%;">Thead</th>
                                        <th style="width: 15%;">Posted by</th>
                                        <th style="width: 15%;">Date</th>
                                        <th style="width: 7.5%;">Update</th>
                                        <th style="width: 7.5%;">Delete</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <s:iterator value="listPost">
                                        <tr>
                                            <td><s:property value="postTitle"/></td>
                                            <td><s:property value="thread.threadName"/></td>
                                            <td><s:property value="user.userFullName"/></td>
                                            <td><s:property value="approvedDate"/></td>
                                            <td><button type="button" class="btn btn-jump"><i
                                                        class="fas fa-wrench btn-update"></i></button>
                                            </td>
                                            <td><button type="button" class="btn btn-jump"><i
                                                        class="far fa-trash-alt btn-del"></i></button>
                                            </td>
                                        </tr>
                                    </s:iterator>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- *scrollTop -->
        <div class="scrollTop">
            <a href="#" class="sclTop"><i class="far fa-arrow-alt-circle-up"></i></a>
        </div>
        <script src="include/resources/js/LogOut.js"></script>
        <!-- *Footer -->
        <jsp:include page="include/footer.jsp"/>
    </body>
    <!--=============================================Bootstrap js==================================================-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.7/js/jquery.dataTables.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.0/js/materialize.min.js"></script>
    <script src="include/resources/js/base.js"></script>
    <script type="text/javascript">
        // table content right
        (function (window, document, undefined) {

            var factory = function ($, DataTable) {
                "use strict";

                $('.search-toggle').click(function () {
                    if ($('.hiddensearch').css('display') == 'none')
                        $('.hiddensearch').slideDown();
                    else
                        $('.hiddensearch').slideUp();
                });

                /* Set the defaults for DataTables initialisation */
                $.extend(true, DataTable.defaults, {
                    dom: "<'hiddensearch'f'>" +
                            "tr" +
                            "<'table-footer'lip'>",
                    renderer: 'material'
                });

                /* Default class modification */
                $.extend(DataTable.ext.classes, {
                    sWrapper: "dataTables_wrapper",
                    sFilterInput: "form-control input-sm",
                    sLengthSelect: "form-control input-sm"
                });

                /* Bootstrap paging button renderer */
                DataTable.ext.renderer.pageButton.material = function (settings, host, idx, buttons, page, pages) {
                    var api = new DataTable.Api(settings);
                    var classes = settings.oClasses;
                    var lang = settings.oLanguage.oPaginate;
                    var btnDisplay, btnClass, counter = 0;

                    var attach = function (container, buttons) {
                        var i, ien, node, button;
                        var clickHandler = function (e) {
                            e.preventDefault();
                            if (!$(e.currentTarget).hasClass('disabled')) {
                                api.page(e.data.action).draw(false);
                            }
                        };

                        for (i = 0, ien = buttons.length; i < ien; i++) {
                            button = buttons[i];

                            if ($.isArray(button)) {
                                attach(container, button);
                            } else {
                                btnDisplay = '';
                                btnClass = '';

                                switch (button) {

                                    case 'first':
                                        btnDisplay = lang.sFirst;
                                        btnClass = button + (page > 0 ?
                                                '' : ' disabled');
                                        break;

                                    case 'previous':
                                        btnDisplay = '<i class="material-icons">chevron_left</i>';
                                        btnClass = button + (page > 0 ?
                                                '' : ' disabled');
                                        break;

                                    case 'next':
                                        btnDisplay = '<i class="material-icons">chevron_right</i>';
                                        btnClass = button + (page < pages - 1 ?
                                                '' : ' disabled');
                                        break;

                                    case 'last':
                                        btnDisplay = lang.sLast;
                                        btnClass = button + (page < pages - 1 ?
                                                '' : ' disabled');
                                        break;

                                }

                                if (btnDisplay) {
                                    node = $('<li>', {
                                        'class': classes.sPageButton + ' ' + btnClass,
                                        'id': idx === 0 && typeof button === 'string' ?
                                                settings.sTableId + '_' + button : null
                                    })
                                            .append($('<a>', {
                                                'href': '#',
                                                'aria-controls': settings.sTableId,
                                                'data-dt-idx': counter,
                                                'tabindex': settings.iTabIndex
                                            })
                                                    .html(btnDisplay)
                                                    )
                                            .appendTo(container);

                                    settings.oApi._fnBindAction(
                                            node, {
                                                action: button
                                            }, clickHandler
                                            );

                                    counter++;
                                }
                            }
                        }
                    };

                    // IE9 throws an 'unknown error' if document.activeElement is used
                    // inside an iframe or frame. 
                    var activeEl;

                    try {
                        // Because this approach is destroying and recreating the paging
                        // elements, focus is lost on the select button which is bad for
                        // accessibility. So we want to restore focus once the draw has
                        // completed
                        activeEl = $(document.activeElement).data('dt-idx');
                    } catch (e) {
                    }

                    attach(
                            $(host).empty().html('<ul class="material-pagination"/>').children('ul'),
                            buttons
                            );

                    if (activeEl) {
                        $(host).find('[data-dt-idx=' + activeEl + ']').focus();
                    }
                };

                /*
                 * TableTools Bootstrap compatibility
                 * Required TableTools 2.1+
                 */
                if (DataTable.TableTools) {
                    // Set the classes that TableTools uses to something suitable for Bootstrap
                    $.extend(true, DataTable.TableTools.classes, {
                        "container": "DTTT btn-group",
                        "buttons": {
                            "normal": "btn btn-default",
                            "disabled": "disabled"
                        },
                        "collection": {
                            "container": "DTTT_dropdown dropdown-menu",
                            "buttons": {
                                "normal": "",
                                "disabled": "disabled"
                            }
                        },
                        "print": {
                            "info": "DTTT_print_info"
                        },
                        "select": {
                            "row": "active"
                        }
                    });

                    // Have the collection use a material compatible drop down
                    $.extend(true, DataTable.TableTools.DEFAULTS.oTags, {
                        "collection": {
                            "container": "ul",
                            "button": "li",
                            "liner": "a"
                        }
                    });
                }

            }; // /factory

            // Define as an AMD module if possible
            if (typeof define === 'function' && define.amd) {
                define(['jquery', 'datatables'], factory);
            } else if (typeof exports === 'object') {
                // Node/CommonJS
                factory(require('jquery'), require('datatables'));
            } else if (jQuery) {
                // Otherwise simply initialise as normal, stopping multiple evaluation
                factory(jQuery, jQuery.fn.dataTable);
            }

        })(window, document);

        $(document).ready(function () {
            $('#datatable').dataTable({
                "oLanguage": {
                    "sStripClasses": "",
                    "sSearch": "",
                    "sSearchPlaceholder": "Enter Keywords Here",
                    "sInfo": "_START_ -_END_ of _TOTAL_",
                    "sLengthMenu": '<span>Rows per page:</span><select class="browser-default">' +
                            '<option value="10">10</option>' +
                            '<option value="20">20</option>' +
                            '<option value="30">30</option>' +
                            '<option value="40">40</option>' +
                            '<option value="50">50</option>' +
                            '<option value="-1">All</option>' +
                            '</select></div>'
                },
                bAutoWidth: false
            });
        });
        // =================================Table rows clickable====================================
        document.addEventListener("DOMContentLoaded", () => {
            const rows = document.querySelectorAll("td[data-href]")
            rows.forEach(row => {
                row.addEventListener("click", () => {
                    window.location.href = row.dataset.href;
                });
            });
        });
    </script>
    <script src="include/resources/js/Auth.js"></script>
</html>
