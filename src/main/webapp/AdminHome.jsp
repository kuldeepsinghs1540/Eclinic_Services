<%-- 
    Document   : AdminHome
    Created on : 26-May-2021, 9:48:06 pm
    Author     : kulde
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title> Admin Page </title>

    <link rel="shortcut icon" href="assets/images/fav.jpg">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/fontawsom-all.min.css">
    <link rel="stylesheet" href="assets/plugins/slider/css/owl.carousel.min.css">
    <link rel="stylesheet" href="assets/plugins/slider/css/owl.theme.default.css">
    <link rel="stylesheet" type="text/css" href="assets/css/style.css" />
</head>
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
      if(email1.equals("admin123@gmail.com") && pass1.equals("admin"))
      {
    %>
    <body>

    <!-- ################# Header Starts Here#######################--->
    <header id="menu-jk">
    
        <div id="nav-head" class="header-nav">
            <div class="container">
                <div class="row">
                    <div class="col-lg-2 col-md-3 no-padding col-sm-12 nav-img">
                        <img src="assets/images/logo.jpg" alt="">
                       <a data-toggle="collapse" data-target="#menu" href="#menu" ><i class="fas d-block d-md-none small-menu fa-bars"></i></a>
                    </div>
                    <div id="menu" class="col-lg-8 col-md-9 d-none d-md-block nav-item">
                        <ul>
                            <li><a href="#">Home</a></li>
                            <li><a href="#services">Services</a></li>
                            <li><a href="#about_us">About Us</a></li>
                            <li><a href="#blog">Blog</a></li>  
                            <li><a href="#gallery">Gallery</a></li>
                            <li><a href="#contact_us">Contact Us</a></li>
                        </ul>
                    </div>
                    <div class="col-sm-2 d-none d-lg-block appoint">
                        <button class="btn btn-success" onclick="location.href='LogOut.jsp';" style="cursor: pointer;">LogOut</button>
                    </div>
                </div>

            </div>
        </div>
    </header>
    
    
     <!-- ################# Slider Starts Here#######################--->

       <!--***************************** Slider Starts Here *****************************-->
   <div  class="slider container-fluid">
   		<ul id="slider">
   			<li data-active="0" data-background="assets/images/slider/slider_1.jpg">
   				<div class="slider-layer">
					<div class="container">
						<h1 class="animated  slideInDown ">You are in the Right Place <br> at the Right Time</h1>
						<p class="animated  zoomInLeft ">“Before you worry about the beauty of your body, <br> worry about the health of your body.”</p>
						<span class="animated  slideInUp ">Amit Kalantri, Wealth of Words</span>
					</div>
   				</div>
   			</li>
   	
   		</ul>
   </div><!--########## Slider Ends Here ##########-->
   
    <!-- ################# Key Features Starts Here#######################--->

    <section id="services" class="key-features">
        <div class="container">
            <div class="inner-title">

                <h2>Admin Control Panel</h2>
            </div>

            <div class="row">
                <div class="col-md-4 col-sm-6" onclick="location.href='RegisterDoctor.jsp';" style="cursor: pointer;">
                    <div class="single-key">
                        <i class="fas fa-hospital-alt"></i>
                        <h5>Add Doctor</h5>
                    </div>
                </div>

                <div class="col-md-4 col-sm-6" onclick="location.href='AllDoctor.jsp';" style="cursor: pointer;">
                    <div class="single-key">
                        <i class="fas fa-user-md"></i>
                        <h5>Doctors List</h5>
                    </div>
                </div>

                <div class="col-md-4 col-sm-6" onclick="location.href='#';" style="cursor: pointer;">
                    <div class="single-key">
                        <i class="fas fa-briefcase-medical"></i>
                        <h5>List Of patient</h5>
                    </div>
                </div>

                <div class="col-md-4 col-sm-6" onclick="location.href='#';" style="cursor: pointer;">
                    <div class="single-key">
                        <i class="fas fa-capsules"></i>
                        <h5>All Appointments</h5>
                    </div>
                </div>

                <div class="col-md-4 col-sm-6" onclick="location.href='#';" style="cursor: pointer;">
                    <div class="single-key">
                        <i class="fas fa-prescription-bottle-alt"></i>
                        <h5>Pharma Team</h5>
                    </div>
                </div>



                <div class="col-md-4 col-sm-6" onclick="location.href='#';" style="cursor: pointer;">
                    <div class="single-key">
                        <i class="far fa-thumbs-up"></i>
                        <h5>Patient Review</h5>
                    </div>
                </div>
            </div>
    </div>

    </section>
    
   <!--  ************************* Gallery Starts Here ************************** -->
        <div id="gallery" class="gallery">    
           <div class="container">
              <div class="row">
                

        <div class="gallery-filter d-none d-sm-block">
            <button class="btn btn-default filter-button" data-filter="all">All</button>
            <button class="btn btn-default filter-button" data-filter="Dental">Dental</button>
            <button class="btn btn-default filter-button" data-filter="Cardiology">Cardiology</button>
            <button class="btn btn-default filter-button" data-filter="Neurology"> Neurology</button>
            <button class="btn btn-default filter-button" data-filter="Laboratry">Laboratry</button>
        </div>
        <br/>



            <div class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter Dental">
                <img src="assets/images/gallery/gallery_01.jpg" class="img-responsive">
            </div>

            <div class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter Cardiology">
                <img src="assets/images/gallery/gallery_02.jpg" class="img-responsive">
            </div>

            <div class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter Dental">
                <img src="assets/images/gallery/gallery_03.jpg" class="img-responsive">
            </div>

            <div class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter Laboratry">
                <img src="assets/images/gallery/gallery_04.jpg" class="img-responsive">
            </div>

            <div class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter Neurology">
                <img src="assets/images/gallery/gallery_05.jpg" class="img-responsive">
            </div>

          

            <div class="gallery_product col-lg-4 col-md-4 col-sm-4 col-xs-6 filter spray">
                <img src="assets/images/gallery/gallery_06.jpg" class="img-responsive">
            </div>

        </div>
    </div>
       
       
       </div>
        <!-- ######## Gallery End ####### -->

        
    <!-- ################# Footer Starts Here#######################--->


    <footer class="footer">
        <div class="container">
            <div class="row">
                <div class="col-md-4 col-sm-12">
                    <h2>About Us</h2>
                    <p>
                        “While the journey seems long and hard at the beginning with perseverance and dedication the rewards at the end last a lifetime.”
                    </p>
                </div>
                <div class="col-md-4 col-sm-12">
                    <h2>Useful Links</h2>
                    <ul class="list-unstyled link-list">
                        <li><a ui-sref="about" href="#/about">About us</a><i class="fa fa-angle-right"></i></li>
                        <li><a ui-sref="portfolio" href="#/portfolio">Portfolio</a><i class="fa fa-angle-right"></i></li>
                        <li><a ui-sref="products" href="#/products">Latest jobs</a><i class="fa fa-angle-right"></i></li>
                        <li><a ui-sref="gallery" href="#/gallery">Gallery</a><i class="fa fa-angle-right"></i></li>
                        <li><a ui-sref="contact" href="#/contact">Contact us</a><i class="fa fa-angle-right"></i></li>
                    </ul>
                </div>
                <div class="col-md-4 col-sm-12 map-img">
                    <h2>Contact Us</h2>
                    <address class="md-margin-bottom-40">
                        NIT <br>
                        Calicut (Calicut District) <br>
                        Kerala, IND <br>
                        Phone: +91 9770900084 <br>
                        Email: <a href="mailto:kuldeepsinghs1540@gmail.com" class="">kuldeepsinghs1540@gmail.com</a><br>
                        Web: <a href="#" class="">www.Eclinic.in</a>
                    </address>

                </div>
            </div>
        </div>
        

    </footer>
    <div class="copy">
            <div class="container">
                <a href="https://www.smarteyeapps.com/">2015 &copy; All Rights Reserved | Designed and Developed by Kuldeep Singh!</a>
                
                <span>
                <a><i class="fab fa-github"></i></a>
                <a><i class="fab fa-google-plus-g"></i></a>
                <a><i class="fab fa-pinterest-p"></i></a>
                <a><i class="fab fa-twitter"></i></a>
                <a><i class="fab fa-facebook-f"></i></a>
        </span>
            </div>

        </div>
    <%
    }else
            {
          %>            
            <script>
                        alert('Only admin can acess');
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
    </body>

<script src="assets/js/jquery-3.2.1.min.js"></script>
<script src="assets/js/popper.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script>
<script src="assets/plugins/scroll-fixed/jquery-scrolltofixed-min.js"></script>
<script src="assets/plugins/scroll-nav/js/jquery.easing.min.js"></script>    
<script src="assets/plugins/scroll-nav/js/scrolling-nav.js"></script>
<script src="assets/js/script.js"></script>
</html>
