<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.sql.*"%>
<%@page import ="javax.sql.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
        <table border="1">
            <tbody>
                <tr> 
                    <td>date</td>
                    <td>name</td>
                    <td>email</td>
                </tr>
                <% while (rs.next()){%>
                <tr>       
                    <td><%=rs.getString("tripDate")%></td>
                    <td><%=rs.getString("usrName")%></td>
                    <td><%=rs.getString("email")%></td>
                </tr>
                <% } 
                    myStmt2.close();
                    con.close();
                %>
                
                
            </tbody>
        </table>    
    </body>
</html>