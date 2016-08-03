<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.sql.*"%>
<%@page import ="javax.sql.*"%>
<%@page import ="java.text.*"%>
<%@page import ="org.joda.time.*"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String fromTown=request.getParameter("insert_From_drop_down");
            String toTown=request.getParameter("insert_To_drop_down");
            String insertDate = request.getParameter("when");
            

            DateTime dt = new DateTime();            
            out.println("Today's date:" + dt.getDayOfMonth() + "/" + dt.getMonthOfYear() + "/" + dt.getYear());
            
            out.println(insertDate);
                    
            Class.forName("com.mysql.jdbc.Driver"); 
            java.sql.Connection con2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/ridesharingdatabase","root","stelios");
            Statement insertData= con2.createStatement(); 
            //ResultSet rs;
            insertData.executeUpdate("insert into trips(id,email,fromTown,toTown,usrName)" + "values(7,'THISemail','Thessaloniki','Athens','Mitsos')");
            insertData.close();
            con2.close();
        %>
        <form action="main.jsp">
            <input type="submit" value="Go back"/>
        </form>
        <br><br>
        
    </body>
</html>