<?php
require '/externalLibs/class.phpmailer.php';

$mail = new PHPMailer();
$mail->IsSMTP();                                      // Set mailer to use SMTP
$mail->Host = 'smtp.gmail.com';  // Specify main and backup server
$mail->SMTPAuth = true;                               // Enable SMTP authentication
$mail->Port = 587;
$mail->SMTPAuth = "ssl";
$mail->Username = 'flaviusdemian@gmail.com';                            // SMTP username
$mail->Password = 'slowarad';                           // SMTP password
$mail->SMTPSecure = 'tls';                            // Enable encryption, 'ssl' also accepted
$mail->WordWrap = 50;                                 // Set word wrap to 50 characters
$mail->IsHTML(true);                                  // Set email format to HTML
$mail->From = 'flaviusdemian@gmail.com';
$mail->FromName = 'Wilo Romania';
$mail->AltBody = 'This is the body in plain text for non-HTML mail clients';

function sendEmail($mailSender, $toEmail, $subject, $body, $fromName)
{
    $mailSender->ClearAddresses();
    $mailSender->AddAddress($toEmail);
    $mailSender->FromName = $fromName;
    $mailSender->Subject = $subject;
    $mailSender->Body = $body;
    
    if(!$mailSender->Send()) {
        echo 'Message could not be sent.';
        echo 'Mailer Error: ' . $mailSender->ErrorInfo;
        exit;
    }
    echo 'Message has been sent';
}

?>