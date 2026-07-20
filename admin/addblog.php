<?php
include('header.php');
?>



<?php

include('connection.php');

if(isset($_POST['addPro']))
{
	$datee=$_POST['datee'];
	$title=$_POST['title'];
	$namee=$_POST['namee'];
	$tag=$_POST['tag'];
	$typee=$_POST['type'];
	
	$typee2=$_POST['type2'];
	$url=$_POST['url'];
	$desc=$_POST['desc'];
	$small="";
	$tagUrl=$_POST['tagUrl'];

	if($typee2==2)
	{
		$location2=$_POST['url2'];
	}
	else
	{
	$name2=$_FILES['image2']['name'];
	$size2=$_FILES['image2']['size'];
	$type2=$_FILES['image2']['type'];
	$temp2=$_FILES['image2']['tmp_name'];
	$rand2=rand(1,7888);
	$location2="images/blog/".$rand2.$name2;
	$productimage2=$rand2.$name2;
	move_uploaded_file($temp2,$location2);
	}


	
	if($typee==1)
	{
		$location=$url;
	}
	else
	{
	$name=$_FILES['image']['name'];
	$size=$_FILES['image']['size'];
	$type=$_FILES['image']['type'];
	$temp=$_FILES['image']['tmp_name'];
	$rand=rand(1,7888);
	$location="images/blog/".$rand.$name;
	$productimage=$rand.$name;
	move_uploaded_file($temp,$location);
	}
	$name1=$_FILES['image1']['name'];
	$size1=$_FILES['image1']['size'];
	$type1=$_FILES['image1']['type'];
	$temp1=$_FILES['image1']['tmp_name'];
	$rand1=rand(1,7888);
	$location1="images/blog/".$rand1.$name1;
	$productimage1=$rand1.$name1;
	move_uploaded_file($temp1,$location1);

	$stmt=$con->prepare("INSERT INTO `blog`(`title`, `content`, `datee`, `name`, `tag`, `isPopular`, `isImage`, `filee`, `small`, `tagUrl`, `imageSecond`, `isPdf`, `pdf`) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)");
	$stmt->bindValue(1,$title);
	$stmt->bindValue(2,$desc);
	$stmt->bindValue(3,$datee);
	$stmt->bindValue(4,$namee);
	$stmt->bindValue(5,$tag);
	$stmt->bindValue(6,'0');
	$stmt->bindValue(7,$typee);
	$stmt->bindValue(8,$location);
	$stmt->bindValue(9,$small);
	$stmt->bindValue(10,$tagUrl);
	$stmt->bindValue(11,$location1);
	$stmt->bindValue(12,$typee2);
	$stmt->bindValue(13,$location2);
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


<script>
			
			function myFunction2() {
				var type2 = document.getElementById("type2").value;
				var x2 = document.getElementById("myDIVI2");
				var xx2 = document.getElementById("myDIVV2");

if(type2==2)
{
	
	x2.style.display = "none";
	xx2.style.display = "block";
}

if(type2==1)
{
	
	x2.style.display = "block";
	xx2.style.display = "none";

}

}
</script>

				<section role="main" class="content-body">
					<header class="page-header">
						<h2>Add Blog</h2>
					
						<div class="right-wrapper pull-right">
							<ol class="breadcrumbs">
								<li>
                                <a href="index">
										<i class="fa fa-home"></i>
									</a>
								</li>
								<li><span>Add Blog&emsp;</span></li>
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
												<label class="control-label"><b>Blog Title</b></label>
                                           
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
												<label class="control-label"><b>Name</b></label>
                                           
												<input type="text" name="namee" class="form-control" required>

											</div>
										</div>

                                    <div class="col-sm-4">
											<div class="form-group">
												<label class="control-label"><b>Tag</b></label>
                                           
												<input type="text" name="tag" class="form-control" required>

											</div>
										</div>
										
	<div class="col-sm-6">
											<div class="form-group">
											<label class="control-label"><b>Choose File Type </b></label>
                                           
										   <select class="form-control mb-md" id="type" name="type" onchange="myFunction()" required>
											<option value="">Choose Type</option>
									
												   <option value="1">Video Url</option>
												   <option value="2">Image</option>
												   </select>
											</div>
										</div>
										<div id="myDIVI" style="display: none;">
										<div class="col-sm-6">
        <div class="form-group">
            <label class="control-label"><b>Blog Image</b></label>
            <input type="file" name="image" class="form-control">
        </div>
	</div>
										</div>
                                        
									<div id="myDIVV" style="display: none;">
										<div class="col-sm-6">
        <div class="form-group">
            <label class="control-label"><b>Blog Video Url</b></label>
            <input type="text" name="url" class="form-control">
        </div>
	</div>
										</div>

									</div>


										<div class="row">
										

										<div class="col-sm-6">
											<div class="form-group">
											<label class="control-label"><b>Choose File Type (PDF) </b></label>
                                           
										   <select class="form-control mb-md" id="type2" name="type2" onchange="myFunction2()" required>
											<option value="">Choose Type</option>
									
												   <option value="1">PDF</option>
												   <option value="2">PDF URL</option>
												   </select>
											</div>
										</div>
										<div id="myDIVI2" style="display: none;">
										<div class="col-sm-6">
        <div class="form-group">
            <label class="control-label"><b>PDF</b></label>
            <input type="file" name="image2" class="form-control">
        </div>
	</div>
										</div>
                                        
									<div id="myDIVV2" style="display: none;">
										<div class="col-sm-6">
        <div class="form-group">
            <label class="control-label"><b>PDF URL</b></label>
            <input type="text" name="url2" class="form-control">
        </div>
	</div>
										</div>


										</div>





										
										<div class="row">
										
										<div class="col-sm-8">
		<div class="form-group">
			<label class="control-label"><b>Contents</b></label>
			
			<textarea class="form-control" placeholder="Description" name="desc" required rows="5"></textarea>
		</div>
	</div>
					</div>
									<br/>
									<div class="col-sm-4">
											<div class="form-group">
												<label class="control-label"><b>Secondary Image</b></label>
                                           
												<input type="file" name="image1" class="form-control" required>

											</div>
										</div>

										<div class="col-sm-4">
											<div class="form-group">
												<label class="control-label"><b>Tag Url</b></label>
                                           
												<input type="text" name="tagUrl" class="form-control" required>

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
														<th>Title</th>
														<th>Date</th>
														<th>Name</th>
														<th>Tag</th>
														<th>Tag Url</th>
														<th>Contents</th>
														<th>File</th>
														<th>Image Secondary</th>
														<th>PDF</th>
													</tr>
												</thead>
												<tbody>


                                                <?php

        $stmt=$con->query("SELECT `id`, `title`, `content`, `datee`, `small`, `name`, `tag`, `isPopular`, `isImage`, `filee`, `tagUrl`, `imageSecond`, `isPdf`, `pdf` FROM `blog` ORDER BY `id` desc");
        $i=1;
        while($row=$stmt->fetch())
        
        {
            ?>


													<tr>
														<td><?php echo $i; ?></td>
                                                        <td><?php echo $row['title']; ?></td>
                                                        <td><?php echo $row['datee']; ?></td>
                                                        <td><?php echo $row['name']; ?></td>
                                                        <td><?php echo $row['tag']; ?></td>
                                                        <td><a href="<?php echo $row['tagUrl']; ?>"><?php echo $row['tagUrl']; ?></td>
														<td><?php echo $row['content']; ?></td>
														<?php
														if($row['isImage']==1)
														{
															?>
															<td>
<iframe frameborder="0" allowfullscreen="" src="https://www.youtube.com/embed/zcrUCvBD16k"></iframe></td>
															<?php
														}
														else
														{
															?>

<td><img src="<?php echo $row['filee']; ?>" width="150" height="150"></td>
															<?php
														}
														?>
                                                     
													
<td><img src="<?php echo $row['imageSecond']; ?>" width="150" height="150"></td>

<?php
														if($row['isPdf']==2)
														{
															?>
															<td>
															<a href="<?php echo $row['pdf']; ?>" target="_blank"><?php echo $row['pdf']; ?></a>
														</td>
															<?php
														}
														else
														{
															?>

<td><a href="<?php echo $row['pdf']; ?>" download>Download PDF</a></td>
															<?php
														}
														?>
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