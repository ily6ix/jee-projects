<%-- 
    Document   : add
    Created on : 06 Apr 2025, 21:05:15
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
        <h1>ADD EMPLOYEE</h1>
        <form action="MyServlet.do" method="POST">
            <table >
                <tr>
                    <td>Employee ID: </td>
                    <td><input type="text" name="emp_id"  /></td>
                </tr>
                <tr>
                  <td>Cell Number: </td>
                   <td><input type="text" name="number"  /></td>
                </tr>
                <tr>
                    <td>Next of kin Number: </td>
                   <td><input type="text" name="number_kin"  /></td>
                </tr>
                <tr>
                    <td><input type="hidden" name="op" value="add_emp" /></td>
                   <td><input type="submit" name="add"  value="ADD EMPLOYEE"/></td>
                </tr>
            </table>

        </form>
         TO GO BACK HOME: <a href="index.html"><button>HOME</button></a><br>
    </body>
</html>
