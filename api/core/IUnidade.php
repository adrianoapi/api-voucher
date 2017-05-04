<?php

interface IUnidade
{
    public function getId();
    public function setId($id);
    public function getAlias();
    public function setAlias($alias);
    public function getNome();
    public function setNome($nome);
    public function getEmail();
    public function setEmail($email);
    public function getTelefone();
    public function setTelefone($telefone);
    public function getCep();
    public function setCep($cep);
    public function getEndereco();
    public function setEndereco($endereco);
    public function getBairro();
    public function setBaiiro($bairro);
    public function getCidade();
    public function setCidade($cidade);
    public function getEstado();
    public function setEstado($estado);
}
