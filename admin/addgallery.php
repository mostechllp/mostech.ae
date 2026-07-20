<?php
include('header.php');
?>



<?php

include('connection.php');

if(isset($_POST['addPro']))
{


	$name1=$_FILES['image1']['name'];
	$size1=$_FILES['image1']['size'];
	$type1=$_FILES['image1']['type'];
	$temp1=$_FILES['image1']['tmp_name'];
	$rand1=rand(1,7888);
	$location1="images/blog/".$rand1.$name1;
	$productimage1=$rand1.$name1;
	move_uploaded_file($temp1,$location1);

	$stmt=$con->prepare("INSERT INTO `gallery`(`img`,`ishom`) VALUES (?,?)");

	$stmt->bindValue(1,$location1);
	$stmt->bindValue(2,'0');
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
						<h2>Add Gallery</h2>
					
						<div class="right-wrapper pull-right">
							<ol class="breadcrumbs">
								<li>
                                <a href="index">
										<i class="fa fa-home"></i>
									</a>
								</li>
								<li><span>Add Gallery &emsp;</span></li>
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
									


                   
				
									<div class="col-sm-6">
											<div class="form-group">
												<label class="control-label"><b>Image</b></label>
                                           
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
										
						
										<h2 class="panel-title">Blog</h2>
									</header>
									<div class="panel-body">
										<div class="table-responsive">
											<table class="table mb-none">
												<thead>
													<tr>
														<th>#</th>
														<th>Image</th>
													</tr>
												</thead>
												<tbody>


                                                <?php

        $stmt=$con->query("SELECT `id`, `img` FROM `gallery` ORDER BY `id` desc");
        $i=1;
        while($row=$stmt->fetch())
        
        {
            ?>


													<tr>
														<td><?php echo $i; ?></td>
														<td><img src="<?php echo $row['img']; ?>" width="150" height="150"></td>
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