<?php

include('header.php');

if(!isset($_SESSION['username']))
{	
	header("Location: index.php");
}

?>


<?php

include('connection.php');

$flag=0;

if(isset($_POST['reset']))
{
	$username=$_SESSION['username'];
	$old=md5($_POST['old']);
	$new=$_POST['new'];
	$confirm=$_POST['confirm'];
	
	if($new!=$confirm)
	{
	?>
	
		<script>
        alert("*new and confirm passwords mismatch!");
      </script>
		<?php
	}
	else
	{
		$stmt=$con->prepare("SELECT `id` FROM `adminlogin` WHERE `username`=? AND `password`=?");
		$stmt->bindValue(1,$username);
		$stmt->bindValue(2,$old);
		$stmt->execute();
		$row_count=$stmt->rowCount();
		if($row_count<=0)
		{
		?>
	
		<script>
        alert("*wrong current password!");
      </script>
		<?php
		}
		else
		{
			$stmt1=$con->prepare("UPDATE `adminlogin` SET `password`=? WHERE `username`=?");
			$stmt1->bindValue(1,md5($confirm));
			$stmt1->bindValue(2,$username);
			if($stmt1->execute())
			{
				?>
	
		<script>
        alert("*Password changed successfully!");
      </script>
		<?php
			}
		}
	}
}


	

		?>





				<section role="main" class="content-body">
					<header class="page-header">
						<h2>Reset Password</h2>
					
						<div class="right-wrapper pull-right">
							<ol class="breadcrumbs">
								<li>
                                <a href="index">
										<i class="fa fa-home"></i>
									</a>
								</li>
								<li><span>Reset Password&emsp;</span></li>
							</ol>
					
						</div>
					</header>

					<!-- start: page -->
				

					<div class="row">
						

						<div class="col-md-12">
							<section class="panel">
							
								<div class="panel-body">
                                    <form action="" method="post" enctype="multipart/form-data">
									<div class="row">
									
									<div class="col-sm-4">
											<div class="form-group">
												<label class="control-label"><b>Current Password</b></label>
												<input type="password" name="old" class="form-control" required>
											</div>
										</div>
										
										<div class="col-sm-4">
											<div class="form-group">
												<label class="control-label"><b>New Password</b></label>
												<input type="password" name="new" class="form-control" required>
											</div>
										</div>

										<div class="col-sm-4">
											<div class="form-group">
												<label class="control-label"><b>Confirm Password</b></label>
												<input type="password" name="confirm" class="form-control" required>
											</div>
										</div>
									</div>
                                    <center><button type="submit" name="reset" class="btn btn-primary">Submit</button></center>
                                    </form>
								</div>
								
							</section>
						</div>
					</div>













                   
					<!-- end: page -->
				</section>
			</div>

			
		</section>

		<!-- Vendor -->
		<script src="assets/vendor/jquery/jquery.js"></script>
		<script src="assets/vendor/jquery-browser-mobile/jquery.browser.mobile.js"></script>
		<script src="assets/vendor/bootstrap/js/bootstrap.js"></script>
		<script src="assets/vendor/nanoscroller/nanoscroller.js"></script>
		<script src="assets/vendor/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
		<script src="assets/vendor/magnific-popup/jquery.magnific-popup.js"></script>
		<script src="assets/vendor/jquery-placeholder/jquery-placeholder.js"></script>
		
		<!-- Theme Base, Components and Settings -->
		<script src="assets/javascripts/theme.js"></script>
		
		<!-- Theme Custom -->
		<script src="assets/javascripts/theme.custom.js"></script>
		
		<!-- Theme Initialization Files -->
		<script src="assets/javascripts/theme.init.js"></script>

	</body>
</html>