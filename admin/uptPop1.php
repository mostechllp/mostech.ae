<?php

include('connection.php');
$idd=$_GET['idd'];

$stmt=$con->prepare("UPDATE `gallery` SET `ishom`=? WHERE `id`=?");
$stmt->bindValue(1,'0');
$stmt->bindValue(2,$idd);
$res=$stmt->execute();
?>
          <script>
        window.location.href="viewgallery.php"; 
      </script>
          <?php
?>