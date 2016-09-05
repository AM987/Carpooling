<%-- 
    Author     : Toutountzoglou & Kyrtsoglou
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
                
        <form action="LoginServlet" method="POST"> 
            Uth Username:<br>
            <input type="text" name="username" placeholder = "" required="required"><br>
            Uth Password:<br>
            <input type="password" name="password" placeholder = "" required="required"><br><br>
            <input type="submit" value="Login">
        </form>
    </body>
</html>