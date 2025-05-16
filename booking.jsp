<!DOCTYPE html>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Booking</title>
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
<!-- registration start -->
<div  class="container-xxl py-5">
    <div class="container">
    	<div class="col-xl-12 col-md-12 text-center">
				<h2><img src="Logo/Logo.png" alt="Logo" style="width:120px;height:40px">
				<c:if test="${packagedetails!=null}">
					Pilgrimage Package Booking
				</c:if>
				<c:if test="${placedetails!=null}">
					Pilgrimage Place Booking
				</c:if>
				</h2>
       </div>
        <div class="text-center wow fadeInUp" data-wow-delay="0.1s">
            <h6 class="section-title bg-white text-center text-primary px-3"> </h6>
        </div>
    </div>
</div>

<div id="booking1"class="container-xxl py-5 wow fadeInUp" data-wow-delay="0.1s">
        <div class="containerb">
            <div class="booking1 p-5">
                <div class="row g-5 align-items-center">
                    <div class="col-md-6 text-white">
                        <h6 class="text-white text-uppercase"><img style="width:120px;height:60px"src="Logo/Logo.png" alt="Logo"></h6>
                        <h1 class="text-white mb-4">Book Your Pilgrimage With Us..</h1>
                        <p class="mb-4">We Plan A Spiritual,peaceful And a Exciting Pilgrimage For Our Pilgrims </p>
                        <p class="mb-4">You Just Have To Fill This Form To Book Your Pilgrimage And Make Online Payment Thats it.. We Plan Everything Perfect for You...</p>
                        
                    </div>
                    <div class="col-md-6">
                        <h4 class="text-white mb-4">
                        	<c:if test="${packagedetails!=null}">
								Book <strong style="color:orange">${packagedetails.packagename}</strong> Package 
							</c:if>
							<c:if test="${placedetails!=null}">
								Book <strong style="color:orange">${placedetails.pilgrimagename}</strong> Pilgrimage
							</c:if>
                        </h4>
                        <form action="<c:if test="${packagedetails!=null}">bookpilgrimage?cost=${packagedetails.packagecost}</c:if><c:if test="${placedetails!=null}">bookpilgrimage?cost=${placedetails.pilgrimagecost}</c:if>" method="post">
                        
                        <input type="hidden" name="email" value="${userdetails.email}"/>
                        <input type="hidden" name="packageorplace" value="<c:if test="${packagedetails!=null}">package</c:if><c:if test="${placedetails!=null}">place</c:if>"/>
                        <input type="hidden" name="pilgrimagename" value="<c:if test="${packagedetails!=null}">${packagedetails.packagename}</c:if><c:if test="${placedetails!=null}">${placedetails.pilgrimagename}</c:if>"/>
                        <input type="hidden" name="perpersoncost" value="<c:if test="${packagedetails!=null}">${packagedetails.packagecost}</c:if><c:if test="${placedetails!=null}">${placedetails.pilgrimagecost}</c:if>"/>
                        
                        
                        
                            <div class="row g-3">
                                <div class="col-4">
                                    <div class="form-floating text-white" >
                                    	<input type="date" name="dateofbooking" class="form-control bg-transparent" id="bookingdate" placeholder="Enter Todays Date"required="required"style="border-color:#FE8800;color:#FE8800">
                                        <label for="bookingdate">Enter Todays Date</label>
                                    </div>
                                </div> 
                                <div class="col-8">
                                    <div class="form-floating date text-white">
                                        <select  name="totalpilgrims"class="form-select bg-transparent" id="totalpilgrims"required="required" style="border-color:#FE8800;color:#FE8800">
                                            <option value="1">1</option>
                                            <option value="2">2</option>
                                            <option value="3">3</option>
                                            <option value="4">4</option>
                                            <option value="5">5</option>
                                        </select>
                                        <label for="totalpilgrims">Select No. Of Pilgrims</label>
                                        <p style="color:red">*Maximum 5 Pilgrims Can Add Per Pilgrimage</p>
                                    </div>
                                </div>
                                
                                <div class="col-12">
                                    <div class="form-floating text-white" >
                                    	<input type="text" name="allpilgrimnames" class="form-control bg-transparent" id="allpilgrimnames" placeholder="Enter Todays Date"required="required"style="border-color:#FE8800;color:#FE8800">
                                        <label for="allpilgrimnames">Enter All Pilgrims Name Here.</label>
                                        <p style="color:red">*Enter Pilgrims Name Like- Name Surname,Name Surname</p>
                                    </div>
                                </div> 
                                 
                                 <div class="col-12">
                                    <div class="form-floating text-white text-center" >
                                    	<h5>Plan Your Pilgrimage Dates As Per Your Availability...</h5>
                                    </div>
                                </div>
                                 
                                <div class="col-md-6">
                                    <div class="form-floating date text-white">
                                        <select  name="pilgrimagedate"class="form-select bg-transparent" id="pilgrimagedate"required="required" style="border-color:#FE8800;color:#FE8800">
                                            <option value="1-10">1-10</option>
                                            <option value="5-15">5-15</option>
                                            <option value="10-20">10-20</option>
                                            <option value="15-25">15-25</option>
                                            <option value="20-30">20-30</option>
                                        </select>
                                        <label for="pilgrimagedate">Select Date In Between:</label>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="form-floating text-white">
                                        <select  name="pilgrimagemonth"class="form-select bg-transparent" id="pilgrimagemonth"required="required" style="border-color:#FE8800;color:#FE8800">
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
                                        <label for="pilgrimagemonth">Select Month:</label>
                                    </div>
                                    </div>
                                     
                                <div class="col-md-3">
                                    <div class="form-floating text-white">
                                       <select  name="pilgrimageyear"class="form-select bg-transparent" id="pilgrimageyear"required="required" style="border-color:#FE8800;color:#FE8800">
                                            <option value="2023">2025</option>
                                            <option value="2024">2026</option>
                                            <option value="2025">2027</option>
                                        </select>
                                        <label for="pilgrimageyear">Select Year:</label>
                                    </div>
                                </div>
                                
                                <div class="col-12">
                                    <button class="btn btn-outline-light w-100 py-3" type="submit" style="border-color:#FE8800;color:#FE8800">Proceed For Booking</button>
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