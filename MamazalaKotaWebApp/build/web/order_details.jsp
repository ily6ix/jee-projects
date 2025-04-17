<%-- 
    Document   : order_details
    Created on : 15 Mar 2025, 14:39:12
    Author     : user
--%>

<%@page import="za.ac.tut.model.Customer"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Payment Process!</h1>
        <%
            Customer customerObj = (Customer) session.getAttribute("customer");

            if (customerObj != null) {
                double amountDue = customerObj.getTotalPrice();
                int orderNo = customerObj.getOrderNo();
        %>
        <h3>Amount Due :R<%=amountDue%></h3>
        <h3>Order#<%=orderNo%></h3>
        <form action="PaymentServlet.do" method="post">
            <table>
                <tr>
                    <td>Enter Amount :R</td>
                    <td><input type="text" name="payment_amount"></td>
                </tr>
                <tr>
                    <td><input type="submit" name="paymentBtn" value="PAY"></td>
                    
                </tr>
            </table>
        </form>
        <%
            }
        %>

    </body>
</html>
