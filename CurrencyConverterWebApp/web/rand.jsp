<%-- 
    Document   : rand
    Created on : 16 Mar 2025, 14:36:51
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
        <h1>Rand amount:</h1>
        <p>
            Please enter the Rand amount below to convert.
        </p>
        <form action="ConversationServlet.do" method="POST">
            <table >
               
                
                    <tr>
                        <td>Rand Amount: </td>
                        <td> <input type="text" name="value" value="1" /></td>
                        <td><input type="hidden" name="op" value="rtd" /></td>
                    </tr>
                    <tr>
                        
                        <td></td>
                        <td><input type="submit" value="CONVERT" name="convert" /></td>
                    </tr>
               
            </table>

        </form>
    </body>
</html>
