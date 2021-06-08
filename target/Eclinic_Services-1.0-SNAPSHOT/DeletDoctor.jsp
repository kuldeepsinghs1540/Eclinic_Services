<%-- 
    Document   : DeletDoctor
    Created on : 29-May-2021, 12:29:52 am
    Author     : kulde
--%>

<%@page import="DAO.DoctorManager"%>
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
        DoctorManager mgr=new DoctorManager();
            int x= mgr.deletDoctor(useremail);
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
        
        
        %>
    </body>
</html>
