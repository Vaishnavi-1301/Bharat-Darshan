<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Verify Booking</title>
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
	<link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <!-- Libraries Stylesheet -->
    <link href="lib/animate/animate.min.css" rel="stylesheet">
    <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

    <!-- Customized Bootstrap Stylesheet -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>
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

<br>
<br>

<div  class="container-xxl py-5">
    <div class="container">
    	<div class="col-xl-12 col-md-12 text-center">
				<h2><img src="Logo/Logo.png" alt="Logo" style="width:120px;height:40px">Booking Details Verified</h2>
				<h4>Proceed For Online Payment For Complete Your Booking</h4>
       </div>
        <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
            <h6 class="section-title bg-white text-center text-primary px-3"> </h6>
        </div>
    </div>
</div>

<div id="booking1"class="container-xxl py-5 wow fadeInUp" data-wow-delay="0.1s">
        <div class="containerb">
            <div class="booking1 p-5 text-center">
                <h2 style="color:white">Your Total Booking Price Is:</h2>
                <h3 style="color:orange">${totalcost} <i class="bi bi-currency-rupee"></i></h3>
                <br>
                <br>
                <form>
                <input type="hidden" class="form-control" id="amount" value="${totalcost}">
                </form>
                <button onclick="paymentStart()" class="btn btn-warning btn-lg btn-block" type="submit">Make A Payment</button>
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


<script
  src="https://code.jquery.com/jquery-3.7.0.min.js"
  integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g="
  crossorigin="anonymous"></script>




<!-- sweatalert cdn -->
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>

<!-- Razorpay form script -->
<script src="https://checkout.razorpay.com/v1/checkout.js"></script>

<!-- Template Main JS File -->  
  <script src="js/payment.js"></script>
   
<script>
(function () {
	  'use strict'

	  window.addEventListener('load', function () {
	    // Fetch all the forms we want to apply custom Bootstrap validation styles to
	    var forms = document.getElementsByClassName('needs-validation')

	    // Loop over them and prevent submission
	    Array.prototype.filter.call(forms, function (form) {
	      form.addEventListener('submit', function (event) {
	        if (form.checkValidity() === false) {
	          event.preventDefault()
	          event.stopPropagation()
	        }
	        form.classList.add('was-validated')
	      }, false)
	    })
	  }, false)
	}())
</script>

</html>