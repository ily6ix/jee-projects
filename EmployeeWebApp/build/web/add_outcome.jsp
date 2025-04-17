<%-- 
    Document   : add_outcome
    Created on : 06 Apr 2025, 21:33:21
    Author     : user
--%>

<%@page import="za.ac.tut.entities.Employee"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Employee  Outcome</h1>
        <%
                Employee emp=(Employee)request.getAttribute("emp");
                if(emp!=null){
                Long id=emp.getId();
               
                    %>
                    <p>Employee [<%=id%>] was added!</p>
                    <%
                }else{
                    %>
                    <P>Person Was not Added </p>
                    <%
                }
        %>
         TO GO BACK MENU: <a href="menu.jsp"><button>MENU</button></a><br>
         TO GO BACK HOME: <a href="index.html"><button>HOME</button></a><br>            
    </body>
</html>
