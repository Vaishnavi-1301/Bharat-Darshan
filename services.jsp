<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Our Services</title>
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


<!-- Service Start -->
    <div class="container-xxl py-5">
        <div class="container"style="margin-top: 10%">
        <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
            <h6 class="section-title bg-white text-center text-primary px-3">Services</h6>
            <h1 class="mb-5"><img style="width:120px;height:70px"src="Logo/Logo.png" alt="Logo"></h1>
        </div>
        
        <div class="row g-3">
                <div class="col-lg-7 col-md-6"style="height: 400px;">
                    <div class="row g-3">
                        <div class="col-lg-12 col-md-12 wow zoomIn" data-wow-delay="0.1s" style="height: 200px;">
                                <img class="img-fluid" src="images/services/vrindawan.jpg" alt="" style="width:100%;height: 200px;">
                        </div>
                        <div class="col-lg-6 col-md-12 wow zoomIn" data-wow-delay="0.3s"style="height: 200px;">
                                <img class="img-fluid" src="images/services/kedarnath.jpg" alt=""style="width:100%;height: 200px;">
                        </div>
                       <div class="col-lg-6 col-md-12 wow zoomIn" data-wow-delay="0.3s"style="height: 200px;">
                                <img class="img-fluid" src="images/services/dagdushet.jpg" alt=""style="width:100%;height: 200px;">
                        </div>
                    </div>
                </div>
                <div class="col-lg-5 col-md-6 wow zoomIn" data-wow-delay="0.7s" style="height: 400px;">
                   <div class="service-item rounded pt-3">
                        <div class="p-4" style="width:100%;height: 400px;padding-top:50%">
                            <i class="fas fa-3x fa-om  mb-4"style="color:orange;padding-top:10%"></i>
                            <h5>Special Indian Pilgrimages</h5>
                            <p>We Plan Nearby All Indian Pilgrimages In an Exciting price Range.Pilgrims Just Have To Book Their
                            Package And Feel Relax We Make Sure That You Experiances Extraordinary Pilgrimage... </p>
                        </div>
                    </div>
                </div>
         </div>
                
                
         <div class="row g-3" style="padding-top:10%">
         		<div class="col-lg-5 col-md-6 wow zoomIn" data-wow-delay="0.7s" style="height: 400px;">
                   <div class="service-item rounded pt-3">
                        <div class="p-4" style="width:100%;height: 400px;padding-top:50%">
                            <i class="fas fa-3x fa-hotel  mb-4"style="color:orange;padding-top:10%"></i>
                            <h5>5 Star Rating Accommodations</h5>
                            <p>We Arrange A1 Class Staying Rooms At Every Pilgrimage Sites.Their We Take Care Of Your Breakfast,Lunch,
                            Dinner,etc With All Indian Variety of Foods..</p>
                        </div>
                    </div>
                </div>
         		
                <div class="col-lg-7 col-md-6"style="height: 400px;">
                    <div class="row g-3">
                        <div class="col-lg-12 col-md-12 wow zoomIn" data-wow-delay="0.3s"style="height: 200px;">
                                <img class="img-fluid" src="images/services/hotelroom.jpeg" alt=""style="width:100%;height: 200px;">
                        </div>
                        <div class="col-lg-6 col-md-12 wow zoomIn" data-wow-delay="0.3s"style="height: 200px;">
                                <img class="img-fluid" src="images/services/Dinner.jpg" alt=""style="width:100%;height: 200px;">
                        </div>
                       <div class="col-lg-6 col-md-12 wow zoomIn" data-wow-delay="0.3s"style="height: 200px;">
                                <img class="img-fluid" src="images/services/breakfast.jpg" alt=""style="width:100%;height: 200px;">
                        </div>
                    </div>
                </div>
            </div>
            
            
            <div class="row g-3" style="padding-top:10%">
                <div class="col-lg-7 col-md-6"style="height: 400px;">
                    <div class="row g-3">
                        <div class="col-lg-12 col-md-12 wow zoomIn" data-wow-delay="0.1s" style="height: 200px;">
                                <img class="img-fluid" src="images/services/Guide.jpg" alt="" style="width:100%;height: 200px;">
                        </div>
                        <div class="col-lg-6 col-md-12 wow zoomIn" data-wow-delay="0.3s"style="height: 200px;">
                                <img class="img-fluid" src="images/services/receptionist.jpg" alt=""style="width:100%;height: 200px;">
                        </div>
                       <div class="col-lg-6 col-md-12 wow zoomIn" data-wow-delay="0.3s"style="height: 200px;">
                                <img class="img-fluid" src="images/services/callsupport.jpg" alt=""style="width:100%;height: 200px;">
                        </div>
                    </div>
                </div>
                <div class="col-lg-5 col-md-6 wow zoomIn" data-wow-delay="0.7s" style="height: 400px;">
                   <div class="service-item rounded pt-3">
                        <div class="p-4" style="width:100%;height: 400px;padding-top:50%">
                            <i class="fas fa-3x fa-user  mb-4"style="color:orange;padding-top:10%"></i>
                            <h5>24*7 Support & Pilgrimage Guide</h5>
                            <p>We Make Sure That You Get 24*7 Support From Our Very Kind Support Staff. We Also Provide Well Trained Pilgrimage Guide With You
                            Who Provide All Information Regarding That Pilgirmage Site & Also Make sure You Feel Comfortable...  </p>
                        </div>
                    </div>
                </div>
         </div>
                
                
         <div class="row g-3" style="padding-top:10%">
         		<div class="col-lg-4 col-md-6 wow zoomIn" data-wow-delay="0.7s" style="height: 400px;">
                   <div class="service-item rounded pt-3">
                        <div class="p-4" style="width:100%;height: 400px;padding-top:50%">
                            <i class="fas fa-3x fa-bus  mb-4"style="color:orange;padding-top:10%"></i>
                            <i class="fas fa-3x fa-taxi  mb-4"style="color:orange"></i>
                            <h5>A1 Class Traveling Facilities</h5>
                            <p>We Arrange A1 Class Flight Tickets, Railway Tickets,Etc. We Also Provide Special Bharat Darshan Full AC Sleeper Buses Or Cabs 
                            For Make Sure You Wont Face Any Discomfort In Your Pilgrimage.. </p>
                        </div>
                    </div>
                </div>
         		
                <div class="col-lg-8 col-md-6"style="height: 400px;">
                    <div class="row g-3">
                        <div class="col-lg-6 col-md-12 wow zoomIn" data-wow-delay="0.1s" style="height: 400px;">
                                <img class="img-fluid" src="images/services/bus.jpg" alt="" style="width:100%;height: 400px;">
                        </div>
                        <div class="col-lg-6 col-md-12 wow zoomIn" data-wow-delay="0.3s"style="height: 400px;">
                                <img class="img-fluid" src="images/services/cab.jpg" alt=""style="width:100%;height: 400px;">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Service End -->


<!-- Navbar -->
<%@include file="footer.jsp"%>
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