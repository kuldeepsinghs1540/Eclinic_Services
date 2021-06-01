<%-- 
    Document   : ConfirmAppoinmentDB
    Created on : 01-Jun-2021, 9:11:28 pm
    Author     : kulde
--%>

<%@page import="java.sql.ResultSet"%>
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
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String mobile = request.getParameter("mobile");
        String gender = request.getParameter("gender");
        String date = request.getParameter("date");
        String time = request.getParameter("time");
        Connection connection = Mycon.MyConnection.getcon();
            String update = "update appointment set Status=?, aDate=?, atime=? where email=?";
            PreparedStatement preparedStatement = connection.prepareStatement(update);
            preparedStatement.setString(1,"Accept");
            preparedStatement.setString(2,date);
            preparedStatement.setString(3,time);
            preparedStatement.setString(4,email);
            int x = preparedStatement.executeUpdate();
            if(x>0){
            %>
            
             <script>
                        alert('Appoinment time and date confirm');
                        window.location = "appoinmentForParticular.jsp";
            </script>
            <%
                }else{

%>
            
             <script>
                        alert('Appoinment time and date confirm');
                        window.location = "appoinmentForParticular.jsp";
            </script>
            <%
                }
            %>
    </body>
</html>
