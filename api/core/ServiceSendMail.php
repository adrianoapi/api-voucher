<?php

class ServiceSendMail
{

    private $mail;
    private $sndmail;

    public function __construct(ISendMail $mail, $sndmail)
    {
        $this->mail = $mail;
        $this->sndmail = $sndmail;
    }

    public function send()
    {

//        date_default_timezone_set('Etc/UTC');

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
        $this->sndmail->msgHTML("Cupom gerado com sucesso!<br/>" .
                "curso: <strong>" . $msg['curso'] . "</strong>" .
                "<p>&nbsp;</p>" .
                utf8_decode("endereço: ") . $msg['endereco']['cep'] . " - " . $msg['endereco']['endereco'] . " - " . $msg['endereco']['bairro'] . " - " . $msg['endereco']['cidade'] . "/" . $msg['endereco']['estado'] .
                "<br>telefone: " . $msg['endereco']['telefone'] .
                "<p>&nbsp;</p>" .
                "nome: <strong>" . utf8_decode($msg['nome']) . "</strong><br/>" .
                "e-mail: <strong>{$msg['email']}</strong><br/>" .
                "telefone: <strong>{$msg['telefone']}</strong><br/>" .
                "<p>&nbsp;</p>" .
                "voucher: <strong>{$msg['voucher']}</strong> - " .
                utf8_decode("válido até {$msg['validade']}<br/>")
        );

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
