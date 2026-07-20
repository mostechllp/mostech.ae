
<?php

session_start();

?>
<!doctype html>
<html class="fixed">
	<head>

		<!-- Basic -->
		<meta charset="UTF-8">

		<title> Admin </title>
		<meta name="keywords" content="HTML5 Admin Template" />
		<meta name="description" content="Porto Admin - Responsive HTML5 Template">
		<meta name="author" content="okler.net">

		<!-- Mobile Metas -->
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

		<!-- Web Fonts  -->
		<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700,800|Shadows+Into+Light" rel="stylesheet" type="text/css">

		<!-- Vendor CSS -->
		<link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.css" />

		<link rel="stylesheet" href="assets/vendor/font-awesome/css/font-awesome.css" />
		<link rel="stylesheet" href="assets/vendor/magnific-popup/magnific-popup.css" />
		<link rel="stylesheet" href="assets/vendor/bootstrap-datepicker/css/bootstrap-datepicker3.css" />

		<!-- Specific Page Vendor CSS -->
		<link rel="stylesheet" href="assets/vendor/jquery-ui/jquery-ui.css" />
		<link rel="stylesheet" href="assets/vendor/jquery-ui/jquery-ui.theme.css" />
		<link rel="stylesheet" href="assets/vendor/bootstrap-multiselect/bootstrap-multiselect.css" />
        <link rel="stylesheet" href="assets/vendor/morris.js/morris.css" />
        <!-- Specific Page Vendor CSS -->
		<link rel="stylesheet" href="assets/vendor/select2/css/select2.css" />
		<link rel="stylesheet" href="assets/vendor/select2-bootstrap-theme/select2-bootstrap.min.css" />
		<link rel="stylesheet" href="assets/vendor/jquery-datatables-bs3/assets/css/datatables.css" />

		<!-- Theme CSS -->
		<link rel="stylesheet" href="assets/stylesheets/theme.css" />

		<!-- Skin CSS -->
		<link rel="stylesheet" href="assets/stylesheets/skins/default.css" />

		<!-- Theme Custom CSS -->
		<link rel="stylesheet" href="assets/stylesheets/theme-custom.css">

		<!-- Head Libs -->
		<script src="assets/vendor/modernizr/modernizr.js"></script>

	</head>
	<body>
		<section class="body">

			<!-- start: header -->
			<header class="header">
				<div class="logo-container">
					<a href="#" class="logo">
						<img src="../img/logo.png" width="200" height="50" alt="Porto Admin" />
					</a>
					<div class="visible-xs toggle-sidebar-left" data-toggle-class="sidebar-left-opened" data-target="html" data-fire-event="sidebar-left-opened">
						<i class="fa fa-bars" aria-label="Toggle sidebar"></i>
					</div>
				</div>
			
				<!-- start: search & user box -->
				<div class="header-right">
			
					
			
			
					
			
					<span class="separator"></span>
			
					<div id="userbox" class="userbox">
						<a href="#" data-toggle="dropdown">
							<figure class="profile-picture">
								<!-- <img src="../images/egger/kk egger.png" alt="Joseph Doe" class="img-circle" data-lock-picture="../images/egger/kk egger.png" /> -->
							</figure>
							<div class="profile-info" data-lock-name="Admin" data-lock-email="info@spotonz.com">
								<span class="name">Administrator</span>
								<span class="role">Admin</span>
							</div>
			
							<i class="fa custom-caret"></i>
						</a>
			
						<div class="dropdown-menu">
							<ul class="list-unstyled">
								<li class="divider"></li>
							
								<li>
									<a role="menuitem" tabindex="-1" href="logout.php"><i class="fa fa-power-off"></i> Logout</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- end: search & user box -->
			</header>
			<!-- end: header -->

			<div class="inner-wrapper">
				<!-- start: sidebar -->
				<aside id="sidebar-left" class="sidebar-left">
				
				    <div class="sidebar-header">
				        <div class="sidebar-title">
				          .
				        </div>
				        <div class="sidebar-toggle hidden-xs" data-toggle-class="sidebar-left-collapsed" data-target="html" data-fire-event="sidebar-left-toggle">
				            <i class="fa fa-bars" aria-label="Toggle sidebar"></i>
				        </div>
				    </div>
				
				    <div class="nano">
				        <div class="nano-content">
				            <nav id="menu" class="nav-main" role="navigation">
				            
				                <ul class="nav nav-main">
				                    <li>
				                        <a href="home.php">
				                            <i class="fa fa-home" aria-hidden="true"></i>
				                            <span>Dashboard</span>
				                        </a>                        
                                    </li>
                                  
                                    <li>
				                        <a href="addblog.php">
                                        <i class="fa fa-tasks" aria-hidden="true"></i>
				                            <span>Add Blog</span>
				                        </a>                        
                                    </li>
                                    <li>
				                        <a href="viewBlog.php">
                                        <i class="fa fa-table" aria-hidden="true"></i>
				                            <span>View Blog</span>
				                        </a>                        
									</li>
															
										<li>
				                        <a href="addgallery.php">
                                        <i class="fa fa-table" aria-hidden="true"></i>
				                            <span>Add Gallery</span>
				                        </a>                        
									</li>
									
										<li>
				                        <a href="viewgallery.php">
                                        <i class="fa fa-table" aria-hidden="true"></i>
				                            <span>View Gallery</span>
				                        </a>                        
									</li>
								
									<li>
				                        <a href="notification.php">
                                        <i class="fa fa-table" aria-hidden="true"></i>
				                            <span> Notifications</span>
				                        </a>                        
									</li>
											
										
									<li>
				                        <a href="Viewcareers.php">
                                        <i class="fa fa-table" aria-hidden="true"></i>
				                            <span> View Careers</span>
				                        </a>                        
									</li>
									
									
									<li>
				                        <a href="viewUsers.php">
                                        <i class="fa fa-table" aria-hidden="true"></i>
				                            <span>Users</span>
				                        </a>                        
									</li>
									
											
									<li>
				                        <a href="resetPassword.php">
                                        <i class="fa fa-table" aria-hidden="true"></i>
				                            <span> ResetPassword</span>
				                        </a>                        
									</li>
									
									<li>
				                        <a href="logout.php">
                                        <i class="fa fa-table" aria-hidden="true"></i>
				                            <span>Logout</span>
				                        </a>                        
                                    </li>
									




				                   
				                   
				
				                </ul>
				            </nav>
				
				     
				            
				        </div>
				
				        <script>
				            // Maintain Scroll Position
				            if (typeof localStorage !== 'undefined') {
				                if (localStorage.getItem('sidebar-left-position') !== null) {
				                    var initialPosition = localStorage.getItem('sidebar-left-position'),
				                        sidebarLeft = document.querySelector('#sidebar-left .nano-content');
				                    
				                    sidebarLeft.scrollTop = initialPosition;
				                }
				            }
				        </script>
				        
				
				    </div>
				
				</aside>
				<!-- end: sidebar -->