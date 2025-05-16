<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>View/Modify Packages</title>
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
      <h1>View/Modify Packages</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
          <li class="breadcrumb-item">Admin</li>
          <li class="breadcrumb-item">Create Packages</li>
          <li class="breadcrumb-item active">View/Modify Packages</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section profile">
      <div class="row">
        <div class="col-xl-12 col-md-12 text-center">
				<h2><img src="Logo/Logo.png" alt="Logo" style="width:120px;height:40px"> Packages</h2>
       </div>

        <div class="col-xl-12 col-md-12">

          <div class="card" style="margin-top:20px;border-radius:20px">
            <div class="card-body pt-3">
              	
              	
              	
              	
		  <div class="row g-4 justify-content-center">
                
                <c:forEach items="${packageslist}" var="packagedetails">
                <div class="col-lg-4 col-md-6">
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
                                <a href="packagedetails?packagename=${packagedetails.packagename}" class="btn btn-sm btn-primary" style="margin:3px">Explore</a>
                                <a href="deletepackage?packagename=${packagedetails.packagename}" class="btn btn-sm btn-danger"style="margin:3px">Delete</a>
                                <a href="editpackage?packagename=${packagedetails.packagename}" class="btn btn-sm btn-primary" style="margin:3px">Edit</a>
                                
                            </div>
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