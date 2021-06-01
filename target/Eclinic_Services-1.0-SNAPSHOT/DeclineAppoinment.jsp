<%-- 
    Document   : DeclineAppoinment
    Created on : 01-Jun-2021, 11:07:51 pm
    Author     : kulde
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
        String email = request.getParameter("uemail");
        Connection connection = Mycon.MyConnection.getcon();
            String update = "update appointment set Status=? where email=?";
            PreparedStatement preparedStatement = connection.prepareStatement(update);
            preparedStatement.setString(1,"Rejected");
            preparedStatement.setString(2,email);
            int x = preparedStatement.executeUpdate();
            if(x>0){
            %>
            
             <script>
                        alert('Appoinment will be rejected');
                        window.location = "appoinmentForParticular.jsp";
            </script>
            <%
                }
            %>
          
    </body>
</html>
