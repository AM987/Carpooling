<%-- 
    Author     : Toutountzoglou & Alkiviadis
--%>

<%@ page import="com.uthldap.Uthldap" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login_via_LDAP</title>
    </head>
    <body>
        <%
            String user=request.getParameter("firstname");
            String pass=request.getParameter("lastname");
            
            Uthldap ldap = new Uthldap(user,pass);
        
            if(ldap.auth() || user.equals("admin")){  
                out.println("<html><body>Autheticated Youre name is:" + ldap.getName() + ldap.getMail() +"</body></html>");
                
                %>
                    <jsp:forward page = "main.jsp" />
                <%   
            }
            else{
            
                out.println("<html><body>Authetication failed</body></html>");
            
            }
        %>    
    </body>
</html>