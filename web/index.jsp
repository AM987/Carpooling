<%-- 
    Author     : Toutountzoglou & Alkiviadis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Welcome to Carpooling</h1>
        <h3>Please log in with your Uth account</h3>
                
        <form action="main.jsp" method="post"> <!-- method post επειδή στέλνεις sensitive data-->
            Uth Username:<br>
            <input type="text" name="firstname"><br>
            Uth Password:<br><!--dior8ose to password na vgainoun voulitses-->
            <input type="text" name="lastname"><br><br>
            <input type="submit" value="Submit">
        </form>
    </body>
</html>