<%-- 
    Document   : patientHome
    Created on : 29-May-2021, 6:07:59 pm
    Author     : kulde
--%>

<%@page import="java.time.LocalDateTime"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

    <title>Patient Home</title>
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
        Connection connection = Mycon.MyConnection.getcon();
        String featch = "select * from patient where email=? and password=?";
        PreparedStatement preparedStatement = connection.prepareStatement(featch);
        preparedStatement.setString(1, email1);
        preparedStatement.setString(2, pass1);
        ResultSet rs = preparedStatement.executeQuery();
        
        if(rs.next())
      {
    %>
    <!-- navbar start here -->
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">eClinic</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false"
                aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Contact</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                            data-bs-toggle="dropdown" aria-expanded="false">
                            Services
                        </a>
                        <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="#">Profile</a></li>
                            <li><a class="dropdown-item" href="CheckStatus.jsp">Check Status</a></li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>
                            <li><a class="dropdown-item" href="LogOut.jsp">LogOut</a></li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="AboutUs.jsp">About Us</a>
                    </li>
                </ul>
                <form class="d-flex">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                </form>
                <button class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#LogOutModal">LogOut</button>
            </div>
        </div>
    </nav>

    <!-- navbar end here -->
    <!-- Button trigger modal -->


    <!-- Modal -->
    <div class="modal fade" id="LogOutModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Comfirm</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    ...
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary" onclick="location.href='LogOut.jsp';">Confirm</button>
                </div>
            </div>
        </div>
    </div>
    <!-- slidebar start here -->
    <div id="carouselExampleCaptions" class="carousel slide carousel-fade" data-bs-ride="carousel">
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
                <img src="https://source.unsplash.com/1400x630/?doctor" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                    <h5>WelCome to eClinic</h5>
                    <p>Time is generally the best doctor.</p>
                    <button class="btn btn-success" onclick="location.href='#Appointment';">Get Appoinment</button>
                    <button class="btn btn-primary" onclick="location.href='DocterListForPatient.jsp';">Doctor List</button>
                </div>
            </div>
            <div class="carousel-item">
                <img src="https://source.unsplash.com/1400x630/?doctor,motivate" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                    <h5>WelCome to eClinic</h5>
                    <p>The first step toward success is taken when you refuse to be a captive of the environment in
                        which you first find yourself.</p>
                    <button class="btn btn-success" onclick="location.href='#Appointment';">Get Appoinment</button>
                    <button class="btn btn-primary" onclick="location.href='DocterListForPatient.jsp';">Doctor List</button>
                </div>
            </div>
            <div class="carousel-item">
                <img src="https://source.unsplash.com/1400x630/?doctor,lab" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                    <h5>WelCome to eClinic</h5>
                    <p>Nothing in life is to be feared, it is only to be understood. Now is the time to understand more,
                        so that we may fear less.</p>
                    <p> ~ Marie Curie</p>
                    <button class="btn btn-success" onclick="location.href='#Appointment';" >Get Appoinment</button>
                    <button class="btn btn-primary" onclick="location.href='DocterListForPatient.jsp';" >Doctor List</button>
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

    <!-- slidebar end here -->
    <!-- Appoinment start here -->
    <section id="Appointment">
        <div class="container-fluid my-4,0">
            <div class="row g-xl-5">
                <div class="col-md-6 d-flex align-items-stretch aos-init aos-animate"
                    style="background-color: rgb(45, 206, 218);">
                    <form action="Appointment.jsp">
                        <div>
                            <span class="subheading">We Are Here For You</span>
                            <h2 class="mb-5 appointment-head">Make An Appointment</h2>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="subject">Your Full Name</label>
                                        <input type="text" class="form-control" placeholder="Your Full Name" name="name" required>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="subject">Email Address</label>
                                        <input type="email" class="form-control" placeholder="Email" name="email" required>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="subject">Phone Number</label>
                                        <input type="text" class="form-control" placeholder="Your Phone Number" name="mobile" required>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="subject">Appointment Date and Time</label>
                                       <input type="text" class="form-control" value="<%= (new java.util.Date()).toLocaleString()%>" name="datetime" required readonly>

                                    </div>
                                </div>
                                <div class="col-md-6">
                                  <div class="form-group">
                                        <label for="subject">Select A Doctor</label>
                                        <div class="form-field">
                                            <div class="select-wrap">
                                                <div class="icon"><span class="fa fa-chevron-down"></span></div>
                                                <select name="doctor" id="" class="form-control">
                                                     <%
                                                        Connection connection1 = Mycon.MyConnection.getcon();
                                                        String fetch = "select * from doctorinformation";
                                                        PreparedStatement pst1=connection1.prepareStatement(fetch);
              
                                                        ResultSet rs1=pst1.executeQuery();
                                                        
                                                        while(rs1.next())
                                                        {
                                                          String name1 =  rs1.getString("name");
                                                        %>
                                                        <option value="<%= name1%>"><%= name1%></option>
                                                    <%
                                                        }
                                                    %>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="subject">Registerd Email</label>
                                        <input type="email" class="form-control" value=<%= email1%> name="mainEmail" readonly>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="subject">Message</label>
                                        <textarea name="message" id="" cols="0" rows="5" class="form-control"
                                            placeholder="Describe your problem" required></textarea>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label class="radio inline"> Gender : 
                                                    <input type="radio" name="gender" value="male" checked>
                                                    <span> Male </span> 
                                                </label>
                                                <label class="radio inline"> 
                                                    <input type="radio" name="gender" value="female">
                                                    <span>Female </span> 
                                                </label>
                                    </div>
                                </div>  
                                <div class="col-md-12 d-flex align-items-center">
                                    <div class="d-grid gap-2 col-6 mx-auto">
                                        <input type="submit" value="Send message" class="btn btn-success">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="col-md-6 heading-section d-flex align-items-center aos-init aos-animate" data-aos="fade-up"
                    data-aos-delay="200" data-aos-duration="1000">
                    <div class="mt-0 my-lg-5 py-5">
                        <span class="subheading">Learn Anything</span>
                        <h2 class="mb-2">We Offer Best Services</h2>
                        <div class="row mt-4 g-lg-2">
                            <div class="col-lg-12 d-flex align-items-stretch services-wrap">
                                <div class="services d-flex">
                                    <div class="icon"><span class="flaticon-booking"></span></div>
                                    <div class="text">
                                        <h2>Easy Booking</h2>
                                        <p class="mb-0">Far far away, behind the word mountains, far from the countries
                                            Vokalia and Consonantia, there live the blind texts.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-12 d-flex align-items-stretch services-wrap">
                                <div class="services d-flex">
                                    <div class="icon"><span class="flaticon-dentist"></span></div>
                                    <div class="text">
                                        <h2>Team </h2>
                                        <p class="mb-0">Far far away, behind the word mountains, far from the countries
                                            Vokalia and Consonantia, there live the blind texts.</p>
                                    </div>
                                </div>
                            </div>
                            <div class="col-lg-12 d-flex align-items-stretch services-wrap">
                                <div class="services d-flex">
                                    <div class="icon"><span class="flaticon-offer"></span></div>
                                    <div class="text">
                                        <h2>Best Price Guarantee</h2>
                                        <p class="mb-0">Far far away, behind the word mountains, far from the countries
                                            Vokalia and Consonantia, there live the blind texts.</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Appoinment end here -->
    <!-- footer start here -->
    <footer class="container-fluid my-0,0" style="background-color:black; color:lightgray; padding: 1.5%;">
        <p class="float-end"><a href="/">Back to top</a></p>
        <p>© 2017–2021 Company, Inc. · <a href="#">Privacy</a> · <a href="#">Terms</a></p>
    </footer>

    <!-- footer end here -->
    <%
    }else
            {
          %>            
            <script>
                        alert('Only User can acess');
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