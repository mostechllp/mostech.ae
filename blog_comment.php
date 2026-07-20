<?php
session_start();
include('admin/connection.php');


	if(!isset($_SESSION['userId']))
	{
		?>
          <script>
        window.location.href="user.php"; 
      </script>
          <?php
	}
	
$uid=$_SESSION['userId'];
$idd=$_POST['idd'];
	$comment=$_POST['comment'];


	$stmt=$con->prepare("INSERT INTO `comment`(`fkBlogId`, `fkUserId`, `comment`) VALUES (?,?,?)");
	$stmt->bindValue(1,$idd);
	$stmt->bindValue(2,$uid);
	$stmt->bindValue(3,$comment);
	$res=$stmt->execute();
	if($res)
	{
		?>
		<script>
        alert("Successfully Added !");
        
      </script>
        <?php
        
header('Location: ' . $_SERVER['HTTP_REFERER']);
	}
	else
		{
			?>
			<script>alert("Adding Failed !");</script>
			<?php
		
header('Location: ' . $_SERVER['HTTP_REFERER']);
	
		}
	
		?>