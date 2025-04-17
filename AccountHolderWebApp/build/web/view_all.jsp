<%-- 
    Document   : view_all
    Created on : 06 Apr 2025, 15:46:25
    Author     : user
--%>

<%@page import="java.util.List"%>
<%@page import="za.tut.entities.AccountHolder"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> View  Page</title>
    </head>
    <body>
        <h1>Account Holder List</h1>
        <%
            List<AccountHolder> list=(List<AccountHolder>)request.getAttribute("list");
        %>
        
        <%
            for(AccountHolder accList:list)
            {
                %>
                <p>id: <%=accList.getId()%></p>
                <p>Full name: <%=accList.getFullname()%></p>
                <p>Street: <%=accList.getStreet()%></p>
                <p>City: <%=accList.getCity()%></p>
                <p>Code: <%=accList.getCode()%></p>
                <p>Cell Number: <%=accList.getCellNo()%></p>
                <p>Email: <%=accList.getEmailAddress()%></p>
                
                <%
        }
%>
<p>Click <a href="menu.jsp">here</a> to go back to menu page</p>
    </body>
</html>
