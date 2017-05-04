<?php

class SendMail implements ISendMail
{

    private $mailTo;
    private $mailFrom;
    private $mailCc;
    private $mailBcc;
    private $mailSubject;
    private $mailMsg;

    public function getMailTo()
    {
        return $this->mailTo;
    }

    public function setMailTo($mailTo)
    {
        $this->mailTo = $mailTo;
        return $this;
    }

    public function getMailFrom()
    {
        return $this->mailFrom;
    }

    public function setMailFrom($mailFrom)
    {
        $this->mailFrom = $mailFrom;
        return $this;
    }

    public function getMailCc()
    {
        return $this->mailCc;
    }

    public function setMailCc($mailCc)
    {
        $this->mailCc = $mailCc;
        return $this;
    }

    public function getMailBcc()
    {
        return $this->mailBcc;
    }

    public function setMailBcc($mailBcc)
    {
        $this->mailBcc = $mailBcc;
        return $this;
    }

    public function getMailSubject()
    {
        return $this->mailSubject;
    }

    public function setMailSubject($mailSubject)
    {
        $this->mailSubject = $mailSubject;
        return $this;
    }

    public function getMailMsg()
    {
        return $this->mailMsg;
    }

    public function setMailMsg($mailMsg)
    {
        $this->mailMsg = $mailMsg;
        return $this;
    }

}
