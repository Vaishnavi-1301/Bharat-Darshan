<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Explore Packages</title>
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

 <!-- Package Start -->
 <div  class="container-xxl py-5">
    <div class="container"style="margin-top: 10%">
        <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
            <h6 class="section-title bg-white text-center text-primary px-3">Exclusive Packages</h6>
            <h1 class="mb-5"><img style="width:120px;height:70px"src="Logo/Logo.png" alt="Logo"></h1>
        </div>
        <div class="row g-4 justify-content-center">
        	<c:forEach items="${packageslist}" var="packagedetails">
            <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                <div class="package-item"style="border-radius:15px;width:100%;height:450px;overflow:hidden;">
                    <div class="overflow-hidden">
                        <img class="img-fluid" src="images/packages/${packagedetails.packagephoto}" alt="" style="width:100%;height:180px;border-radius:15px;">
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
          	</c:forEach>
        </div>
    </div>
</div>

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