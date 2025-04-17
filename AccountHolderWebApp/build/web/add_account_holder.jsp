<%-- 
    Document   : add_account_holder
    Created on : 06 Apr 2025, 12:57:10
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Add Account holder Page</title>
    </head>
    <body>
        <h1>Add account holder</h1>
        <p>
            Please add account holder details below:
        </p>
        <form action="MyServlet.do" method="POST">
            <table >

                <tbody>
                    <tr>
                        <td>Id: </td>
                        <td><input type="text" name="id"></td>
                    </tr>
                    <tr>
                        <td>Full Name: </td>
                        <td><input type="text" name="fullname"></td>
                    </tr>
                    <tr>
                        <td>Street: </td>
                        <td><input type="text" name="street"></td>
                    </tr>
                    <tr>
                        <td>City</td>
                        <td><input type="text" name="city"></td>
                    </tr>
                    <tr>
                        <td>Code</td>
                        <td><input type="text" name="code"></td>
                    </tr>
                    <tr>
                        <td>Cell number: </td>
                        <td><input type="text" name="cellNo"</td>
                    </tr>
                    <tr>
                        <td>Email Address: </td>
                        <td><input type="text" name="email"</td>
                    </tr>
                    <tr>
                        <td></td>
                        <td><input type="submit" value="ADD ACCOUNT HOLDER"></td>
                        <td><input type="hidden" name="op" value="add"></td>
                    </tr>
                </tbody>
            </table>
        </form>


    </body>
</html>
