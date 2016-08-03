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
            
            <form action= "searching.jsp" method="get">
            From:<br>    
            <select name="fromTown_drop_down">       
                <option value="Athens">Athens</option>
                <option value="Thessaloniki">Thessaloniki</option>
                <option value="Patra">Patra</option>
                <option value="Larisa">Larisa</option>
                <option value="Volos">Volos</option>
                <option value="Xanthi">Xanthi</option>
            </select>
            <br>
            To:<br>    
            <select name="toTown_drop_down">       
                <option value="Thessaloniki">Thessaloniki
                <option value="Athens">Athens</option>              
                <option value="Patra">Patra</option>
                <option value="Larisa">Larisa</option>
                <option value="Volos">Volos</option>
                <option value="Xanthi">Xanthi</option>
            </select>
            <br><br>
            <input type="submit" value="Search">
            <br><br>
            <h1>or else, καταχώρηση διαδρομής</h1>            
            
            <form action= "login_via_LDAP.jsp" method="get">
            From:<br>    
            <select name="From_drop_down">       
                <option value="Athens">Athens</option>
                <option value="Thessaloniki">Thessaloniki</option>
                <option value="Patra">Patra</option>
                <option value="Larisa">Larisa</option>
                <option value="Volos">Volos</option>
                <option value="Xanthi">Xanthi</option>
            </select>
            <br>
            To:<br>    
            <select name="From_drop_down">       
                <option value="Thessaloniki">Thessaloniki
                </option><option value="Athens">Athens</option>              
                <option value="Patra">Patra</option>
                <option value="Larisa">Larisa</option>
                <option value="Volos">Volos</option>
                <option value="Xanthi">Xanthi</option>
            </select>
            <br>
            When:<br>
            <input type="date" name="when">
            <br><br>
            <input type="submit" value="Καταχώρηση Τώρα!">
    </body>
</html>
