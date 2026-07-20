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
	<title>BROADWAY</title>
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

function disableOption()
{
	document.getElementById("option1").disabled="true";
}

function hideMessage() {
document.getElementById("success").style.display="none"; 
}

function startTimer() {
var tim = window.setTimeout("hideMessage()", 3000);  // 5000 milliseconds = 5 seconds
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
	
$flag=0;

if(isset($_POST['add']))
{
	$cat=$_POST['cat'];


		$stmt=$con->prepare("INSERT INTO `cat`(`cat`) VALUES (?)");
		$stmt->bindValue(1,$cat);	

		if($stmt->execute())
		{
			$flag=1;
		}
		else
		{
			$flag=2;
		}
	}

	
?>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-l-50 p-r-50 p-t-20 p-b-30">
				<form class="login100-form validate-form" action="" onSubmit="javascript:hide_btn();" method="post" enctype="multipart/form-data">
					<span class="login100-form-title p-b-20">
						ADD CATEGORY
					</span>
            

					<div class="wrap-input100 m-b-16">
						<input class="input100" type="text" name="cat" placeholder="CATEGORY" required >
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<span class="lnr lnr-pencil"></span>
						</span>
					</div>
                    
					<div id="hide_div" class="container-login100-form-btn p-t-20">
						<button class="login100-form-btn" name="add">
							ADD
						</button>
					</div>
                    
				</form>
			</div>
		</div>
	</div> 
  
<?php  
if($flag==1)
{
	?>
    <div id="success" class="alert1">
  	<span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
 	CATEGORY added successfully!
	</div>
    <script>
	startTimer();
	</script>
 	<?php
}
else if($flag==2)
{
	?>
    <div class="alert">
  	<span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
 	ERROR: Something went wrong. Please try again!
	</div>
 	<?php
}
else if($flag==3)
{
	?>
    <div class="alert">
  	<span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
 	FAILED: You didn't choose category. Please try again!
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