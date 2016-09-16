<%-- 
    Author     : Toutountzoglou & Kyrtsoglou
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="javax.servlet.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Welcome to Carpooling</h1>
        <h3>Please log in with your Uth account</h3>
        <%
            Cookie ck[]=null;
            ck=request.getCookies();
            
            String str1 = "loggin_usr";
            String str2 = "ckUsrName";
            String cookieUsrName=null;
        
            if (ck!=null){
                for (int i=0; i < ck.length; i++) {
                    if(str1.equals(ck[i].getName())) {
                        out.print("Hey " + ck[i].getValue() + ", welcome back");
                    }
                    if(str2.equals(ck[i].getName())){
                        cookieUsrName=ck[i].getValue();
                    }
                }
            }
      
            if (cookieUsrName==null){
                cookieUsrName="";
            }
        %>
        <br><br>
        <form action="LoginServlet" method="POST"> 
            Uth Username:<br>
            <input type="text" name="username" value='<%=cookieUsrName%>'  required="required" ><br>
            Uth Password:<br>
            <input type="password" name="password" placeholder = "" required="required"><br><br>
            <input type="submit" value="Login">
        </form>
    </body>
</html>