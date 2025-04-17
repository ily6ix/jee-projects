<%-- 
    Document   : find_outcome
    Created on : 06 Apr 2025, 21:49:25
    Author     : user
--%>

<%@page import="java.util.List"%>
<%@page import="java.util.Date"%>
<%@page import="za.ac.tut.entities.Employee"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Find Outcome </h1>
        <%
            Employee emp=(Employee)request.getAttribute("emp");
            if(emp!=null){
                Long id=emp.getId();
                Date cDate=emp.getCreationDate();
                List<String> contacts=emp.getContactNos();
                %>
                <p>Employee ID: <%=id%></p>
                <p>Employee Hire Date: <%=cDate%></p>
                <p>Employee Contacts: <%=contacts.get(0)%></p>
                <p>Employee Next of Kin Contacts: <%=contacts.get(1)%></p>
                
                <%
            }
        %>
        TO GO BACK MENU: <a href="menu.jsp"><button>MENU</button></a><br>
         TO GO BACK HOME: <a href="index.html"><button>HOME</button></a><br>  
    </body>
</html>
