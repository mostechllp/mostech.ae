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
    
<script>

function deleteConfirm(id)
{
	var res=confirm("Are you sure to delete this?");
	if(res==1)
	{
		window.location.href=("cat_dlt.php?id="+id);
	}
}

function hideMessage() {
document.getElementById("success").style.display="none"; 
}

function startTimer() {
var tim = window.setTimeout("hideMessage()", 2000);  // 5000 milliseconds = 5 seconds
}

</script>

	</head>
    
	<body>
    
    <?php
	$flag=0;

	include('header.php');
	
	if(isset($_GET['flag']))
	{
		$flag=$_GET['flag'];
	}

	if($flag==1)
	{
		?>
   		<div id="success" class="alert1">
  		<span class="closebtn" onclick="this.parentElement.style.display='none';">&times;</span> 
 		Deleted successfully!
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
	
	?>
        
<div id="page-wrap">
    
<table class="table">
<thead>
<tr>
<th>No.</th>
<th>Category</th>
<th>Action</th>
</tr>
</thead>

<?php

include('connection.php');

$stmt=$con->query("SELECT * FROM `cat` ORDER BY `id` DESC");

$i=1;

while($row=$stmt->fetch())
{
	echo"<tr><td>";
	echo $i;
	$i++;
	echo "</td><td>";
	echo $row['cat'];
	echo "</td><td>";
	?>
	
  <img src="icons/delete.png" onClick="javascript:deleteConfirm(<?php echo $row['id'];?>)" title="DELETE" width="30" alt="DELETE">
    <?php
	
	echo "</td></tr>";
}
?>

</table>
</div>
       

</body>
</html>