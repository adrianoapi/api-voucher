<?php

//SMTP needs accurate times, and the PHP time zone MUST be set
//This should be done in your php.ini, but this is how to do it if you don't have access to that
date_default_timezone_set('Etc/UTC');

require 'send.php';
$mail->addAddress("sdcomputadores@gmail.com", "Evolutime");
$mail->Subject = utf8_decode("Teste de envio");
// Corpo
$mail->msgHTML(utf8_decode("" .
                "Primeiro teste"));

if (!$mail->send()) {
    echo $mail->ErrorInfo;
} else {
    echo "OK";
}