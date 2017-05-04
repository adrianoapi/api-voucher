<?php

interface ISendMail
{
    public function getMailTo();
    public function setMailTo($mailTo);
    public function getMailFrom();
    public function setMailFrom($mailFrom);
    public function getMailCc();
    public function setMailCc($mailCc);
    public function getMailBcc();
    public function setMailBcc($mailBcc);
    public function getMailSubject();
    public function setMailSubject($mailSubject);
    public function getMailMsg();
    public function setMailMsg($mailMsg);
}
