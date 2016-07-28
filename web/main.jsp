<%-- 
    Document   : main.jsp
    Created on : Jul 28, 2016, 7:40:06 PM
    Author     : lenovo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
            <h1>Where do you wanna travel?</h1>
            <form action="login_via_LDAP.jsp" method="post"> <!-- method post επειδή στέλνεις sensitive data-->
            From:<br>
            <input type="text" name="fromtext"><br>
            To:<br>
            <input type="text" name="lastname"><br><br>
            <input type="submit" value="Submit">
        </form>
    </body>
</html>
