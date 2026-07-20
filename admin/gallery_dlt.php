<?php

session_start();

if(!isset($_SESSION['username']))
{	
	header("Location: index.php");
}

include('connection.php');

$cat_id=$_GET['catId'];

$stmt1=$con->prepare("SELECT `catName`,`catImg` FROM `category` WHERE `catId`=?");
$stmt1->bindValue(1,$cat_id);
$stmt1->execute();
$row1=$stmt1->fetch();
$catfolder=$row1['catName'];
$dltdir=("../images/media/".$catfolder);

$stmt=$con->prepare("DELETE FROM `category` WHERE `catId`=?");	
$stmt->bindValue(1,$cat_id);

$stmt2=$con->prepare("DELETE FROM `media` WHERE `fkCatId`=?");	
$stmt2->bindValue(1,$cat_id);

if($stmt->execute())
{
	$stmt2->execute();
	
	//delete existing image
	$cat_img=$row1['catImg'];
	$dlt=("../images/category/".$cat_img);
	unlink($dlt);
	//end delete
	
	if (is_dir($dltdir)) 
	{
 		$dir = new RecursiveDirectoryIterator($dltdir, RecursiveDirectoryIterator::SKIP_DOTS);
 	   	foreach (new RecursiveIteratorIterator($dir, RecursiveIteratorIterator::CHILD_FIRST ) as $filename => $file) 
		{
			if (is_file($filename))
  	     		unlink($filename);
   	    	else
    	    	rmdir($filename);
   	 	}
	}
	rmdir($dltdir);
	?>
	<script> 
		window.location.href="gallery_view.php?flag=1";
	</script>
    <?php
}
else
{
	?>
	<script> 
		window.location.href="gallery_view.php?flag=2";
	</script>
    <?php
}

?>