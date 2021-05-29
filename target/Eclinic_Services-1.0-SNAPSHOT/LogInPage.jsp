<%-- 
    Document   : LogInPage
    Created on : 29-May-2021, 4:47:22 pm
    Author     : kulde
--%>

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
        <%
        String email = request.getParameter("email");
        String pass = request.getParameter("passwd");
        String utype = request.getParameter("utype");
        if(utype.equals("ADMIN")){
            if(email.equals("admin123@gmail.com") && pass.equals("admin")){
               HttpSession hs=request.getSession();
               hs.setAttribute("USER", email);
               hs.setAttribute("password",pass);
                %>
                <script>     
                        window.location = "AdminHome.jsp";
                </script>
                <%
            }else{
                %>
                <script>   
                        alert('please check Login credentials');
                        window.location = "index.html";
                </script>
                <%
            }
        }else if(utype.equals("USER")){
            try{
                Connection connection = Mycon.MyConnection.getcon();
                String featch = "select * from patient where email=? and password=?";
                PreparedStatement preparedStatement = connection.prepareStatement(featch);
                preparedStatement.setString(1, email);
                preparedStatement.setString(2, pass);
                ResultSet rs = preparedStatement.executeQuery();
                if(rs.next()){
                        HttpSession hs=request.getSession();
                        hs.setAttribute("USER", email);
                        hs.setAttribute("password",pass);
                    %>
                <script>   
                        window.location = "patientHome.jsp";
                </script>
                <%
                }else{
                %>
                <script>   
                        alert('please check Login credentials');
                        window.location = "index.html";
                </script>
                <%
                }   
        }catch(Exception ex){
        out.println("Ex is "+ex);
        }
        }else if(utype.equals("DOCTOR")){
                try{
                Connection connection = Mycon.MyConnection.getcon();
                String featch = "select * from doctorinformation where email=? and password=?";
                PreparedStatement preparedStatement = connection.prepareStatement(featch);
                preparedStatement.setString(1, email);
                preparedStatement.setString(2, pass);
                ResultSet rs = preparedStatement.executeQuery();
                if(rs.next()){
                        HttpSession hs=request.getSession();
                        hs.setAttribute("USER", email);
                        hs.setAttribute("password",pass);
                    %>
                <script>   
                        window.location = "DoctorHome.jsp";
                </script>
                <%
                }else{
                %>
                <script>   
                        alert('please check Login credentials');
                        window.location = "index.html";
                </script>
                <%
                }   
        }catch(Exception ex){
        out.println("Ex is "+ex);
        } 
        }
        %>
    </body>
</html>
