<%-- 
    Document   : Appointment
    Created on : 30-May-2021, 4:49:27 pm
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
        
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String Adate = null;
        String appointment = null;
        String drName = request.getParameter("drName");
        String message = request.getParameter("message");
        String gender = request.getParameter("gender");
        String mobile = request.getParameter("mobile");
        String status = "Pending";
        try{
            Connection connection = Mycon.MyConnection.getcon();
            String insert = "insert into appointment value(?,?,?,?,?,?,?,?,?,?)";
            PreparedStatement preparedStatement = connection.prepareStatement(insert);
            preparedStatement.setString(1, name);
            preparedStatement.setString(2, email);
            preparedStatement.setString(3, drName);
            preparedStatement.setString(4, gender);
            preparedStatement.setString(5, mobile);
            preparedStatement.setString(6, Adate);
            preparedStatement.setString(7, appointment);
            preparedStatement.setString(8, message);
            preparedStatement.setString(9, email1);
            preparedStatement.setString(10, status);
            int x = preparedStatement.executeUpdate();
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
        }catch(Exception ex){
            out.println("Ex is "+ex);
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
