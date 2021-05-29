<%-- 
    Document   : RegisterDoctor
    Created on : 26-May-2021, 10:44:25 pm
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
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <title>Registration Page</title>
        <style>
            .register{
    background: -webkit-linear-gradient(left, #3931af, #00c6ff);
    margin-top: 3%;
    padding: 3%;
}
.register-left{
    text-align: center;
    color: #fff;
    margin-top: 4%;
}
.register-left input{
    border: none;
    border-radius: 1.5rem;
    padding: 2%;
    width: 60%;
    background: #f8f9fa;
    font-weight: bold;
    color: #383d41;
    margin-top: 30%;
    margin-bottom: 3%;
    cursor: pointer;
}
.register-right{
    background: #f8f9fa;
    border-top-left-radius: 10% 50%;
    border-bottom-left-radius: 10% 50%;
}
.register-left img{
    margin-top: 15%;
    margin-bottom: 5%;
    width: 25%;
    -webkit-animation: mover 2s infinite  alternate;
    animation: mover 1s infinite  alternate;
}
@-webkit-keyframes mover {
    0% { transform: translateY(0); }
    100% { transform: translateY(-20px); }
}
@keyframes mover {
    0% { transform: translateY(0); }
    100% { transform: translateY(-20px); }
}
.register-left p{
    font-weight: lighter;
    padding: 12%;
    margin-top: -9%;
}
.register .register-form{
    padding: 10%;
    margin-top: 10%;
}
.btnRegister{
    float: right;
    margin-top: 10%;
    border: none;
    border-radius: 1.5rem;
    padding: 2%;
    background: #0062cc;
    color: #fff;
    font-weight: 600;
    width: 50%;
    cursor: pointer;
}
.register .nav-tabs{
    margin-top: 3%;
    border: none;
    background: #0062cc;
    border-radius: 1.5rem;
    width: 28%;
    float: right;
}
.register .nav-tabs .nav-link{
    padding: 2%;
    height: 34px;
    font-weight: 600;
    color: #fff;
    border-top-right-radius: 1.5rem;
    border-bottom-right-radius: 1.5rem;
}
.register .nav-tabs .nav-link:hover{
    border: none;
}
.register .nav-tabs .nav-link.active{
    width: 100px;
    color: #0062cc;
    border: 2px solid #0062cc;
    border-top-left-radius: 1.5rem;
    border-bottom-left-radius: 1.5rem;
}
.register-heading{
    text-align: center;
    margin-top: 8%;
    margin-bottom: -15%;
    color: #495057;
}
        </style>
    </head>
    <body>
        <div class="container register">
                <div class="row">
                    <div class="col-md-3 register-left">
                        <img src="https://image.ibb.co/n7oTvU/logo_white.png" alt=""/>
                        <h3>Welcome Admin</h3>
                        <p>You are here to Edit Doctor information!</p>
                        <input type="submit" onclick="location.href='AllDoctor.jsp';" style="cursor: pointer;" value="Back"/><br/>
                    </div>
                    <div class="col-md-9 register-right">
                        <ul class="nav nav-tabs nav-justified" id="myTab" >
                            <li class="nav-item">
                                <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Doctor</a>
                            </li>
                        </ul>
                        <%
                            String email = request.getParameter("uemail");
                    Connection connection = Mycon.MyConnection.getcon();
                    String fetch = "select * from doctorinformation where email = ?";
                    PreparedStatement pst=connection.prepareStatement(fetch);
                    pst.setString(1, email);
                     ResultSet rs=pst.executeQuery();
            if(rs.next())
            {
              String name =  rs.getString("name");
              String mobile = rs.getString("phone");
              String pass = rs.getString("password");
              String Specialization = rs.getString("specialization");
              String Qualification = rs.getString("qualification");
              String Gender = rs.getString("gender");
              String Address = rs.getString("address");
                    %>
             <form action="UpdateDoctor.jsp" method="Post">
                <div class="tab-content" id="myTabContent">
                   <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                       <h3 class="register-heading">Edit Information</h3>
                         <div class="row register-form">
                                  <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="text" class="form-control" value="<%= name %>" name="Name">
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control" value="<%= pass%>" name="passw" >
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control"  value="<%= pass%>" name="confirmpassw" >
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" value="<%= Address %>" name="add">
                                        </div>
                                        <div class="form-group">
                                            <div class="maxl">
                                                <label class="radio inline"> 
                                                    <input type="radio" name="gender" value="male" checked>
                                                    <span> Male </span> 
                                                </label>
                                                <label class="radio inline"> 
                                                    <input type="radio" name="gender" value="female">
                                                    <span>Female </span> 
                                                </label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            <input type="email" class="form-control" readonly value="<%= email %>" name="email">
                                        </div>
                                        <div class="form-group">
                                            <input type="text" minlength="10" maxlength="10" name="txtPhone" class="form-control" value="<%= mobile %>">
                                        </div>
                                        <div class="form-group">
                                            <select name="spec" class="form-control">
                                                <option class="hidden"   selected disabled>Please select Doctor specialization</option>
                                                <option>Dental</option>
                                                <option>Cardiology</option>
                                                <option>Neurology</option>
                                                <option>Laboratry</option>
                                            </select>
                                        </div>
                                        <div class="form-group">
                                            <input type="text" class="form-control" value="<%= Qualification%>" name="qualification">
                                        </div>
                                        <input type="submit" class="btnRegister"  value="update"/>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </form>
                        <%
                            }else{
                                  %>
            <script>
                        alert('Doctor Not find');
                        window.location = "AllDoctor.jsp";
            </script>
            <%
                        }
                        %>
                    </div>
                </div>

            </div>
    </body>
</html>