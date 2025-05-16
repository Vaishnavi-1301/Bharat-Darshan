<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>OTP Verification</title>
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
<!-- Navbar & slider Start -->
    <div class="container-fluid position-relative p-0">
        <nav class="navbar navbar-expand-lg navbar-light px-4 px-lg-5 py-3 py-lg-0">
            <a href="index" class="navbar-brand p-0">
                <img src="Logo/Logo.png" alt="Logo">
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="fa fa-bars"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav ms-auto py-0">
                    <a href="index" class="nav-item nav-link">Home</a>
                    <a href="package" class="nav-item nav-link">Packages</a>
                    <a href="destinations" class="nav-item nav-link">Destinations</a>
                    <a href="services" class="nav-item nav-link">Services</a>
                    <a href="about" class="nav-item nav-link">About Us</a>
                    <a href="#contact" class="nav-item nav-link">Contact Us</a>
        </nav>
     </div>
     
   <!-- Welcome Start -->
      <div class="container">
        <div class="row justify-content-center align-items-center">
          <div class="col-lg-9 text-center"style="margin-top: 10%">
            <h1 class="heading" data-aos="fade-up">
              Verify Your <img style="width:120px;height:60px"src="Logo/Logo.png" alt="Logo"> Account And Reset Password
            </h1>
          </div>
        </div>
      </div>  
    <!-- Welcome End -->

<!-- forgotpassword start -->
<div  class="container-xxl py-5">
    <div class="container">
        <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
            <h6 class="section-title bg-white text-center text-primary px-3">Enter The OTP Which Was Sent On Your Mail ID </h6>
        </div>
    </div>
</div>

<div id="booking1"class="container-xxl py-5 wow fadeInUp" data-wow-delay="0.1s">
        <div class="containerb">
            <div class="booking1 p-5">
                <div class="row g-5 align-items-center">
                    <div class="col-md-6 text-white">
                        <h6 class="text-white text-uppercase"><img style="width:120px;height:60px"src="Logo/Logo.png" alt="Logo"></h6>
                        <h1 class="text-white mb-4">Verify The OTP  </h1>
                        <p class="mb-4">You Just Have To Enter The OTP Which Was Sent On Your Registered Email ID, We Will Verify The OTP 
                        			And Redirect To Reset Password Page Where U Can Reset Your Password..
                        </p>
                        
                    </div>
                    <div class="col-md-6">
                        
                        <form action="verifyotp" method="post">
                            <div class="row g-3">
                                <div class="col-12">
                                    <div class="form-floating text-white" >
                                        <input type="number" name="otp" class="form-control bg-transparent" id="otp" maxlength="6" placeholder="Enter OTP Here"required="required"style="border-color:#FE8800;color:#FE8800">
                                        <label for="otp">Enter OTP Here</label>
                                    </div>
                                </div> 
                                <div class="col-12">
                                    <button class="btn btn-outline-light w-100 py-3" type="submit" style="border-color:#FE8800;color:#FE8800">Verify OTP</button>
                                </div>
                                
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>


<!-- registration End -->

<!-- Navbar -->
<%@include file="/pages/footer.jsp"%>
<!-- Navbar -->


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

</body>

</html>