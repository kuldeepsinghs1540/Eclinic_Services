<%-- 
    Document   : DeletPatient
    Created on : 02-Jun-2021, 1:19:49 am
    Author     : kulde
--%>

<%@page import="DAO.PatientManager"%>
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
        PatientManager mgr=new PatientManager();
            int x= mgr.deletPatient(useremail);
            if(x!=0){
                %>
            <script>
                        alert('Patient Deleted');
                        window.location = "AllPatienList.jsp";
            </script>
            <%
            }else{
                %>
            <script>
                        alert('Patient Not Deleted');
                        window.location = "AllPatienList.jsp";
            </script>
            <%
            }
        
        %>
    </body>
</html>
