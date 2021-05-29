<%-- 
    Document   : LogOut
    Created on : 29-May-2021, 6:33:12 pm
    Author     : kulde
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        session=request.getSession();
       session.setAttribute("USER",null);
       session.setAttribute("password",null);
       session.invalidate();
       %>
                <script>   
                        window.location = "index.html";
                </script>
                <%
        %>
    </body>
</html>
