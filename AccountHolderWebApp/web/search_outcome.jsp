<%-- 
    Document   : search_outcome
    Created on : 06 Apr 2025, 15:13:04
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search outcome Page</title>
    </head>
    <body>
        <h1>Search outcome:</h1>
        <%
               String fullname= (String)request.getAttribute("name");
               String street=(String)request.getAttribute("street");
               String city= (String)request.getAttribute("city");
               String code=(String)request.getAttribute("code");
               String email=(String)request.getAttribute("email");
               String cell=(String)request.getAttribute("cell");
        %>
        <p> Name: <%=fullname%></p>
        <p>Address:            
        <%=street%>
        <%=city%>
        <%=code%>
        </p>
        <p>Contacts
            <%=email%>
            <%=cell%>
        </p>
        <p>Click <a href="menu.jsp">here</a> to go back to menu page</p>
    </body>
</html>
