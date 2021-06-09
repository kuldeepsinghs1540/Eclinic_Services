<%-- 
    Document   : Appointment
    Created on : 30-May-2021, 4:49:27 pm
    Author     : kulde
--%>

<%@page import="DAO.AppoinmentManager"%>
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
        String   email1 = null;
        String  pass1 = null;
    if(session!=null)
        {
         email1 = (String) session.getAttribute("USER");
         pass1 = (String) session.getAttribute("password");
         if(email1==null && pass1==null)
       {
          %>            
            <script>
                       alert('please Login first');  
                      window.location = "index.html";
            </script>
            <%  
        }
else{
        %>
        <jsp:useBean id="d" class="DTO.Appointment" scope="request">
            <jsp:setProperty name="d" property="*"></jsp:setProperty>
        </jsp:useBean>
        
        <%
            AppoinmentManager mgr = new AppoinmentManager();
            int x = mgr.saveAppoinment(d);
            //String name = request.getParameter("name");
            if(x>0){
                 %>            
            <script>
                        alert('Appointment message will be send');
                        window.location = "patientHome.jsp";
            </script>
            <%  
            }else{
                 %>            
            <script>
                        alert('Appointment message can not send try again');
                        window.location = "patientHome.jsp";
            </script>
            <%  
            }

    }
}
          if(session==null){
            if(email1==null)
      {
            %>
            
            <script>
                        alert('please Login first');
                        window.location = "index.html";
            </script>
            <%
                }
       }
        %>
    </body>
</html>
