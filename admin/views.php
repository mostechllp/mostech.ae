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

function hideMessage() 
{
	document.getElementById("success").style.display="none";
	window.location.href="po_view.php"; 
}

function startTimer() 
{
	var tim = window.setTimeout("hideMessage()", 1000);  // 5000 milliseconds = 5 seconds
}

function hide_btn()
{
	document.getElementById("hide_div").style.display="none";
}

function getviews() 
{
	var from=document.getElementById("from").value;
	var to=document.getElementById("to").value;
	if(from=="")
	{
		document.getElementById("total").value=("Please choose \'from\' date!");
	}
	else if(to=="")
	{
		document.getElementById("total").value=("Please choose \'to\' date!");
	}
	else if(from>to)
	{
		document.getElementById("total").value=("Invalid dates!");
		return false;
	}
	else
	{
	var hr=new XMLHttpRequest();
	var url="load_views.php";
	var vars="from="+from+"&to="+to;
	hr.open("POST",url,true);
	hr.setRequestHeader("Content-type","application/x-www-form-urlencoded");
	hr.onreadystatechange=function()
	{
		if(hr.readyState==4&&hr.status==200)
		{
			var total=hr.responseText;
			if(total==0)
			{
				document.getElementById("total").value=("No views found!");
			}
			else
			{
				document.getElementById("total").value=(total);
			}
		}
	}
	hr.send(vars);
	}
}


function todate()
{
	var to=document.getElementById("from").value;
	document.getElementById("to").value=to;
}
</script>

	</head>
    
	<body>
    
<?php
	
include('header.php');
	
include('connection.php');

$stmt=$con->prepare("SELECT SUM(`views`) FROM `viewcount`");	
$stmt->execute();
$row=$stmt->fetch();
$total=$row['0'];

date_default_timezone_set("Asia/Kolkata");
$cur_dt=date("Y-m-d");


$stmt1=$con->prepare("SELECT `views` FROM `viewcount` WHERE `date`=?");	
$stmt1->bindValue(1,$cur_dt);
$stmt1->execute();
$row1=$stmt1->fetch();
$today=$row1['0'];

if($today=="")
{
	$today="No views today!";	
}


?>
	
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100 p-l-50 p-r-50 p-t-20 p-b-30">
				<div class="login100-form validate-form">
					<span class="login100-form-title p-b-20">
						WEBSITE VIEWS
					</span>

					<div class="wrap-input100 m-b-16">
						<input class="input100" type="text" value="<?php echo $today; ?>" readonly >
						<span class="focus-input100"></span>
						<span class="label-input100">
							Today:
						</span>
					</div>

					<div class="wrap-input100 m-b-16">
						<input class="input100" type="number" value="<?php echo $total; ?>" readonly >
						<span class="focus-input100"></span>
						<span class="label-input100">
							Total:
						</span>
					</div>

					<div class="wrap-input100 m-b-16">
						<input class="input100" type="date" id="from" name="from" onChange="javascript:todate();" required >
						<span class="focus-input100"></span>
						<span class="label-input100">
							From:
						</span>
					</div>

					<div class="wrap-input100 m-b-16">
						<input class="input100" type="date" id="to" name="to" required >
						<span class="focus-input100"></span>
						<span class="label-input100">
							To:
						</span>
					</div>
                    
					<div id="hide_div" class="container-login100-form-btn m-b-16">
						<button class="login100-form-btn" onClick="javascript:return getviews();" name="save">
							GET VIEWS
						</button>
					</div>

					<div class="wrap-input100 m-b-16">
						<input class="input100" type="text" id="total"  placeholder="choose dates" readonly >
						<span class="focus-input100"></span>
						<span class="label-input100">
							Views:
						</span>
					</div>
                    
				</div>
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