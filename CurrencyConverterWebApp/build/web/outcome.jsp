<%-- 
    Document   : outcome
    Created on : 16 Mar 2025, 14:59:04
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String outcome =(String)request.getAttribute("outcome");
        %>
        <h1>Currency Conversion Outcome</h1>
        <p>
            <b><%=outcome%></b>.
        </p>
        <p> Please click <a href="menu.jsp">here</a> to go
            back to the menu page or <a href="index.html">here</a> to go to the main page.</p>
    </body>
</html>
