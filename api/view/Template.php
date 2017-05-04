<?php

class Template
{

    private $cadastro;
    private $voucher;

    public function __construct()
    {
        $this->cadastro = new Cadastro();
        $this->voucher = new Voucher();
    }

    public function getCadastro()
    {
        return $this->cadastro->template();
    }

    public function getVoucher()
    {
        return $this->voucher->template();
    }

}
