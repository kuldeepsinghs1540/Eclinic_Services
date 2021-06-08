<%-- 
    Document   : UpdateDoctor
    Created on : 29-May-2021, 12:25:14 am
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
        <title>JSP Page</title>
    </head>
    <body>
        
        <jsp:useBean id="t" class="DTO.Doctor" scope="request">
            <jsp:setProperty name="t" property="*"></jsp:setProperty>
        </jsp:useBean>
        
        <%
            
            DoctorManager mgr=new DoctorManager();
            int x=mgr.updateDoctor(t);
            if(x>0)
            {
             
                   %>
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
            %>
    </body>
</html>
