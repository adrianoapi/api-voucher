<?php

interface ICliente
{
    public function getId();
    public function setId($id);
    public function getNome();
    public function setNome($nome);
    public function getEmail();
    public function setEmail($email);
    public function getTelefone();
    public function setTelefone($telefone);
    public function getCodVoucher();
    public function setCodVoucher($codVoucher);
    public function getUnidadeId();
    public function setUnidadeId($unidadeId);
    public function getDivulgadorId();
    public function setDivulgadorId($divulgadorId);
    public function getCursoId();
    public function setCUrsoId($cursoId);
    public function getPeriodo();
    public function setPeriodo($periodo);
    public function getDate();
    public function setDate($date);
    public function getVencimento();
    public function setVencimento($vencimento);
}
