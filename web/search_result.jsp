
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%  
            ResultSet rs =null;
            rs = (ResultSet) session.getAttribute("res");
        %>
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
                    <td><%=rs.getString("fullName")%></td>
                    <td><%=rs.getString("email")%></td>
                </tr>
                <%}%>
            </tbody>
        </table>
            <input type="submit" value="Back" name="go back" onclick='history.go(-1)' />
    </body>
</html>
    
