<%-- 
    Document   : ConfirmAppoinmentDB
    Created on : 01-Jun-2021, 9:11:28 pm
    Author     : kulde
--%>

<%@page import="DAO.AppoinmentManager"%>
<%@page import="java.sql.ResultSet"%>
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
        
        <jsp:useBean id="d" class="DTO.Appointment" scope="request">
            <jsp:setProperty name="d" property="*"></jsp:setProperty>
        </jsp:useBean>
        
        <%
            AppoinmentManager mgr = new AppoinmentManager();
            int x=mgr.confirmAppoinmentDB(d);
            if(x>0){
            %>
            
             <script>
                        alert('Appoinment time and date confirm');
                        window.location = "appoinmentForParticular.jsp";
            </script>
            <%
                }else{

%>
            
             <script>
                        alert('Appoinment time and date confirm');
                        window.location = "appoinmentForParticular.jsp";
            </script>
            <%
                }
            %>
    </body>
</html>
