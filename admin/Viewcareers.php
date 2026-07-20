<?php
include('header.php');
?>



<?php

include('connection.php');

if(isset($_POST['addPro']))
{
	$datee=$_POST['datee'];
	$title=$_POST['title'];
	$descr=$_POST['descr'];
	$status="";
	
	$name1=$_FILES['image1']['name'];
	$size1=$_FILES['image1']['size'];
	$type1=$_FILES['image1']['type'];
	$temp1=$_FILES['image1']['tmp_name'];
	$rand1=rand(1,7888);
	$location1="images/blog/".$rand1.$name1;
	$productimage1=$rand1.$name1;
	move_uploaded_file($temp1,$location1);

	$stmt=$con->prepare("INSERT INTO `careers`( `title`, `descr`, `filee`, `datee`, `status`)  VALUES (?,?,?,?,?)");
	$stmt->bindValue(1,$title);
	$stmt->bindValue(2,$descr);
	$stmt->bindValue(3,$location1);
	$stmt->bindValue(4,$datee);
	$stmt->bindValue(5,'1');
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
						<h2>Careers</h2>
					
						<div class="right-wrapper pull-right">
							<ol class="breadcrumbs">
								<li>
                                <a href="index">
										<i class="fa fa-home"></i>
									</a>
								</li>
								<li><span>Add Careers&emsp;</span></li>
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
												<label class="control-label"><b> Title</b></label>
                                           
												<input type="text" name="title" class="form-control" required>

											</div>
										</div>

                                    <div class="col-sm-4">
											<div class="form-group">
												<label class="control-label"><b>Date</b></label>
                                           
												<input type="date" name="datee" class="form-control" required>

											</div>
										</div>

										<div class="col-sm-4">
											<div class="form-group">
												<label class="control-label"><b>Description</b></label>
                                           
												<input type="text" name="descr" class="form-control" required>

											</div>
										</div>
                                  

                                        
								
				
									<div class="col-sm-6">
											<div class="form-group">
												<label class="control-label"><b> Image</b></label>
                                           
												<input type="file" name="image1" class="form-control" required>

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


                    <div class="row">
							<div class="col-md-12">
								<section class="panel">
									<header class="panel-heading">
										
						
										<h2 class="panel-title">View Careers</h2>
									</header>
									<div class="panel-body">
										<div class="table-responsive">
											<table class="table mb-none">
												<thead>
													<tr>
														<th>#</th>
														<th>Title</th>
														<th>Description</th>
														<th>Date</th>
														<th>Image</th>
														<th>Status</th>
														<th>Delete</th>
													</tr>
												</thead>
												<tbody>
  <?php
												$stmt=$con->query("SELECT * FROM `careers` ORDER BY `id` desc");
												$i=1;
												while($row=$stmt->fetch())
												{
												?>
												<tr>
												<td><?php echo $i; ?></td>
												<td><?php echo $row['title']; ?></td>
												<td><?php echo $row['descr']; ?></td>
												<td><?php echo $row['datee']; ?></td>
												<td><img src="<?php echo $row['filee']; ?>" width="150" height="150"></td>
                                                  
														
			<?php
                                                if($row['status']==1)
                                                {
                                                    ?>  <td>
                                         

                                                    <a href="uptPop2.php?idd=<?php echo $row['id']; ?>"><button type="button" class="mb-xs mt-xs mr-xs btn btn-primary">ACTIVE</button></a>
                                                      
                                
                                                    </td>
                                                    <?php
                                                }
                                                else
                                                {
                                                    ?>
  <td>
                                         

                                         <a href="uptNotPop2.php?idd=<?php echo $row['id']; ?>"><button type="button" class="mb-xs mt-xs mr-xs btn btn-danger">INACTIVE</button></a>
                                           
                     
                                         </td>
                                                    <?php
                                                }
                                                ?>
											 <td>
                                         
										 <a href="deleteCar.php?idd=<?php echo $row['id']; ?>"><button type="button" class="mb-xs mt-xs mr-xs btn btn-warning">Delete</button></a>
										   
										 </td>	</tr>
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