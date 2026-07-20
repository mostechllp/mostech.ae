<?php
$to      = 'info@malabaronlinesolutions.com';
$subject = 'testt';
$mob = '7907057251';
$message = 'hello';
$headers = 'From: info@malabaronlinesolutions.com' . "\r\n" .
    'Reply-To: malabaronlinesolutions@gmail.com' . "\r\n" .
    'X-Mailer: PHP/' . phpversion();

mail($to, $subject, $message, $headers);
?> 