<%-- 
    Document   : find
    Created on : 06 Apr 2025, 21:42:14
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
        <h1>Find Employee</h1>
        <form action="MyServlet.do" method="POST">
            <table >           
                <tr>
                    <td>Employee ID: </td>
                    <td><input type="text" name="emp_id"/></td>
                </tr>
                <tr>
                    <td><input type="hidden" name="op" value="find" /></td>
                    <td><input type="submit" value="FIND EMPLOYEE" /></td>
                </tr>

            </table>
        </form>


    </body>
</html>
