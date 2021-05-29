<%-- 
    Document   : AddPatient
    Created on : 29-May-2021, 4:02:57 pm
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
        String name = request.getParameter("Name");
        String email = request.getParameter("email");
        String gender = request.getParameter("gender");
        String psw = request.getParameter("psw");
        String mobile = request.getParameter("mobile");
        String DOB = request.getParameter("DOB");
        String Desies = request.getParameter("Desies");
        
        try{
            Connection connection = Mycon.MyConnection.getcon();
            String insert = "insert into patient value(?,?,?,?,?,?,?)";
            PreparedStatement preparedStatement = connection.prepareStatement(insert);
            preparedStatement.setString(1, name);
            preparedStatement.setString(2, email);
            preparedStatement.setString(3, gender);
            preparedStatement.setString(4, psw);
            preparedStatement.setString(5, mobile);
            preparedStatement.setString(6, DOB);
            preparedStatement.setString(7, Desies);
            int x = preparedStatement.executeUpdate();
            if(x>0){
                 %>
            <script>
                        alert('Registration Successfully');
                        window.location = "index.html";
            </script>
            <%
            }
            else{
                  %>
            <script>
                        alert('Registration failed');
                        window.location = "index.html";
            </script>
            <%
            }
        }catch(Exception ex){
            out.println("Ex is "+ex);
        }
        %>
    </body>
</html>
