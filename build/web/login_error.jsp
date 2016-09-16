<%-- 
    Document   : login_error
    Created on : Sep 10, 2016, 5:31:45 AM
    Author     : Άλκης
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Something went wrong!</title>
    </head>
    <body>
        <h1>Please make sure that you use your Uth credentials and retry !</h1>
        <input type="button" value="Login" name ="Login" onclick='history.go(-1)' />
        <a href="http://uth.gr/students/welcome" target="_blank">Uth Account Info</a>
    </body>
</html>
