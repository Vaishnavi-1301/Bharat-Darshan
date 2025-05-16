<!-- Topbar Start -->
    <div class="container-fluid bg-dark px-5 d-none d-lg-block">
        <div class="row gx-0">
            <div class="col-lg-8 text-center text-lg-start mb-2 mb-lg-0">
                <div class="d-inline-flex align-items-center" style="height: 45px;">
                    <small class="me-3 text-light"><i class="fa fa-phone me-2"></i>9284625744 / 9405815744</small>
                    <small class="text-light"><i class="fa fa-envelope me-2"></i>bharatdarshan17s@gmail.com</small>
                </div>
            </div>
            <div class="col-lg-4 text-center text-lg-end">
                <div class="d-inline-flex align-items-center" style="height: 45px;">
				    <a class="btn btn-sm btn-outline-light btn-sm-square rounded-circle me-2" href=""><i class="fab fa-instagram fw-normal"></i></a>
                    <a class="btn btn-sm btn-outline-light btn-sm-square rounded-circle" href=""><i class="fab fa-youtube fw-normal"></i></a>
                </div>
            </div>
        </div>
    </div>
    <!-- Topbar End -->


    <!-- Navbar & slider Start -->
    <div class="container-fluid position-relative p-0">
        <nav class="navbar navbar-expand-lg navbar-light px-4 px-lg-5 py-3 py-lg-0">
            <a href="index" class="navbar-brand p-0">
                <img src="Logo/Logo.png" alt="Logo">
            </a>
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
                    <a href="#contact" class="nav-item nav-link">Contact Us</a>
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
                
        </nav>
        </div>