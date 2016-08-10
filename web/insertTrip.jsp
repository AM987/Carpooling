<%-- 
    Author     : Toutountzoglou & Alkiviadis
--%>
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
            String fromTown2=request.getParameter("insert_From_drop_down");
            String toTown2=request.getParameter("insert_To_drop_down");
            String insertDate = request.getParameter("when");
            String ldapNm = (String)session.getAttribute("ldapName");
            String ldapMail = (String)session.getAttribute("ldapEmail");

            DateTime dt = new DateTime();            
            out.println("Today's date:" + dt.getDayOfMonth() + "/" + dt.getMonthOfYear() + "/" + dt.getYear());
            
            out.println("\nYou inserted Date:" + insertDate);
            out.println("\nYou inserted FromTown:" + fromTown2);
            out.println("\nYou inserted toTown:" + toTown2);
            out.println("\n   ldapName       :" + session.getAttribute( "ldapName" ));
            out.println("      ldapEmail          :" + session.getAttribute("ldapEmail"));  
                    
            Class.forName("com.mysql.jdbc.Driver"); 
            Connection con2 = DriverManager.getConnection("jdbc:mysql://localhost:3306/ridesharingdatabase","root","stelios");
            Statement insertDataSt= con2.createStatement(); 
                        
            Statement st= con2.createStatement(); 
            ResultSet rs=st.executeQuery("select id from trips");
            int max=1;
            while (rs.next()){
                if (rs.getInt("id")>max);
                max = rs.getInt("id");
            }
            max=max+1;
            out.println("Max: " + max);
            //insertDataSt.executeUpdate("insert into trips(id,email,fromTown,toTown,usrName)" + "values(15,'THISemail','Thessaloniki','Athens','Mitsos')");
            
            PreparedStatement myStmt = null;
            ResultSet ResSet = null;
            myStmt = con2.prepareStatement("INSERT INTO trips(id,email,fromTown,toTown,usrName,tripDate) VALUES(?,?,?,?,?,?)");
            myStmt.setInt(1,max);
            myStmt.setString(2,ldapMail);
            myStmt.setString(3,fromTown2);
            myStmt.setString(4,toTown2);
            myStmt.setString(5,ldapNm);
            myStmt.setString(6,insertDate);
        
            
            int j = myStmt.executeUpdate();
            
            out.println("\nthis j: " + j);
            
            insertDataSt.close();
            con2.close();
            
            
        %>
        <form action="main.jsp">
            <input type="submit" value="Go back"/>
        </form>
        <br><br>
        
    </body>
</html>