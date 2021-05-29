<%-- 
    Document   : patientHome
    Created on : 29-May-2021, 6:07:59 pm
    Author     : kulde
--%>

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
                            <li><a class="dropdown-item" href="#">Get Appoinment</a></li>
                            <li>
                                <hr class="dropdown-divider">
                            </li>
                            <li><a class="dropdown-item" href="#">LogOut</a></li>
                        </ul>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">About Us</a>
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
                    <button type="button" class="btn btn-primary">Save changes</button>
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
                    <button class="btn btn-success">Get Appoinment</button>
                    <button class="btn btn-primary">Doctor List</button>
                </div>
            </div>
            <div class="carousel-item">
                <img src="https://source.unsplash.com/1400x630/?doctor,motivate" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                    <h5>WelCome to eClinic</h5>
                    <p>The first step toward success is taken when you refuse to be a captive of the environment in
                        which you first find yourself.</p>
                    <button class="btn btn-success">Get Appoinment</button>
                    <button class="btn btn-primary">Doctor List</button>
                </div>
            </div>
            <div class="carousel-item">
                <img src="https://source.unsplash.com/1400x630/?doctor,lab" class="d-block w-100" alt="...">
                <div class="carousel-caption d-none d-md-block">
                    <h5>WelCome to eClinic</h5>
                    <p>Nothing in life is to be feared, it is only to be understood. Now is the time to understand more,
                        so that we may fear less.</p>
                    <p> ~ Marie Curie</p>
                    <button class="btn btn-success">Get Appoinment</button>
                    <button class="btn btn-primary">Doctor List</button>
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
    <section>
        <div class="container-fluid my-4,0">
            <div class="row g-xl-5">
                <div class="col-md-6 d-flex align-items-stretch aos-init aos-animate"
                    style="background-color: rgb(45, 206, 218);">
                    <form action="#">
                        <div>
                            <span class="subheading">We Are Here For You</span>
                            <h2 class="mb-5 appointment-head">Make An Appointment</h2>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="subject">Your Full Name</label>
                                        <input type="text" class="form-control" placeholder="Your Full Name">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="subject">Email Address</label>
                                        <input type="text" class="form-control" placeholder="Email">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="subject">Phone Number</label>
                                        <input type="text" class="form-control" placeholder="Your Phone Number">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="subject">Appointment Date</label>
                                        <input type="text" class="form-control arrival_date datepicker-input"
                                            placeholder="Appointment Date">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="subject">Appointment Time</label>
                                        <input type="text" class="form-control" placeholder="Appointment Time">
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label for="subject">Select A Doctor</label>
                                        <div class="form-field">
                                            <div class="select-wrap">
                                                <div class="icon"><span class="fa fa-chevron-down"></span></div>
                                                <select name="" id="" class="form-control">
                                                    <option value="">Dr. Lloyd Wilson</option>
                                                    <option value="">Dr. Rachel Parker</option>
                                                    <option value="">Dr. Ian Smith</option>
                                                    <option value="">Dr. Alicia Henderson</option>
                                                    <option value="">Dr. Robert Johnson</option>
                                                    <option value="">Dr. Blake Wood</option>
                                                </select>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label for="subject">Message</label>
                                        <textarea name="" id="" cols="0" rows="5" class="form-control"
                                            placeholder="Message"></textarea>
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
                        <h2 class="mb-2">We Offer Best Dental Services</h2>
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
                                        <h2>Team Dentist</h2>
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