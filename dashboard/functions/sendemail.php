<?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\SMTP;
use PHPMailer\PHPMailer\Exception;

//Load Composer's autoloader
require 'vendor/autoload.php';
function sendMail($to,$body,$heading)
{//Import PHPMailer classes into the global namespace
//These must be at the top of your script, not inside a function


  //Create an instance; passing `true` enables exceptions
  $mail = new PHPMailer(true);

  try {
      //Server settings
      $mail->Host = 'f-apps.co.ke';
      $mail->Port = 465;
      $mail->isSMTP();
      $mail->SMTPSecure = 'ssl';
      $mail->SMTPAuth = true;
      $mail->CharSet = 'utf-8';
      $mail->Username = 'idonate@f-apps.co.ke';
      $mail->Password = '}gujh?Sk*^Hr';
      //Recipients
      $mail->setFrom('idonate@f-apps.co.ke', 'iDonate');
      $mail->addAddress($to);     //Add a recipient
      //$mail->addAddress('ellen@example.com');               //Name is optional
      //$mail->addReplyTo('info@example.com', 'Information');
      //$mail->addCC('cc@example.com');
      //$mail->addBCC('bcc@example.com');

      //Attachments
      //$mail->addAttachment('/var/tmp/file.tar.gz');         //Add attachments
      //$mail->addAttachment('/tmp/image.jpg', 'new.jpg');    //Optional name

      //Content
      $mail->isHTML(true);                                  //Set email format to HTML
      $mail->Subject = $heading;
      $mail->Body    = $body;
      //$mail->AltBody = 'This is the body in plain text for non-HTML mail clients';

      $mail->send();
      return 'sent';
  } catch (Exception $e) {
      return "Message could not be sent. Mailer Error: {$mail->ErrorInfo}";
  }

}
?>
