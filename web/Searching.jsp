<%-- 
    Document   : Searching
    Created on : Aug 1, 2016, 7:55:40 PM
    Author     : lenovo
--%>

<%@page import="java.sql.*"%>
<%@ page import= " javax.sql.* " %>
<% Class.forName("com.mysql.jdbc.Driver");%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Searching JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%!
        public class CarpoolingTrip {
            String URL = "jdbc:mysql://localhost:3306/mynewdatabase";
            String USERNAME = "root";
            String PASSWORD = "";
            
            Connection connection = null;
            PreparedStatement selectTrip = null;
            ResultSet resultSet = null;
            
            public CarpoolingTrip() {
                try {
                       connection = DriverManager.getConnection(URL,USERNAME,PASSWORD);
                       
                       selectTrip = connection.prepareStatement("SELECT fromTown, toTown, tripDate FROM diadromes");
                } catch (SQLException e){
                    e.printStackTrace();
                }
            }
            
            public ResultSet getTrip (){
                try{
                    resultSet = selectTrip.executeQuery();
                } catch (SQLException e){
                
                }
                return resultSet;
            }
        }
        %>
        <%
            CarpoolingTrip trip = new CarpoolingTrip();
            ResultSet requestedTrip = trip.getTrip();
        %>    
        <h3><%requestedTrip.getString("fromTown");%></h3>   
    </body>
</html>
