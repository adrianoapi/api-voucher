<?php

class ServiceSendMail
{

    private $mail;
    private $sndmail;
    private $template;

    public function __construct(ISendMail $mail, $sndmail, $template)
    {
        $this->mail = $mail;
        $this->sndmail = $sndmail;
        $this->template = $template;
    }

    public function send()
    {
        $msg = $this->mail->getMailMsg();
        $this->sndmail->setFrom($this->mail->getMailFrom(), utf8_decode('Contato Evolutime'));
        $this->sndmail->addAddress($this->mail->getMailTo(), 'Contato Evolutime');
        if (isset($msg['divulgador_email'])) {
            $this->sndmail->addBcc($msg['divulgador_email']);
        } else {
            $this->sndmail->addBcc($this->mail->getMailBcc());
        }
        $this->sndmail->addCc($this->mail->getMailCc(), $msg['nome']);
        $this->sndmail->Subject = utf8_decode($this->mail->getMailSubject());
        $this->sndmail->msgHTML($this->template->getEmail($msg));
        if (!$this->sndmail->send()) {
            echo $this->sndmail->ErrorInfo . "<br/>";
        } else {
            echo "e-mail enviado com sucesso!<br/>";
        }
    }

    public function teste()
    {
        echo $this->mail->getMailTo() . "<br/>";
        echo $this->mail->getMailFrom() . "<br/>";
        echo "<pre>";
        print_r($this->mail->getMailMsg());
        echo "</pre>";
    }

}
