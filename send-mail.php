<?php
if (isset($_POST['email'])) {

    $name    = trim($_POST["name"]);
    $email   = trim($_POST["email"]);
    $subject = trim($_POST["subject"]);
    $message = trim($_POST["message"]);

    $to = "info@mostech.in"; 
    $email_subject = "Contact Form: " . $subject;

    $email_body = "Name: $name\n";
    $email_body .= "Email: $email\n\n";
    $email_body .= "Message:\n$message\n";

    $headers  = "From: Website Contact <no-reply@mostech.in>\r\n";
    $headers .= "Reply-To: $email\r\n";
    $headers .= "Content-Type: text/plain; charset=UTF-8\r\n";

    if (mail($to, $email_subject, $email_body, $headers)) {
        header("Location: contact.php?status=success");
        exit();
    } else {
        header("Location: contact.php?status=error");
        exit();
    }
}
?>
