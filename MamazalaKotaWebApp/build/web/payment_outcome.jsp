<%-- 
    Document   : payment_outcome
    Created on : 15 Mar 2025, 15:39:07
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
            String paymentMsg = (String) session.getAttribute("payment_msg");
            if (paymentMsg != null) {
        %>
        <h2><%=paymentMsg%></h2>
        <p>Click <a href="menu.jsp">here</a> to go to the menu page.</p>
        <%
            }
        %>
        <h1>Hello World!</h1>
    </body>
</html>
