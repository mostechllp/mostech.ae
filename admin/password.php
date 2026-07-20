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
</head>
<body>

<?php

include('header.php');

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
		$flag=1;
	}
	else
	{
		$stmt=$con->prepare("SELECT `id` FROM `log` WHERE `username`=? AND `password`=?");
		$stmt->bindValue(1,$username);
		$stmt->bindValue(2,$old);
		$stmt->execute();
		$row_count=$stmt->rowCount();
		if($row_count<=0)
		{
			$flag=2;
		}
		else
		{
			$stmt1=$con->prepare("UPDATE `log` SET `password`=? WHERE `username`=?");
			$stmt1->bindValue(1,md5($confirm));
			$stmt1->bindValue(2,$username);
			if($stmt1->execute())
			{
				$flag=3;
			}
		}
	}
}

?>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-l-50 p-r-50 p-t-41 p-b-30">
				<form class="login100-form validate-form" method="post" action="">
					<span class="login100-form-title p-b-41">
						Reset Password
					</span>

					<div class="wrap-input100 validate-input m-b-16" data-validate = "Required">
						<input class="input100" type="password" name="old" placeholder="Current Password">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<span class="lnr lnr-lock"></span>
						</span>
					</div>

					<div class="wrap-input100 validate-input m-b-16" data-validate = "Required">
						<input class="input100" type="password" name="new" placeholder="New Password">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<span class="lnr lnr-lock"></span>
						</span>
					</div>

					<div class="wrap-input100 validate-input m-b-16" data-validate = "Required">
						<input class="input100" type="password" name="confirm" placeholder="Confirm Password">
						<span class="focus-input100"></span>
						<span class="symbol-input100">
							<span class="lnr lnr-lock"></span>
						</span>
					</div>
					
					<div class="container-login100-form-btn p-t-25">
						<button class="login100-form-btn" name="reset">
							Reset
						</button>
					</div>
                    
				</form>
    			<?php
                if($flag==1)
				{
				?>
        			<div align="center" style="color:#F00; font-size:14px; margin-top:20px;">*new and confirm passwords mismatch!</div>
        		<?php
				}
				else if($flag==2)
				{
				?>
        			<div align="center" style="color:#F00; font-size:14px; margin-top:20px;">*wrong current password!</div>
        		<?php
				}
				else if($flag==3)
				{
				?>
        			<div align="center" style="color:#0C6; font-size:14px; margin-top:20px;">Password changed successfully!</div>
        		<?php
				}
				?>
			</div>
		</div>
	</div>
	
	

	
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