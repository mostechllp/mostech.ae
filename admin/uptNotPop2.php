<?php

include('connection.php');
$idd=$_GET['idd'];

$stmt=$con->prepare("UPDATE `careers` SET `status`=? WHERE `id`=?");
$stmt->bindValue(1,'1');
$stmt->bindValue(2,$idd);
$res=$stmt->execute();
?>
          <script>
        window.location.href="Viewcareers.php"; 
      </script>
          <?php
?>