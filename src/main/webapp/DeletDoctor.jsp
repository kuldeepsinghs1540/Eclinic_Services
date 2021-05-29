<%-- 
    Document   : DeletDoctor
    Created on : 29-May-2021, 12:29:52 am
    Author     : kulde
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delete Page</title>
    </head>
    <body>
        <%
        String useremail=request.getParameter("uemail");
        try {
            Connection connection = Mycon.MyConnection.getcon();
            String delete = "delete from doctorinformation where email = ?";
            PreparedStatement pst=connection.prepareStatement(delete);
            pst.setString(1, useremail);
            int x = pst.executeUpdate();
            if(x!=0){
                %>
            <script>
                        alert('Doctor Deleted');
                        window.location = "AllDoctor.jsp";
            </script>
            <%
            }else{
                %>
            <script>
                        alert('Doctor Not Deleted');
                        window.location = "AllDoctor.jsp";
            </script>
            <%
            }
        }catch(Exception ex){
            System.out.println("ex is "+ex);
        }
        
        %>
    </body>
</html>
