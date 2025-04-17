<%-- 
    Document   : add_outcome
    Created on : 06 Apr 2025, 14:32:30
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add outcome Page</title>
    </head>
    <body>
        <%
            String fullname=(String)request.getAttribute("name");
        %>
        <p><%=fullname%> was successfully added</p>
    </body>
</html>
