<%-- 
    Document   : AddDoctorInDB
    Created on : 26-May-2021, 11:31:42 pm
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
        String name =  request.getParameter("Name");
        String pass =  request.getParameter("passw");
        String Address =  request.getParameter("add");
        String gender =  request.getParameter("gender");
        String Email =  request.getParameter("email");
        String Mobile =  request.getParameter("txtPhone");
        String spec =  request.getParameter("spec");
        String qualification =  request.getParameter("qualification");
        
        try{
        Connection connection = Mycon.MyConnection.getcon();
        String insert = "insert into doctorinformation value(?,?,?,?,?,?,?,?)";
        PreparedStatement preparedstatement = connection.prepareStatement(insert);
        preparedstatement.setString(1,name);
        preparedstatement.setString(2,Email);
        preparedstatement.setString(3,Mobile);
        preparedstatement.setString(4,pass);
        preparedstatement.setString(5,spec);
        preparedstatement.setString(6,qualification);
        preparedstatement.setString(7,gender);
        preparedstatement.setString(8,Address);
        int x = preparedstatement.executeUpdate();
        if(x>0){
                %>
            <script>
                        alert('Registration Successfully');
                        window.location = "AdminHome.jsp";
            </script>
            <%
        }else{
              %>
            <script>
                        alert('Registration failed');
                        window.location = "AdminHome.jsp";
            </script>
            <%
        }
        }catch(Exception ex){
            out.println("Ex is "+ex);
        }
        %>
    </body>
</html>
