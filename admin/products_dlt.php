<?php

session_start();

if(!isset($_SESSION['username']))
{	
	header("Location: index.php");
}

include('connection.php');

$id=$_GET['id'];

$stmt=$con->prepare("DELETE FROM `service` WHERE `id`=?");	
$stmt->bindValue(1,$id);


if($stmt->execute())
{
	?>
	<script> 
		window.location.href="products_view.php?flag=1";
	</script>
    <?php
}
else
{
	?>
	<script> 
		window.location.href="products_view.php?flag=2";
	</script>
    <?php
}

?>