<%-- 
    Document   : DoctorHome
    Created on : 29-May-2021, 6:11:08 pm
    Author     : kulde
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous" />

    <title>Hello, world!</title>
</head>

<body>
     <%
         String name = null;
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
        Connection connection = Mycon.MyConnection.getcon();
        String featch = "select * from doctorinformation where email=? and password=?";
        PreparedStatement preparedStatement = connection.prepareStatement(featch);
        preparedStatement.setString(1, email1);
        preparedStatement.setString(2, pass1);
        ResultSet rs = preparedStatement.executeQuery();
        
        if(rs.next())
      {
      name = rs.getString("name");
    %>
    <!-- navbar start here -->
    <nav class="navbar navbar-expand-lg navbar-info bg-info">
        <div class="container-fluid">
            <a class="navbar-brand" href="#" style="color: black;">eClinic</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent" style="font-style: oblique;">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" style="color: black;" aria-current="page" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" style="color: black;" href="#">About Us</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                            data-bs-toggle="dropdown" aria-expanded="false" style="color: black;">
                            Appoinments
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="appoinmentForParticular.jsp?uname=<%= name%>">Pending Appoinment</a></li>
                            <li><a class="dropdown-item" href="ConfirmAppoinmentlist.jsp?uname=<%= name%>">Confirm Appoinments</a></li>
                            <li><a class="dropdown-item" href="DeclineAppoinmentlist.jsp?uname=<%= name%>">Decline Appoinments</a></li>
                            <li>
                                <hr class="dropdown-divider" />
                            </li>
                            <li>
                                <a class="dropdown-item" href="LogOut.jsp">LogOut</a>
                            </li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#" style="color: black;">Contact Us</a>
                    </li>
                </ul>
                <form class="d-flex">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search" />
                    <button class="btn btn-outline-danger" type="submit">
                        Search
                    </button>
                </form>
                <button type="button" class="btn btn-danger" onclick="location.href='LogOut.jsp';" >LogOut</button>
            </div>
        </div>
    </nav>
    <!-- navbar end here -->

    <!-- carousel start from here -->

    <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active"
                aria-current="true" aria-label="Slide 1"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
                aria-label="Slide 2"></button>
            <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
                aria-label="Slide 3"></button>
        </div>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <img src="https://source.unsplash.com/1400x600/?patient,hospital" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                    <h5>First slide label</h5>
                    <button type="button" class="btn btn-success btn-lg" onclick="location.href='appoinmentForParticular.jsp?uname=<%= name%>';" >Appoinment</button>
                    <button type="button" class="btn btn-info btn-lg" onclick="location.href='ProfileDoctor.jsp';">Profile</button>
                </div>
            </div>
            <div class="carousel-item">
                <img src="https://source.unsplash.com/1400x600/?hospital,help" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                    <h5>Second slide label</h5>
                    <button type="button" class="btn btn-success btn-lg" onclick="location.href='appoinmentForParticular.jsp?uname=<%= name%>';" >Appoinment</button>
                    <button type="button" class="btn btn-info btn-lg" onclick="location.href='ProfileDoctor.jsp';">Profile</button>

                </div>
            </div>
            <div class="carousel-item">
                <img src="https://source.unsplash.com/1400x600/?doctor,codeing" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                    <h5>Third slide label</h5>
                    <button type="button" class="btn btn-success btn-lg" onclick="location.href='appoinmentForParticular.jsp?uname=<%= name%>';" >Appoinment</button>
                    <button type="button" class="btn btn-info btn-lg" onclick="location.href='ProfileDoctor.jsp';">Profile</button>
                </div>
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions"
            data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions"
            data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>

    <!-- carousel end here -->

    <%
    }else
            {
          %>            
            <script>
                        alert('Only Doctor can acess');
                        window.location = "index.html";
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

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4"
        crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
    -->
</body>

</html>