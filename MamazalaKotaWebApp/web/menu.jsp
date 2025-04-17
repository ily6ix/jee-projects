<%-- 
    Document   : menu
    Created on : 15 Mar 2025, 11:18:05
    Author     : user
--%>

<%@page import="za.ac.tut.model.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>menu page</title>
    </head>
    <body>
        <h1>Mamazala's Menu</h1>
        <table border="1">
            <thead>
            <th>
                Kota Code
            </th>
            <th>
                Description 
            </th>
            <th>
                Unit Price
            </th>
        </thead>
        <tr>
            <td>1</td>
            <td>Atchar and Cheese</td>
            <td>R15-00</td>
        </tr>
        <tr>
            <td>2</td>
            <td>Atchar,Cheese and Chips</td>
            <td>R20-00</td>
        </tr>
        <tr>
            <td>3</td>
            <td>Atchar,Cheese,Chips and Polony.</td>
            <td>R25-00</td>

        </tr>

    </table>
    <br/>
    <br/>

    <table>
        <form action="AddServlet.do" method="post">
            <tr>
                <td>Enter Kota Code</td>
                <td><input type="text" name="kota_code" ></td>
            </tr>
            <tr>
                <td>Enter Quantity</td>
                <td><input type="number" name="quantity" ></td>
            </tr>
            <tr>

                <td><input type="submit" name="addBtn" value="ADD TO ORDER"></td>
            </tr>
        </form>
    </table>
    <%
        
    %>
    <table>
        <form action="SubmitOrderServlet.do" method="post">

            <tr>

                <td><input type="submit" name="showBtn" value="SHOW ORDER"></td>
            </tr>
        </form>
    </table>

</body>
</html>
