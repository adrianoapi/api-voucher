<?php

class Template
{

    private $cadastro;
    private $email;
    private $voucher;

    public function __construct()
    {
        $this->cadastro = new Cadastro();
        $this->email = new Email();
        $this->voucher = new Voucher();
    }

    public function getCadastro()
    {
        return $this->cadastro->template();
    }

    public function getEmail($data)
    {
        return $this->email->template($data);
    }

    public function getVoucher()
    {
        return $this->voucher->template();
    }

}
