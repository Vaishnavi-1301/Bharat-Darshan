<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">

  <title>Add Images To Gallery</title>
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
      <h1>Bharat Darshan Gallery</h1>
      <nav>
        <ol class="breadcrumb">
          <li class="breadcrumb-item"><a href="admindashboard">Home</a></li>
          <li class="breadcrumb-item">Admin</li>
          <li class="breadcrumb-item active">Update Bharat Darshan Gallery</li>
        </ol>
      </nav>
    </div><!-- End Page Title -->
	
	<div class="col-xl-12 col-md-12 text-center">
	<h1>Add Images To <img src="Logo/Logo.png" alt="logo"style="width:150px;height:70px;padding:10px">Gallery</h1>
	
	<div class="card">
            <div class="card-body pt-3">
            <form action="updategallery" method="post"enctype="multipart/form-data">
            <div class="row mb-3">
                      <label for="uploadimage" class="col-md-4 col-lg-3 col-form-label">Upload Image For Gallery</label>
                      <div class="col-md-8 col-lg-9">
                        <input name="image" type="file" class="form-control" id="uploadimage" required="required">
                        <p style="color:red;">*file Format must be In JPG,PNG,JPEG..</p>
                      </div>
            </div>
            
            
            <div class="row mb-3">
                      <label for="about" class="col-md-4 col-lg-3 col-form-label">About Image</label>
                      <div class="col-md-8 col-lg-9">
                        <textarea name="about" type="text" class="form-control" id="about""></textarea>
                      </div>
            </div>
                    
            <div class="text-center">
                      <button type="submit" class="btn btn-primary">Update Gallery</button>
            </div>
            </form>
            </div>
    </div>
	
	
	</div>
    

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