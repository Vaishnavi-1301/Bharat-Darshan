<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Package Details</title>
  <meta content="" name="description">
  <meta content="" name="keywords">

  <!-- Favicons -->
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

  <!-- =======================================================
  * Template Name: NiceAdmin
  * Updated: Mar 09 2023 with Bootstrap v5.2.3
  * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>

<body>

<!-- Navbar -->
<%@include file="adminnavbar.jsp"%>
<!-- Navbar -->

 
<!-- Navbar -->
<%@include file="adminsidebar.jsp"%>
<!-- Navbar -->

  <main id="main" class="main">

    <div class="pagetitle">
      <h1>Package Details</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
          <li class="breadcrumb-item">Admin</li>
          <li class="breadcrumb-item ">View/Modify Packages</li>
          <li class="breadcrumb-item active">Package Details</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section profile">
      <div class="row">
        <div class="col-xl-12 col-md-12 text-center">
				<h2><img src="Logo/Logo.png" alt="Logo" style="width:120px;height:40px"> Pilgrimage Package Details</h2>
       </div>

        <div class="col-xl-12 col-md-12">
			<div class="card" style="margin-top:20px;border-radius:20px;border-color:orange;border-style:solid;overflow:hidden;border-width:1px">
            <div class="card-body pt-3">
             <h2 class="text-center">${packagedetails.packagename}</h2> 
             <div class="col-lg-12 col-md-12 text-center wow zoomIn" data-wow-delay="0.1s" style="height: 300px;">
                  <img class="img-fluid" src="images/packages/${packagedetails.packagephoto}" alt="" style="width:50%;height: 300px;border-radius:10px">
             </div>
             <div class="col-lg-12 col-md-12 text-center wow zoomIn" data-wow-delay="0.1s">
                  <p>${packagedetails.aboutpackage}</p>
             </div>
             
             <div class="col-lg-12 col-md-12 text-center wow zoomIn" data-wow-delay="0.1s">
                 <h5><strong>Pilgrimage Tour In </strong>${packagedetails.days} <strong>Days & </strong>${packagedetails.nights}<strong> Nights.</strong></h5>
             </div>
             
              <div class="col-lg-12 col-md-12 text-center wow zoomIn" data-wow-delay="0.1s">
                 <h5><strong>Cost Per Person : </strong>${packagedetails.packagecost} / Person</h5>
             </div>
             <br>
             <div class="col-lg-12 col-md-12 text-center wow zoomIn" data-wow-delay="0.1s">
                 <h4><strong>Pilgrimage Places Visits In This Package Are</strong></h4>
                 <br>
             </div>
             
             
             <div class="row justify-content-center">
                  
                  <c:forEach items="${placeslistbypackagename}" var="placedetails">
                	<div class="col-lg-4 col-md-6">
                    <div style="border-style:solid;border-width:1px;border-color:orange;border-radius:15px;width:100%;overflow:hidden;">
                        <div class="overflow-hidden">
                            <img class="img-fluid" src="images/places/${placedetails.pilgrimagephoto}" alt=""style="width:100%;height:180px;border-radius:15px;">
                        </div>
                        <div class="d-flex border-bottom">
                            <h4 class="flex-fill text-center border-end py-2"><strong>${placedetails.pilgrimagename}</strong></h4>
                        </div>
                        <div class="text-center">
                        	<h6><strong>Location: </strong>${placedetails.pilgrimagelocation}</h6>
                        </div>
                    </div>
                </div>
                </c:forEach>
                
             </div>
             
           	</div>
           	</div>

            </div>
          </div> 
       </section>

  </main><!-- End #main -->

  <!-- ======= Footer ======= -->
  <footer id="footer" class="footer">
    <div class="copyright">
      &copy; Copyright <strong><span>Bharat DarshanAdmin</span></strong>. All Rights Reserved
    </div>
    <div class="credits">
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

</body>

</html>