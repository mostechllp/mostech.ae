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
	$url=$_POST['url'];
	$desc=$_POST['desc'];
	$small="";
	$tagUrl=$_POST['tagUrl'];
	
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
    $idd=$_GET['idd'];
	$stmt=$con->prepare("UPDATE `blog` SET `title`=?,`content`=?,`datee`=?,`name`=?,`tag`=?,`isPopular`=?,`isImage`=?,`filee`=?,`tagUrl`=?,`imageSecond`=? WHERE `id`='$idd'");
	$stmt->bindValue(1,$title);
	$stmt->bindValue(2,$desc);
	$stmt->bindValue(3,$datee);
	$stmt->bindValue(4,$namee);
	$stmt->bindValue(5,$tag);
	$stmt->bindValue(6,'0');
	$stmt->bindValue(7,$typee);
	$stmt->bindValue(8,$location);
	$stmt->bindValue(9,$tagUrl);
	$stmt->bindValue(10,$location1);
	$res=$stmt->execute();
	if($res)
	{
		?>
		<script>
        alert("Successfully Updated !");
        window.location.href="viewBlog.php";
      </script>
		<?php
	}
	else
		{
			?>
			<script>alert("Updation Failed !");</script>
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
                                    <?php
$idd=$_GET['idd'];
include('connection.php');
$stmt=$con->query("SELECT `id`, `title`, `content`, `datee`, `small`, `name`, `tag`, `isPopular`, `isImage`, `filee`, `tagUrl`, `imageSecond` FROM `blog` where `id`='$idd'");
$row=$stmt->fetch();

    ?>
									<div class="row">
									<div class="col-sm-4">
											<div class="form-group">
												<label class="control-label"><b>Blog Title</b></label>
                                           
												<input type="text" name="title" class="form-control" value="<?php echo $row['title']; ?>" required>

											</div>
										</div>

                                    <div class="col-sm-4">
											<div class="form-group">
												<label class="control-label"><b>Date</b></label>
                                           
												<input type="date" name="datee" class="form-control" value="<?php echo $row['datee']; ?>" required>

											</div>
										</div>

										<div class="col-sm-4">
											<div class="form-group">
												<label class="control-label"><b>Name</b></label>
                                           
												<input type="text" name="namee" class="form-control" value="<?php echo $row['name']; ?>" required>

											</div>
										</div>

                                    <div class="col-sm-4">
											<div class="form-group">
												<label class="control-label"><b>Tag</b></label>
                                           
												<input type="text" name="tag" class="form-control" value="<?php echo $row['tag']; ?>" required>

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
										
										
										<div class="col-sm-8">
		<div class="form-group">
			<label class="control-label"><b>Contents</b></label>
			
				<textarea class="form-control"  name="desc" required rows="5"><?php echo $row['content']; ?></textarea>
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
                                           
												<input type="text" name="tagUrl" class="form-control" value="<?php echo $row['tagUrl']; ?>" required>

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