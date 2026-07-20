<?php
include('header.php');
?>



<?php

include('connection.php');

if(isset($_POST['add']))
{
	$notification=$_POST['notification'];
	
	$stmt=$con->prepare("INSERT INTO `notification`(`notification`) VALUES (?)");
	$stmt->bindValue(1,$notification);
	$res=$stmt->execute();
	if($res)
	{
		?>
		<script>
        alert("Successfully Added !");
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
						<h2>Add Notification</h2>
					
						<div class="right-wrapper pull-right">
							<ol class="breadcrumbs">
								<li>
                                <a href="index">
										<i class="fa fa-home"></i>
									</a>
								</li>
								<li><span>Add Notification&emsp;</span></li>
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
									<div class="col-sm-12">
										<div class="form-group">
										<label class="control-label"><b>Add Notification</b></label>
                                        <input type="text" name="notification" class="form-control" required>
										</div>
										</div>
										</div>
									
                                 
								
									<br/>
                                    <center><button type="submit" name="add" class="btn btn-primary">Submit</button></center>
                                    </form>
								</div>
								
							</section>
						</div>
					</div>


                    <div class="row">
							<div class="col-md-12">
								<section class="panel">
									<header class="panel-heading">
										
						
										<h2 class="panel-title">Notification</h2>
									</header>
									<div class="panel-body">
										<div class="table-responsive">
											<table class="table mb-none">
												<thead>
													<tr>
														<th>#</th>
														<th>Notifications</th>
														<th>Delete</th>
													</tr>
												</thead>
												<tbody>
                                                <?php
												$stmt=$con->query("SELECT `id`, `notification` FROM `notification` ORDER BY `id` desc limit 6");
												$i=1;
												while($row=$stmt->fetch())
												{
												?>
												<tr>
												<td><?php echo $i; ?></td>
												<td><?php echo $row['notification']; ?></td>
												<td><a href="deletenot.php?idd=<?php echo $row['id']; ?>"><button type="button" class="mb-xs mt-xs mr-xs btn btn-warning">Delete</button></a></td>                                                        
												</tr>
												<?php
                                                 $i++;
												 }
												 ?>
												</tbody>
											</table>
										</div>
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