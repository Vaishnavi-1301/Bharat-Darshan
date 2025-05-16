<!-- ======= Header ======= -->
  <header id="header" class="header fixed-top d-flex align-items-center">
	 <a href="admindashboard"><img src="Logo/Logo.png" alt="logo"style="width:150px;height:70px;padding:10px"></a>
    <div class="d-flex align-items-center justify-content-between">
       <a href="admindashboard"><span style="font-family:sans-serif;font-size:30px;color:black">Admin</span></a>
      <i style="color:orange" class="bi bi-list toggle-sidebar-btn"></i>
    </div><!-- End Logo -->

       <nav class="header-nav ms-auto">
      <ul class="d-flex align-items-center">
          <li class="nav-item dropdown">

          <a class="nav-link nav-icon" href="viewmessages">
            <i class="bi bi-chat-left-text"></i>
      	</a>
      	<!-- End Messages Icon -->

        <li class="nav-item dropdown pe-3">

          <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
            <img src="images/admin/profilephoto/${admindetails.profilephoto}" alt="Profile" class="rounded-circle">
            <span class="d-none d-md-block dropdown-toggle ps-2">${admindetails.nickname}</span>
          </a><!-- End Profile Iamge Icon -->

          <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
            <li class="dropdown-header">
              <h6>${admindetails.fullname}</h6>
              <span>${admindetails.designation}</span>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="adminprofile">
                <i class="bi bi-person"></i>
                <span>My Profile</span>
              </a>
            </li>
            <li>
              <hr class="dropdown-divider">
            </li>

            <li>
              <a class="dropdown-item d-flex align-items-center" href="logoutadmin">
                <i class="bi bi-box-arrow-right"></i>
                <span>log Out</span>
              </a>
            </li>

          </ul><!-- End Profile Dropdown Items -->
        </li><!-- End Profile Nav -->

      </ul>
    </nav><!-- End Icons Navigation -->

  </header><!-- End Header -->