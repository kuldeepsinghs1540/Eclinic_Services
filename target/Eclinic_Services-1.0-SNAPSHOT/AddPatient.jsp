<%-- 
    Document   : AddPatient
    Created on : 29-May-2021, 4:02:57 pm
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
        <jsp:useBean id="d" class="DTO.Patient" scope="request">
            <jsp:setProperty name="d" property="*"></jsp:setProperty>
        </jsp:useBean>
        
        <%
            PatientManager mgr = new PatientManager();
            int x=mgr.savePatient(d);
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
        %>
    </body>
</html>
