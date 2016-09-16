<%-- 
    Document   : main.jsp
    Created on : Jul 28, 2016, 7:40:06 PM
    Author     : Toutountzoglou & Kyrtsoglou
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
            <%
          String CookieName = (String)session.getAttribute("ldapName");
          String CookieUserName = (String)session.getAttribute("ldapUsrName");
          
          Cookie ck = new Cookie("loggin_usr",CookieName);
          Cookie ckUsrName = new Cookie("ckUsrName",CookieUserName);
          ck.setMaxAge(60*1);//Set expirty date after 1 minute
          ckUsrName.setMaxAge(60*1); //Set expirty date after 1 minute
          response.addCookie(ck);
          response.addCookie(ckUsrName);
     
         %>
            <h1>Where do you wanna travel?</h1>            
            <form action= "SearchingServlet" method="POST">
            From:<br>    
            <select name="fromTown">    
                <option value="Athens">Athens</option>
                <option value="Thessaloniki">Thessaloniki</option>
                <option value="Patra">Patra</option>
                <option value="Larisa">Larisa</option>
                <option value="Volos">Volos</option>
                <option value="Xanthi">Xanthi</option>
                <option value="Anywhere">Anywhere</option>
            </select>
            <br>
            To:<br>    
            <select name="toTown">       
                <option value="Thessaloniki">Thessaloniki
                </option><option value="Athens">Athens</option>              
                <option value="Patra">Patra</option>
                <option value="Larisa">Larisa</option>
                <option value="Volos">Volos</option>
                <option value="Xanthi">Xanthi</option>
                <option value="Anywhere">Anywhere</option>
            </select>
            <br>
            When:<br>
            <input type="date" name="when">
            <br><br>
            <input type="submit" value="Search">
            <br><br>
            </form>
            
            <h1>Register trip</h1>            
            <form action= "RegisterServlet" method="POST">
            From:<br>    
            <select name="fromTown">       
                <option value="Athens">Athens</option>
                <option value="Thessaloniki">Thessaloniki</option>
                <option value="Patra">Patra</option>
                <option value="Larisa">Larisa</option>
                <option value="Volos">Volos</option>
                <option value="Xanthi">Xanthi</option>
            </select>
            <br>
            To:<br>    
            <select name="toTown">       
                <option value="Thessaloniki">Thessaloniki</option>
                <option value="Athens">Athens</option>              
                <option value="Patra">Patra</option>
                <option value="Larisa">Larisa</option>
                <option value="Volos">Volos</option>
                <option value="Xanthi">Xanthi</option>
            </select>
            <br>
            When:<br>
            <input type="date" name="when">
            <br><br>
            <input type="submit" value="Register">
            </form>
    </body>
</html>
