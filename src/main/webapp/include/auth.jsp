<%-- 
    Document   : auth
    Created on : Oct 28, 2020, 4:10:39 PM
    Author     : Ngoc Do Minh
--%>

<%@taglib prefix="s" uri="/struts-tags"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<script type="text/javascript">
    <s:if test="#session.accountEmail == null">
        alert("Your session is expired. Please login again.");
        window.location.href = "index.jsp";
    </s:if>
</script>
<!DOCTYPE html>
