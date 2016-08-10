<%-- 
    Author     : Toutountzoglou & Alkiviadis
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.*"%>
<!DOCTYPE html>
<html>
    <head>
        <style>
            body{
                background-image: url("https://wallpaperscraft.com/image/background_faded_stains_light_47125_1920x1080.jpg");
               
                width:100%; 
                height:100%;
                
            }   
            input[type=submit] {
                background-color: graytext;
                border: none;
                color: white;
                padding: 10px 10px;
                text-decoration: none;
                margin: 5px 5px;
                cursor: pointer;
                border-radius: 10px;
            }
            input[type=text],[type=password] {
                border-width: 5px;
                padding: 5px 5px;
                margin: 5px 0;
                box-sizing: border-box;
                border-radius: 10px;
            }
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>JSP Page</title>
        </style>
    </head>
    <body>
        <h1>Welcome to Carpooling</h1>
        <h3>Please log in with your Uth account</h3>
                
        <form action="main.jsp" method="post"> <!-- method post επειδή στέλνεις sensitive data-->
            Uth Username:<br>
            <input type="text" name="firstname"><br>
            Uth Password:<br>
            <input type="password" name="lastname"><br><br>
            <input type="submit" value="Submit">
        </form>
    </body>
</html>