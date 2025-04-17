<%-- 
    Document   : get_account_holder
    Created on : 06 Apr 2025, 15:36:25
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> View All account Page</title>
    </head>
    <body>
        <h1>View all account holders</h1>
        <form action="MyServlet.do" method="post">
            <table>
                <tr>
                    <td>Click here to view all account holders</td>
                    <td><input type="submit" value="View All"></td>
                    <td><input type="hidden" value="view" name="op"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
