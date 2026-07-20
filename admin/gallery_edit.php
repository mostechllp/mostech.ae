<?php

session_start();

if(!isset($_SESSION['username']))
{	
	header("Location: index.php");
}

?>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Excel</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
       
<!-- Favicons
    ================================================== -->
<link rel="shortcut icon" href="../img/favicon.jpg" type="image/x-icon">
<link rel="apple-touch-icon" href="../img/apple-touch-icon.png">
<link rel="apple-touch-icon" sizes="72x72" href="../img/apple-touch-icon-72x72.png">
<link rel="apple-touch-icon" sizes="114x114" href="../img/apple-touch-icon-114x114.png">

<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->

<link rel="stylesheet" href="css/material-modal.css">
<script src="js/material-modal.js"></script>

<script type = "text/javascript">

function hideMessage() 
{
	document.getElementById("success").style.display="none";
	window.location.href="gallery_view.php"; 
}

function startTimer() 
{
	var tim = window.setTimeout("hideMessage()", 1000);  // 5000 milliseconds = 5 seconds
}

function hide_btn()
{
	document.getElementById("hide_div").style.display="none";
}

</script>

	</head>
    
	<body>
    
<?php
	
include('header.php');
	
include('connection.php');

$cat_id=$_GET['catId'];

$stmt1=$con->prepare("SELECT * FROM `category` WHERE `catId`=?");
$stmt1->bindValue(1,$cat_id);
$stmt1->execute();
$row1=$stmt1->fetch();


$alert_flag=0;

if(isset($_POST['save']))
{
	$flag=0;
	$category=$_POST['category'];
	
	if($row1['catName']!=$category)
	{
		$count=0;
		$stmt4=$con->prepare("SELECT COUNT(*) FROM `category` WHERE `catName`=?");
		$stmt4->bindValue(1,$category);
		$stmt4->execute();
		$row4=$stmt4->fetch();
		$count=$row4[0];
		if($count>0)
		{
			$alert_flag=4;
		}
		else
		{
			if($_FILES['image']['size']==0)
			{
		
				$stmt2=$con->prepare("UPDATE `category` SET `catName`=? WHERE `catId`=?");
				$stmt2->bindValue(1,$category);
				$stmt2->bindValue(2,$cat_id);
		
				$oldname="../images/media/".$row1['catName'];
				$newname="../images/media/".$_POST['category'];
		
				if($stmt2->execute())
				{
					rename($oldname,$newname);
					$flag=1;
				}
				else
				{
					$alert_flag=3;
				}
			}
			else
			{
				$image = rand(100,1000000)."-".$_FILES['image']['name'];

				$image_loc = $_FILES['image']['tmp_name'];

				$image_type = $_FILES['image']['type'];

				$image_name = $_FILES['image']['name'];

				$image_ext = pathinfo($image_name, PATHINFO_EXTENSION);

				$new_image_name = strtolower($image);

				$final_image=str_replace(' ','-',$new_image_name);	

				$image_folder="../images/category/";

				$image_allowed =  array('png','jpg','jpeg','PNG','JPG','JPEG');
	
				if(!in_array($image_ext,$image_allowed)) 
				{
					$alert_flag=1;
				}
				else
				{
					if(move_uploaded_file($image_loc,$image_folder.$final_image))
					{
						$stmt3=$con->prepare("UPDATE `category` SET `catName`=?,`catImg`=? WHERE `catId`=?");
						$stmt3->bindValue(1,$category);	
						$stmt3->bindValue(2,$final_image);	
						$stmt3->bindValue(3,$cat_id);
							
						$oldname="../images/media/".$row1['catName'];
						$newname="../images/media/".$_POST['category'];
		
						if($stmt3->execute())
						{
							//delete existing image
							$cat_img=$row1['catImg'];
							$dlt=("../images/category/".$cat_img);
							unlink($dlt);
							//end delete
							rename($oldname,$newname);
							$flag=1;
						}
						else
						{
							$alert_flag=3;
						}
					}
				}
			}

			if($flag==1)
			{
				$alert_flag=2;
			}
			else
			{
				$alert_flag=3;
			}
		}
	}
else
	{
		if($_FILES['image']['size']==0)
		{
		
			$stmt7=$con->prepare("UPDATE `category` SET `catImg`=? WHERE `catId`=?");
			$stmt7->bindValue(1,$catImg);	
			$stmt7->bindValue(2,$cat_id);	
	
			if($stmt7->execute())
			{
				$flag=1;
			}
			else
			{
				$alert_flag=3;
			}
		}
		else
		{
			$image = rand(100,1000000)."-".$_FILES['image']['name'];

			$image_loc = $_FILES['image']['tmp_name'];

			$image_type = $_FILES['image']['type'];

			$image_name = $_FILES['image']['name'];

			$image_ext = pathinfo($image_name, PATHINFO_EXTENSION);

			$new_image_name = strtolower($image);

			$final_image=str_replace(' ','-',$new_image_name);	

			$image_folder="../images/category/";

			$image_allowed =  array('png','jpg','jpeg','PNG','JPG','JPEG');
	
			if(!in_array($image_ext,$image_allowed)) 
			{
				$alert_flag=1;
			}
			else
			{
				if(move_uploaded_file($image_loc,$image_folder.$final_image))
				{
					$stmt8=$con->prepare("UPDATE `category` SET `catImg`=? WHERE `catId`=?");
					$stmt8->bindValue(1,$final_image);						
					$stmt8->bindValue(2,$cat_id);	
		
					if($stmt8->execute())
					{
						//delete existing image
						$cat_img=$row1['catImg'];
						$dlt=("../images/category/".$cat_img);
						unlink($dlt);
						//end delete
						$flag=1;
					}
				}
			}
		}

		if($flag==1)
		{
			$alert_flag=2;
		}
		else
		{
			$alert_flag=3;
		}
	}
}


?>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-l-50 p-r-50 p-t-20 p-b-30">
				<form class="login100-form validate-form" action="" onSubmit="javascript:hide_btn();" method="post" enctype="multipart/form-data">
					<span class="login100-form-title p-b-20">
						EDIT PRODUCT 
					</span>

					<div class="wrap-input100 m-b-16">
						<input class="input100" type="text" name="category" value="<?php echo $row1['catName']; ?>" placeholder="Gallery Category name" required >
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<span class="lnr lnr-pencil"></span>
						</span>
						</div>
						
			

                    <img class="edtimg" src="../images/category/<?php echo $row1['catImg']; ?>"/>
					<div class="wrap-input100 m-b-16">
						<input class="input101" type="file" name="image" accept="image/*" title="choose new image" >
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<span class="lnr lnr-picture"></span>
						</span>
					</div>

			
                    
					<div id="hide_div" class="container-login100-form-btn p-t-20">
						<button class="login100-form-btn" name="save">
							SAVE
						</button>
					</div>
                    
				</form>
			</div>
		</div>
	</div> 
  
<?php 
if($alert_flag==1)
{
	?>
    <div class="alert">
  	<span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
 	FAILED: choose jpg/jpeg/png format image only!
	</div>
 	<?php
}
else if($alert_flag==2)
{
	?>
    <div id="success" class="alert1">
  	<span class="closebtn" onclick="window.location.href='gallery_view.php?fk_cat_id=<?php echo $row1['fk_cat_id']; ?>';">&times;</span> 
 	Changes saved successfully!
	</div>
    <script>
	startTimer();
	</script>
 	<?php
}
else if($alert_flag==3)
{
	?>
    <div class="alert">
  	<span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
 	ERROR: Something went wrong. Please try again!
	</div>
 	<?php
}
else if($alert_flag==4)
{
	?>
    <div class="alert">
  	<span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span>  
 	ERROR: Event already exists!
	</div>
 	<?php
}
?> 

	
<!--===============================================================================================-->	
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>