<?php

include('connection.php');
$idd=$_GET['idd'];

$stmt=$con->prepare("UPDATE `blog` SET `isPopular`=? WHERE `id`=?");
$stmt->bindValue(1,'0');
$stmt->bindValue(2,$idd);
$res=$stmt->execute();
?>
          <script>
        window.location.href="viewBlog.php"; 
      </script>
          <?php
?>