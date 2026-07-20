<?php

include('connection.php');
$idd=$_GET['idd'];

$stmt=$con->prepare("DELETE FROM `comment` WHERE `id`=?");
$stmt->bindValue(1,$idd);
$res=$stmt->execute();

header('Location: ' . $_SERVER['HTTP_REFERER']);
?>