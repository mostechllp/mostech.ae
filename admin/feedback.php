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

<link rel="stylesheet" href="css/material-modal.css">
<script src="js/material-modal.js"></script>
    
	<link rel="stylesheet" type="text/css" href="css1/theme.css">
	<link rel="stylesheet" href="css/tablestyle.css" media="all">
	<!--[if !IE]><!-->
	<link rel="stylesheet" href="css/tablewrap.css" media="all">
	<!--<![endif]-->

	</head>
    
	<body>
    
    <?php

	include('header.php');
	
	?>
        
<div id="page-wrap">

<?php

include('connection.php');

?>
    
<table class="table">
<tr>
<td style="font-size:20px;"><center>FEEDBACKS</center></td>
</tr>
</table>

<table class="table">
<thead>
<tr>
<th>No.</th>
<th>Name</th>
<th>Mobile</th>
<th>Email</th>
<th>Message</th>
</tr>
</thead>

<?php

$stmt=$con->prepare("SELECT * FROM `feedbk` ORDER BY `id` DESC");

$stmt->execute();

$i=1;

while($row=$stmt->fetch())
{
	echo"<tr><td>";
	echo $i;
	$i++;
	echo "</td><td>";
	echo $row['name'];
	echo "</td><td>";
	echo $row['number'];
	echo "</td><td>";
	echo $row['email'];
	echo "</td><td>";
	echo $row['message'];
	
	
}
?>

</table>
</div>
       

</body>
</html>