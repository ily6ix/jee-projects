<%-- 
    Document   : dollar
    Created on : 16 Mar 2025, 14:43:00
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
         <h1>Dollar amount:</h1>
        <p>
            Please enter the Dollar amount below to convert.
        </p>
        <form action="ConversationServlet.do" method="POST">
            <table >
               
                
                    <tr>
                        <td>Dollar Amount: </td>
                        <td> <input type="text" name="value" value="1" /></td>
                        <td><input type="hidden" name="op" value="dtr" /></td>
                    </tr>
                    <tr>
                        
                        <td></td>
                        <td><input type="submit" value="CONVERT" name="convert" /></td>
                    </tr>
               
            </table>

        </form>
    </body>
</html>
