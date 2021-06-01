<%-- 
    Document   : DeletPatient
    Created on : 02-Jun-2021, 1:19:49 am
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
        String useremail=request.getParameter("uemail");
        try {
            Connection connection = Mycon.MyConnection.getcon();
            String delete = "delete from patient where email = ?";
            PreparedStatement pst=connection.prepareStatement(delete);
            pst.setString(1, useremail);
            int x = pst.executeUpdate();
            if(x!=0){
                %>
            <script>
                        alert('Patient Deleted');
                        window.location = "AllPatient.jsp";
            </script>
            <%
            }else{
                %>
            <script>
                        alert('Patient Not Deleted');
                        window.location = "AllPatient.jsp";
            </script>
            <%
            }
        }catch(Exception ex){
            System.out.println("ex is "+ex);
        }
        
        %>
    </body>
</html>
