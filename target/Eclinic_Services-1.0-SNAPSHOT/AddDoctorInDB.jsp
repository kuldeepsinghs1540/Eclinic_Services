<%-- 
    Document   : AddDoctorInDB
    Created on : 26-May-2021, 11:31:42 pm
    Author     : kulde
--%>

<%@page import="DAO.DoctorManager"%>
<%@page import="DTO.Doctor"%>
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
        
        <jsp:useBean id="d" class="DTO.Doctor" scope="request">
            <jsp:setProperty name="d" property="*"></jsp:setProperty>
        </jsp:useBean>
        
        <%
            DoctorManager doctor = new DoctorManager();
            int x=doctor.saveDoctor(d);
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
        
        %>
    </body>
</html>
