<%-- 
    Document   : auth
    Created on : Oct 28, 2020, 4:10:39 PM
    Author     : Ngoc Do Minh
--%>

<%@taglib prefix="s" uri="/struts-tags"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<s:if test="#session.userRole != 1">
    <script>
        alert("You do not have permission to access this page.");
        window.location = "redirect";
    </script>
</s:if> 
<!DOCTYPE html>
