<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>welcome ${userdetails.nickname}</title>
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
    
     <link rel="shortcut icon" href="icons/shortcut_icon.png" />
  <!-- Google Fonts -->
  <link href="https://fonts.gstatic.com" rel="preconnect">
  <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
  <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
  <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
  <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">

  <!-- Template Main CSS File -->
  <link href="assets/css/style.css" rel="stylesheet">
</head>
<body>
<!-- Navbar & slider Start -->
    <div class="container-fluid position-relative p-0">
        <nav class="navbar navbar-expand-lg navbar-light px-4 px-lg-5 py-3 py-lg-0">
            <a href="index" class="navbar-brand p-0">
                <img src="Logo/Logo.png" alt="Logo">
            </a>
            <div>
            <i  style="color:orange;margin:20px;font-weight:300px"class="bi bi-list toggle-sidebar-btn"></i>
            </div>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarCollapse">
                <span class="fa fa-bars"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarCollapse">
                <div class="navbar-nav ms-auto py-0">
                    <a href="index" class="nav-item nav-link">Home</a>
                    <a href="packages" class="nav-item nav-link">Packages</a>
                    <a href="destinations" class="nav-item nav-link">Destinations</a>
                    <a href="services" class="nav-item nav-link">Services</a>
                   	<a href="about" class="nav-item nav-link">About Us</a>
                   <div class="nav-item dropdown">
                        <a href="#" class="nav-link dropdown-toggle" data-bs-toggle="dropdown">
                        <img src="images/users/${userdetails.profilephoto}" alt="Profile" style="width:30px;height:30px"class="rounded-circle">
                      	 ${userdetails.nickname}
                        </a>
                        
                        <div class="dropdown-menu m-0">
                        <div class="dropdown-header">
             			 <h6>${userdetails.fullname}</h6>
            			</div>
            			<hr class="dropdown-divider">
            				<a class="dropdown-item" href="userprofile">
                			<i class="bi bi-person"></i>
                			<span>My Profile</span>
                			</a>
                			
                			<a class="dropdown-item" href="mybookings">
                			<i class="bi bi-person"></i>
                			<span>My Bookings</span>
                			</a>
                			
                            <a class="dropdown-item d-flex align-items-center" href="logoutuser">
               				<i class="bi bi-box-arrow-right"></i>
                			<span>log Out</span>
              				</a>
                        </div>
                        </div>
                        </div>
                        </div>
                        
                
        </nav>
         </div>
		<!-- Navbar & Hero End -->

        
        <!-- ======= Sidebar ======= -->
  <aside id="sidebar" class="sidebar" style="margin-top:40px;background-color:#F6F9FF">

    <ul class="sidebar-nav" id="sidebar-nav">

      <li class="nav-heading">Pages</li>
      
      <li class="nav-item">
        <a class="nav-link collapsed" href="mybookings"style="background-color:#F6F9FF">
          <i style="color:orange" class="bi bi-ticket"></i>
          <span>My Bookings</span>
        </a>
      </li><!-- End Profile Page Nav -->
      
      <li class="nav-item">
        <a class="nav-link collapsed" href="userprofile"style="background-color:#F6F9FF">
          <i style="color:orange" class="bi bi-person"></i>
          <span>My Profile</span>
        </a>
      </li><!-- End Profile Page Nav -->

	  <li class="nav-item">
        <a class="nav-link collapsed" href="review"style="background-color:#F6F9FF">
          <i style="color:orange" class="bi bi-card-list"></i>
          <span>Review BharatDarshan</span>
        </a>
      </li><!-- End Profile Page Nav -->
     
      <li class="nav-item">
        <a class="nav-link collapsed" href="logoutuser"style="background-color:#F6F9FF">
          <i style="color:orange" class="bi bi-box-arrow-right"></i>
          <span>Logout</span>
        </a>
      </li><!-- End Login Page Nav -->

    </ul>

  </aside><!-- End Sidebar-->
        
   <main id="main" class="main" style="margin-top:0px">

    <div class="pagetitle">
      <h1>My Bookings</h1>
      
    </div><!-- End Page Title -->
	
<div class="col-12">
	<table id="tablebookings" class="table" style="border-color:orange;text-align:center">
  	<thead>
    <tr>
      <th><i style="color:orange"class="bi bi-ticket"></i>Bookings</th>
      <th>Date Of Booking</th>
      <th>Package / place</th>
      <th>Pilgrimage Name</th>
      <th>Total Pilgrims</th>
      <th>Pilgrim Names</th>
      <th>Date</th>
      <th>Month</th>
      <th>year</th>
      <th>Total Cost</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach items="${mybookings}" var="mybookings">
    <tr>
      <td><i style="color:orange"class="bi bi-ticket"></i></td>
      <td>${mybookings.dateofbooking}</td>
      <td>${mybookings.packageorplace}</td>
      <td>${mybookings.pilgrimagename}</td>
      <td>${mybookings.totalpilgrims}</td>
      <td>${mybookings.allpilgrimnames}</td>
      <td>${mybookings.pilgrimagedate}</td>
      <td>${mybookings.pilgrimagemonth}</td>
      <td>${mybookings.pilgrimageyear}</td>
      <td>${mybookings.totalcost}</td>
    </tr>
   </c:forEach>
   </tbody>
</table>
</div>  

  </main><!-- End #main -->
        
        
        
        
        
        
        
        
        <!-- ======= Footer ======= -->
  <footer id="footer" class="footer">
    <div class="copyright">
      &copy; Copyright <strong><span>Bharat Darshan Pilgrimage</span></strong>. All Rights Reserved
    </div>
    <div class="credits">
      <!-- All the links in the footer should remain intact. -->
      <!-- You can delete the links only if you purchased the pro version. -->
      <!-- Licensing information: https://bootstrapmade.com/license/ -->
      <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
      Designed by <a>H&B Edits..</a>
    </div>
  </footer><!-- End Footer -->

  <a href="#" style="background-color:orange"class="back-to-top d-flex align-items-center justify-content-center"><i style="color:black"class="bi bi-arrow-up-short"></i></a>

  <!-- Vendor JS Files -->
  <script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/chart.js/chart.umd.js"></script>
  <script src="assets/vendor/echarts/echarts.min.js"></script>
  <script src="assets/vendor/quill/quill.min.js"></script>
  <script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
  <script src="assets/vendor/tinymce/tinymce.min.js"></script>
  <script src="assets/vendor/php-email-form/validate.js"></script>

  <!-- Template Main JS File -->
  <script src="assets/js/main.js"></script>


        
        
        
       
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