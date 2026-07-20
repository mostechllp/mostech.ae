<?php
include('header.php');
?>



<?php

include('connection.php');

if(isset($_POST['addPro']))
{
    $idd=$_GET['idd'];
    $link=$_GET['link'];
	$reply=$_POST['reply'];


	$stmt=$con->prepare("UPDATE `comment` SET `reply`=? WHERE `id`=?");
	$stmt->bindValue(1,$reply);
	$stmt->bindValue(2,$idd);
	$res=$stmt->execute();
	if($res)
	{
		?>
          <script>
        window.location.href="comments.php?idd=<?php echo $link; ?>"; 
      </script>
          <?php
	}
	else
		{
			?>
			<script>alert("Adding Failed !");</script>
			<?php
		
	
		}
	}
		?>
		<script>
			
			function myFunction() {
				var type = document.getElementById("type").value;
				var x = document.getElementById("myDIVI");
				var xx = document.getElementById("myDIVV");

if(type==1)
{
	
	x.style.display = "none";
	xx.style.display = "block";
}

if(type==2)
{
	
	x.style.display = "block";
	xx.style.display = "none";

}

}
</script>

				<section role="main" class="content-body">
					<header class="page-header">
						<h2>Add Reply</h2>
					
						<div class="right-wrapper pull-right">
							<ol class="breadcrumbs">
								<li>
                                <a href="index">
										<i class="fa fa-home"></i>
									</a>
								</li>
								<li><span>Add Reply&emsp;</span></li>
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
									<div class="col-sm-8">
											<div class="form-group">
												<label class="control-label"><b>Reply</b></label>
                                           
												<input type="text" name="reply" class="form-control" required>

											</div>
										</div>

                                 
									</div>
									
									

									
                                 
								
									<br/>
                                    <center><button type="submit" name="addPro" class="btn btn-primary">Submit</button></center>
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