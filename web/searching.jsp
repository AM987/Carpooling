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
            String fromTown=request.getParameter("fromTown_drop_down");
            String toTown=request.getParameter("toTown_drop_down");
             
            Class.forName("com.mysql.jdbc.Driver"); 
            java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ridesharingdatabase","root","stelios"); 
            Statement st= con.createStatement(); 
            ResultSet rs=st.executeQuery("select * from trips"); 

        %>
        <table border="1">
            <tbody>
                <tr>
                    <td>id</td>
                    <td>email</td>
                    <td>fromTown</td>
                    <td>toTown</td>
                    <td>name</td>
                </tr>
                <% while (rs.next()){%>
                <tr>
                    <td><%=rs.getInt("id")%></td>
                    <td><%=rs.getString("email")%></td>
                    <td><%=rs.getString("fromTown")%></td>
                    <td><%=rs.getString("toTown")%></td>
                    <td><%=rs.getString("usrName")%></td>
                </tr>
                <% } %>
            </tbody>
        </table>    
    </body>
</html>