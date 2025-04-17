<%-- 
    Document   : search_account_holder
    Created on : 06 Apr 2025, 14:56:49
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search Page</title>
    </head>
    <body>
        <h1>Search account holder</h1>
        <form action="MyServlet.do" method="post">
            <table>
                <tr>
                    <td>Please enter the Id of the holder to search for:</td>
                    <td><input type="text" name="id"</td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="SEARCH"></td>
                    <td><input type="hidden" name="op" value="search"></td>
                </tr>
            </table>
        </form>
</body>
</html>
