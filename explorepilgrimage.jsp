<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Explore Pilgrimage</title>
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

	<section class="section profile">
	
	<div  class="container-xxl py-5">
    <div class="container"style="margin-top: 10%">
      <div class="row">
      <div class="row">
        <div class="col-xl-12 col-md-12 text-center">
				<h2><img src="Logo/Logo.png" alt="Logo" style="width:120px;height:40px"> Pilgrimage Place Details</h2>
       </div>

        <div class="col-xl-12 col-md-12">
			<div class="card" style="margin-top:20px;border-radius:20px;border-color:orange;border-style:solid;overflow:hidden;border-width:1px">
            <div class="card-body pt-3">
             <h2 class="text-center">${placedetails.pilgrimagename}</h2> 
             <div class="col-lg-12 col-md-12 text-center wow zoomIn" data-wow-delay="0.1s" style="height: 300px;">
                  <img class="img-fluid" src="images/places/${placedetails.pilgrimagephoto}" alt="" style="width:50%;height: 300px;border-radius:10px">
             </div>
             <div class="col-lg-12 col-md-12 text-center wow zoomIn" data-wow-delay="0.1s">
                  <p>${placedetails.aboutpilgrimage}</p>
             </div>
             
             <div class="row">
             <div class="col-lg-6 col-md-12 text-center wow zoomIn" data-wow-delay="0.1s">
                  <h5><strong>Location: </strong>${placedetails.pilgrimagelocation}</h5>
             </div>
             <div class="col-lg-6 col-md-12 text-center wow zoomIn" data-wow-delay="0.1s">
                  <h5><strong>Cost Per Person : </strong>${placedetails.pilgrimagecost} / Person</h5>
             </div>
             </div>
             
             <div class="col-lg-12 col-md-12 text-center wow zoomIn" data-wow-delay="0.1s">
                 <h5><strong>Pilgrimage Tour In </strong>${placedetails.days} <strong>Days & </strong>${placedetails.nights}<strong> Nights.</strong></h5>
             </div>
           	</div>
           	<div class="d-flex justify-content-center mb-2">
                                <a href="booking?pilgrimagename=${placedetails.pilgrimagename}" class="btn btn-sm btn-warning" style="margin:3px">Book pilgrimage</a>
                    </div>
           	</div>
           
            </div>
          </div> 
          </div>
          </div>
       </section>

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