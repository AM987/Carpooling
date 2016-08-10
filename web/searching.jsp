
<%-- 
    Author     : Toutountzoglou & Alkiviadis
--%>
<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.sql.*"%>
<%@page import ="javax.sql.*"%>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

        <!-- jQuery library -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    </head>
    <body>
        <%
            String fromTown3=request.getParameter("searching_fromTown_drop_down");
            String toTown3=request.getParameter("searching_toTown_drop_down");
             
            Class.forName("com.mysql.jdbc.Driver"); 
            java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ridesharingdatabase","root","stelios"); 

            PreparedStatement myStmt2 = null;
            ResultSet rs = null;
            myStmt2 = con.prepareStatement("SELECT tripDate,usrName,email FROM trips WHERE trips.`fromTown` = ? && trips.`toTown` = ?"); 
            myStmt2.setString(1,fromTown3);
            myStmt2.setString(2,toTown3);
            
            rs = myStmt2.executeQuery();
            
        %>
        <form action="main.jsp">
            <input type="submit" value="Go back"/>
            
        </form>
        <br><br>
     
   
        <% while (rs.next()){%>     
        <div class="panel panel-info">
            <div class="panel-heading">Date:<%=rs.getString("tripDate")%></div>
            <div class="panel-body">Name    :<%=rs.getString("usrName")%></div>
            <div class="panel-footer">Contact Email    : <%=rs.getString("email")%></div>
        </div>
         <% } %>   
                
        <!-- Latest compiled JavaScript -->
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>        
    </body>
</html>