<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Book Your Pilgrimage With Us</title>
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta content="" name="keywords">
    <meta content="" name="description">
	
	<!-- Favicon -->
    <link rel="shortcut icon" href="icons/shortcut_icon.png" />
	<!-- Google Web Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Heebo:wght@400;500;600&family=Nunito:wght@600;700;800&display=swap" rel="stylesheet">
	
  
    <!-- Icon Font Stylesheet -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" rel="stylesheet">
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    
    <!-- Template Stylesheet -->
    <link href="css/style.css" rel="stylesheet">
    <link href="css/mystyle.css" rel="stylesheet">
</head>

<body>
 	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
<c:if test="${user==null}">
<!-- Navbar -->
<%@include file="navbar.jsp"%>
<!-- Navbar -->
</c:if>

<c:if test="${user!=null}">
<!-- Navbar -->
<%@include file="logedinnavbar.jsp"%>
<!-- Navbar -->
</c:if>


        <div id="carouselExampleSlidesOnly" class="carousel slide" data-bs-ride="carousel">
  			<div class="carousel-inner" style="height:600px">
			    <div class="carousel-item active">
			      <img class="slideshowimg"src="images/image5.jpg" class="d-block w-100" alt="...">
			    </div>
			    <div class="carousel-item">
			      <img class="slideshowimg" src="images/image4.jpg" class="d-block w-100" alt="...">
			    </div>
			    <div class="carousel-item">
			      <img class="slideshowimg" src="images/image3.jpg" class="d-block w-100" alt="...">
			    </div>
			    <div class="carousel-item">
			      <img class="slideshowimg" src="images/image1.jpg" class="d-block w-100" alt="...">
			    </div>
			    <div class="carousel-item">
			      <img class="slideshowimg" src="images/image2.jpg" class="d-block w-100" alt="...">
			    </div>
  			</div>
  
		</div>
		<!-- Navbar & Hero End -->
    
    <!-- Welcome Start -->
      <div class="container"style="padding:0;marging:0;">
        <div class="row justify-content-center align-items-center">
          <div class="col-lg-9 text-center">
            <h1 class="heading" data-aos="fade-up">
              Book Your Pilgrimage With <img style="width:200px;height:80px"src="Logo/Logo.png" alt="Logo">!!
            </h1>
           
          </div>
        </div>
      </div>  
    <!-- Welcome End -->
	
	<!-- modal Start -->     
     <div class="container">
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
              <div class="modal-content" style="background-color:black;opacity:0.7">
              <h4 class="title" style="text-align:center;margin-top:10px;color:#FE8800">Welcome To <br><br><img style="width:200px;height:80px"src="Logo/Logo.png" alt="Logo"><br><br>The Indian Pilgrimage Site..</h4>
              </div> 
            </div>
          </div>
      </div>
	<!-- Modal End -->
	
    <!-- Destination Start -->
    <div class="container-xxl py-5 destination">
        <div class="container">
            <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                <h6 class="section-title bg-white text-center px-3">Pilgrimages</h6>
                <h1 class="mb-5">Popular Pilgrimages In India</h1>
            </div>
            <div class="row g-3">
                <div class="col-lg-7 col-md-6">
                    <div class="row g-3">
                        <div class="col-lg-12 col-md-12 wow zoomIn" data-wow-delay="0.1s">
                            <a class="position-relative d-block overflow-hidden">
                                <img class="img-fluid" src="images/places/vrindawan.jpg" alt="">
                                <div class="bg-black text-orange fw-bold position-absolute bottom-0 end-0 m-3 py-1 px-2" style="color:orange">Prem Mandir, Vrindawan</div>
                            </a>
                        </div>
                        <div class="col-lg-6 col-md-12 wow zoomIn" data-wow-delay="0.3s">
                            <a class="position-relative d-block overflow-hidden">
                                <img class="img-fluid" src="images/places/murudeshwar.jpg" alt="">
                                <div class="bg-black text-orange fw-bold position-absolute bottom-0 end-0 m-3 py-1 px-2" style="color:orange">Murudeshwar, Karnataka</div>
                            </a>
                        </div>
                        <div class="col-lg-6 col-md-12 wow zoomIn" data-wow-delay="0.5s">
                            <a class="position-relative d-block overflow-hidden">
                                <img class="img-fluid" src="images/places/tryambkeshwar.jpg" alt="">
                                <div class="bg-black text-orange fw-bold position-absolute bottom-0 end-0 m-3 py-1 px-2" style="color:orange">Tryambkeshwar,Nashik</div>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-5 col-md-6 wow zoomIn" data-wow-delay="0.7s" style="min-height: 350px;">
                    <a class="position-relative d-block h-100 overflow-hidden">
                        <img class="img-fluid position-absolute w-100 h-100" src="images/places/Amritsar.jpg" alt="" style="object-fit: cover;">
                        <div class="bg-black text-orange fw-bold position-absolute bottom-0 end-0 m-3 py-1 px-2" style="color:orange">Golden Temple, Amritsar</div>
                    </a>
                </div>
                <div class=" wow fadeInUp" data-wow-delay="0.1s"style="text-align:right">
           				<a href="destinations" class="btn btn-primary rounded-pill py-2 px-3">Book Pigrimage Place Here</a>
        		</div>
            </div>
        </div>
    </div>
    <!-- Destination Start -->


    <!-- Package Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                <h6 class="section-title bg-white text-center px-3">Packages</h6>
                <h1 class="mb-5">Our Exclusive Packages</h1>
            </div>
            <div class="row g-4 justify-content-center">
            
            <c:forEach items="${packageslist}" var="packagedetails">
                <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="package-item">
                        <div style="border-style:solid;border-width:1px;border-color:orange;border-radius:15px;width:100%;height:450px;overflow:hidden;">
                        <div class="overflow-hidden">
                            <img class="img-fluid" src="images/packages/${packagedetails.packagephoto}" alt=""style="width:100%;height:180px;border-radius:15px;">
                        </div>
                        <div class="d-flex border-bottom">
                            <h4 class="flex-fill text-center border-end py-2"><strong>${packagedetails.packagename}</strong></h4>
                        </div>
                        <div class="text-center p-4">
                            <h3 class="mb-0"><img src="icons/rupees.png" style="width:20px;height:23px">${packagedetails.packagecost} / Person</h3>
                            <p>${packagedetails.aboutpackage}</p>
                            <div class="d-flex justify-content-center mb-2">
                                <a href="explorepackage?packagename=${packagedetails.packagename}" class="btn btn-sm btn-primary" style="margin:3px">Explore Package</a>
                                <a href="booking?packagename=${packagedetails.packagename}" class="btn btn-sm btn-primary" style="margin:3px">Book Package</a>
                                
                            </div>
                        </div>
                    </div>
                    </div>
                </div>
                </c:forEach>
                
                 <div class=" wow fadeInUp" data-wow-delay="0.1s"style="text-align:right">
           				<a href="packages" class="btn btn-primary rounded-pill py-2 px-3">View All Packages</a>
    			 </div>
            </div>
        </div>
    </div>
    
    <!-- Package End -->


    <!-- Booking Start 
    <div id="booking"class="container-xxl py-5 wow fadeInUp" data-wow-delay="0.1s">
        <div class="container">
            <div class="booking p-5">
                <div class="row g-5 align-items-center">
                    <div class="col-md-6 text-white">
                        <h6 class="text-white text-uppercase"><img style="width:200px;height:80px"src="Logo/Logo.png" alt="Logo"></h6>
                        <h1 class="text-white mb-4">Online Booking</h1>
                        <p class="mb-4">Tempor erat elitr rebum at clita. Diam dolor diam ipsum sit. Aliqu diam amet diam et eos. Clita erat ipsum et lorem et sit.</p>
                        <p class="mb-4">Tempor erat elitr rebum at clita. Diam dolor diam ipsum sit. Aliqu diam amet diam et eos. Clita erat ipsum et lorem et sit, sed stet lorem sit clita duo justo magna dolore erat amet</p>
                        
                    </div>
                    <div class="col-md-6">
                        <h1 class="text-white mb-4">Book A Tour</h1>
                        <form>
                            <div class="row g-3">
                                <div class="col-md-6">
                                    <div class="form-floating">
                                        <input type="text" class="form-control bg-transparent" id="name" placeholder="Your Name">
                                        <label for="name"style="color: #FE8800">Your Name</label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-floating">
                                        <input type="email" class="form-control bg-transparent" id="email" placeholder="Your Email">
                                        <label for="email"style="color: #FE8800">Your Email</label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-floating date" id="date3" data-target-input="nearest">
                                        <input type="text" class="form-control bg-transparent datetimepicker-input" id="datetime" placeholder="Date & Time" data-target="#date3" data-toggle="datetimepicker" />
                                        <label for="datetime"style="color: #FE8800">Date & Time</label>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-floating">
                                        <select class="form-select bg-transparent" id="select1"style="color: #FE8800">
                                            <option value="1">Destination 1</option>
                                            <option value="2">Destination 2</option>
                                            <option value="3">Destination 3</option>
                                        </select>
                                        <label for="select1"style="color: #FE8800">Destination</label>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <div class="form-floating">
                                        <textarea class="form-control bg-transparent" placeholder="Special Request" id="message" style="height: 100px"></textarea>
                                        <label for="message"style="color: #FE8800">Special Request</label>
                                    </div>
                                </div>
                                <div class="col-12">
                                    <button class="btn btn-outline-light w-100 py-3" type="submit"style="color: #FE8800">Book Now</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
     Booking Start -->


    <!-- Process Start -->
    <div class="container-xxl py-5">
        <div class="container">
            <div class="text-center pb-4 wow fadeInUp" data-wow-delay="0.1s">
                <h6 class="section-title bg-white text-center px-3">Process</h6>
                <h1 class="mb-5">3 Easy Steps</h1>
            </div>
            <div class="row gy-5 gx-4 justify-content-center">
                <div class="col-lg-4 col-sm-6 text-center pt-4 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="position-relative border border-dark pt-5 pb-4 px-4"style="border-radius:10px;width:auto;height:250px">
                        <div class="d-inline-flex align-items-center justify-content-center rounded-circle position-absolute top-0 start-50 translate-middle shadow" style="width: 100px; height: 100px;background-color:black">
                            <i class="fa fa-globe fa-3x"style="color:orange"></i>
                        </div>
                        <h5 class="mt-4">Choose A Pilgrimage</h5>
                        <hr class="w-25 mx-auto bg-primary mb-1">
                        <hr class="w-50 mx-auto bg-primary mt-0">
                        <p class="mb-0">Firstly You have to Choose your Pilgrimage destination/package which u want to visit from our Exciting Pilgrimage Packages and destinations list..</p>
                    </div>
                </div>
                <div class="col-lg-4 col-sm-6 text-center pt-4 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="position-relative border border-dark pt-5 pb-4 px-4"style="border-radius:10px;width:auto;height:250px">
                        <div class="d-inline-flex align-items-center justify-content-center rounded-circle position-absolute top-0 start-50 translate-middle shadow" style="width: 100px; height: 100px;background-color:black">
                            <i class="fa fa-rupee fa-3x"style="color:orange"></i>
                        </div>
                        <h5 class="mt-4">Make Online Payment</h5>
                        <hr class="w-25 mx-auto bg-primary mb-1">
                        <hr class="w-50 mx-auto bg-primary mt-0">
                        <p class="mb-0">After Choosing A Pilgrimage Package/Destination You Just have to Pay the Price by simplest method of online Payment.. </p>
                    </div>
                </div>
               <div class="col-lg-4 col-sm-6 text-center pt-4 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="position-relative border border-dark pt-5 pb-4 px-4"style="border-radius:10px;width:auto;height:250px">
                        <div class="d-inline-flex align-items-center justify-content-center rounded-circle position-absolute top-0 start-50 translate-middle shadow" style="width: 100px; height: 100px;background-color:black">
                            <i class="fa fa-plane fa-3x"style="color:orange"></i>
                        </div>
                        <h5 class="mt-4">Visit Your Desired Pilgrimage</h5>
                        <hr class="w-25 mx-auto bg-primary mb-1">
                        <hr class="w-50 mx-auto bg-primary mt-0">
                        <p class="mb-0">After Successfull of your Payment, we plan your whole Pilgrimage Visit And Send Your tickets And Necessary Information through your Email..</p>
                    </div>
                </div>
             </div>
        </div>
    </div >
    <!-- Process Start -->

    <!--  
    
    <div id="team" class="container-xxl py-5">
        <div class="container">
            <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
                <h6 class="section-title bg-white text-center px-3">Bharat Darshan Executives</h6>
                <h1 class="mb-5"><img style="width:120px;height:60px"src="Logo/Logo.png" alt="Logo"></h1>
            </div>
            <div class="row g-4">
            	
            	<div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    
                </div>
                <div class="col-lg-3 col-md-6 wow fadeInUp text-center" data-wow-delay="0.1s">
                    <div class="team-item"style="width:85%">
                        <div class="overflow-hidden"style="border-radius:15px">
                            <img style="width:100%;height:300px"class="img-fluid" src="images/Team/himansh.jpg" alt="">
                        </div>
                        <div class="position-relative d-flex justify-content-center" style="margin-top: -19px;">
                            <a class="btn btn-square mx-1" href=""><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-square mx-1" href=""><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-square mx-1" href=""><i class="fab fa-instagram"></i></a>
                        </div>
                        <div class="text-center p-4">
                            <h5 class="mb-0">Himansh Shivpuje</h5>
                            <small>Bharat Darshan CEO & Owner</small>
                        </div>
                    </div>
                </div>
                
                <div class="col-lg-3 col-md-6 wow fadeInUp text-center" data-wow-delay="0.3s">
                    <div class="team-item"style="width:85%">
                        <div class="overflow-hidden"style="border-radius:15px">
                            <img class="img-fluid" style="width:100%;height:300px"src="images/Team/bhushan.jpg" alt="">
                        </div>
                        <div class="position-relative d-flex justify-content-center" style="margin-top: -19px">
                            <a class="btn btn-square mx-1" href=""><i class="fab fa-facebook-f"></i></a>
                            <a class="btn btn-square mx-1" href=""><i class="fab fa-twitter"></i></a>
                            <a class="btn btn-square mx-1" href=""><i class="fab fa-instagram"></i></a>
                        </div>
                        <div class="text-center p-4">
                            <h5 class="mb-0">Bhushan Sonje</h5>
                            <small>Bharat Darshan CEO & Co-Owner</small>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    
                </div>
                
              </div>
        </div>
    </div>
   
     -->

    <!-- Testimonial Start -->
    <div id="testimonial"class="container-xxl py-5 wow fadeInUp" data-wow-delay="0.1s">
        <div class="container">
            <div class="text-center">
                <h6 class="section-title bg-white text-center px-3">Testimonial</h6>
                <h1 class="mb-5"><img style="width:120px;height:65px"src="Logo/Logo.png" alt="Logo"> Pilgrims Say!!!</h1>
            </div>
            <div class="owl-carousel testimonial-carousel position-relative">
                
                <c:forEach items="${reviewslist}" var="reviewlist">
                <div class="testimonial-item bg-white text-center border p-4">
                    <img class="bg-white rounded-circle shadow p-1 mx-auto mb-3" src="images/users/${reviewlist.profilephoto}" style="width: 80px; height: 80px;">
                    <h5 class="mb-0">${reviewlist.fullname}</h5>
                    <p>${reviewlist.city}, ${reviewlist.state}<br>Date Of Review:${reviewlist.date}</p>
                    <p class="mb-0">${reviewlist.post}</p>
                </div>
                </c:forEach>
                
            </div>
        </div>
    </div>
    <!-- Testimonial End -->
  
  	 <!-- Footer -->
		<%@include file="footer.jsp"%>
	<!-- Footer -->
  
  
    <!-- JavaScript Libraries -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="lib/wow/wow.min.js"></script>
    <script src="lib/easing/easing.min.js"></script>
    <script src="lib/waypoints/waypoints.min.js"></script>
    <script src="lib/owlcarousel/owl.carousel.min.js"></script>
    <script src="lib/tempusdominus/js/moment.min.js"></script>
    <script src="lib/tempusdominus/js/moment-timezone.min.js"></script>
    <script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

    <!-- Template Javascript -->
    <script src="js/main.js"></script>
    
    <!--  Modal script Start -->
    <script>
    $(window).on('load', function(){
        setTimeout(function(){
        $('#exampleModal').modal('show')
        }, 3000);
    });
   </script>
 	<!--  Modal End -->
</body>

</html>