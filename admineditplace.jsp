<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Edit PLace Details</title>
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
      <h1>Edit Place</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
          <li class="breadcrumb-item">Admin</li>
          <li class="breadcrumb-item active">Edit Place Details</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->

    <section class="section profile">

        <div class="col-xl-12 col-md-12">

          <div class="card" style="margin-top:20px;border-radius:20px">
            <div class="card-body pt-3">
              	<h2 class="text-center">Edit Existing <img src="Logo/Logo.png" alt="Logo" style="width:120px;height:40px"> Pilgrimage Place</h2>
				<br>
				
				<form action="updateplace?pilgrimagename=${place.pilgrimagename}" method="post"enctype="multipart/form-data">
                    
                    <div class="row mb-3">
                    <label for="Name" class="col-md-6 col-lg-2 col-form-label">Pilgrimage Place Name</label>
                    <div class="col-md-6 col-lg-8">
							<h3>${place.pilgrimagename}</h3>
                    </div>
                    </div>
                    
                    <div class="row">
                      <label for="about" class="col-md-6 col-lg-2 col-form-label">Update About Pilgrimage Place</label>
                      <div class="col-md-6 col-lg-8">
                        <textarea name="aboutpilgrimage" class="form-control" id="about"required="required"style="border-color:orange"></textarea>
                        <br>
                      </div>
                     </div>
                     
                    <div class="row mb-3">
                    <label for="location" class="col-md-6 col-lg-2 col-form-label">Update Pilgrimage Location</label>
                    <div class="col-md-6 col-lg-8">
                        <input name="pilgrimagelocation" type="text" class="form-control" id="location" required="required"style="border-color:orange">
                    </div>
                    </div>
                    
                    <hr style="color:orange">
                    <br>
                    
                    <div class="row mb-3">
                    <label for="Cost" class="col-md-6 col-lg-2 col-form-label">Pilgrimage Cost Per Person In <i class="bi bi-currency-rupee"></i></label>
                    <div class="col-md-6 col-lg-4">
                        <input name="pilgrimagecost" type="text" class="form-control" id="Cost" required="required"style="border-color:orange">
                    </div>
                    </div>
                    
                    <div class="row mb-3">
                    <label for="photo" class="col-md-6 col-lg-2 col-form-label">Set A Picture For Pilgrimage</label>
                      <div class="col-md-6 col-lg-4">
                        <input name="photo" type="file" class="form-control" id="photo" required="required"style="border-color:orange">
                        <p style="color:red;">*file Format must be In JPG,PNG,JPEG..</p>
                      </div>
                    </div>
                    
                    
                    <hr style="color:orange">
                    <br>
                    
                    <div class="row mb-3">
                    <label for="Days" class="col-md-3 col-lg-2 col-form-label">Tour In Days <i class="bi bi-calendar"></i></label>
                    <div class="col-md-3 col-lg-2">
                    	<select name="days" class="form-control" id="Days" required="required"style="border-color:orange">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							<option value="7">7</option>
							<option value="8">8</option>
							<option value="9">9</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
						</select>
                    </div>
                    
                    <label for="Nights" class="col-md-3 col-lg-2 col-form-label">Tour In Nights <i class="bi bi-calendar"></i></label>
                    <div class="col-md-3 col-lg-2">
                    	<select name="nights" class="form-control" id="Nights" required="required"style="border-color:orange">
							<option value="1">1</option>
							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							<option value="7">7</option>
							<option value="8">8</option>
							<option value="9">9</option>
							<option value="10">10</option>
							<option value="11">11</option>
							<option value="12">12</option>
						</select>
						<br>
                    </div>
                    </div>
                    
                    <div class="row mb-3">
                    <label for="packagename" class="col-md-3 col-lg-2 col-form-label">Select Package Name For It <i class="bi bi-box"></i></label>
                    <div class="col-md-3 col-lg-2">
                    	<select name="packagename" class="form-control" id="packagename" required="required"style="border-color:orange">
							<c:forEach items="${packageslist}" var="packagedetails">
							<option value="${packagedetails.packagename}">${packagedetails.packagename}</option>
							</c:forEach>
						</select>
                    </div>
                    </div>
                    
                    <div class="text-center">
                   	  <button style="border-radius:10px;border-color:orange;padding:3px" type="submit">Update Place</button>
                    </div>
                    
                    
                  </form>

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