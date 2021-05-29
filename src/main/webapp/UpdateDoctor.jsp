<%-- 
    Document   : UpdateDoctor
    Created on : 29-May-2021, 12:25:14 am
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
            String address = request.getParameter("add");
            String gender = request.getParameter("gender");
        String email = request.getParameter("email");
        String pass = request.getParameter("passw");
        String mobile = request.getParameter("txtPhone");
        String spec = request.getParameter("spec");
        String qualification = request.getParameter("qualification");
        out.print(email);
        try {
            Connection connection = Mycon.MyConnection.getcon();
           // Statement statement = connection.createStatement();
            String insert = "update doctorinformation set name=?,password=?,phone=?,address=?,specialization=?,qualification=?,Gender=? where email=?";
            PreparedStatement preparedStatement = connection.prepareStatement(insert);
            preparedStatement.setString(1,name);
            preparedStatement.setString(8,email);
            preparedStatement.setString(2,pass);
            preparedStatement.setString(3,mobile);
            preparedStatement.setString(4,address);
            preparedStatement.setString(5,spec);
            preparedStatement.setString(6,qualification);
            preparedStatement.setString(7,gender);
            int x = preparedStatement.executeUpdate();
            if(x>0)
            {
//                %>
                <script>     
                        alert('Doctor information updated');
                        window.location = "AllDoctor.jsp";
                </script>
                <%
                
            }else
            {
                %>
                <script>     
                        alert('Doctor information not updated');
                        window.location = "AllDoctor.jsp";
                </script>
                <%
            }
        }catch (Exception ex){
            out.println("ex is "+ex);
        }
            %>
    </body>
</html>
