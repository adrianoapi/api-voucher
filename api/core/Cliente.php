<?php

class Cliente implements ICliente
{

    private $id;
    private $nome;
    private $email;
    private $telefone;
    private $codVoucher;
    private $unidadeId;
    private $divugadorId;
    private $cursoId;
    private $especializacaoId;
    private $profissaoId;
    private $periodo;
    private $date;
    private $vencimento;

    public function getId()
    {
        return $this->id;
    }

    public function setId($id)
    {
        $this->id = $id;
        return $this;
    }

    public function getNome()
    {
        return $this->nome;
    }

    public function setNome($nome)
    {
        $this->nome = $nome;
        return $this;
    }

    public function getEmail()
    {
        return $this->email;
    }

    public function setEmail($email)
    {
        $this->email = $email;
        return $this;
    }

    public function getTelefone()
    {
        return $this->telefone;
    }

    public function setTelefone($telefone)
    {
        $this->telefone = $telefone;
        return $this;
    }

    public function getCodVoucher()
    {
        return $this->codVoucher;
    }

    public function setCodVoucher($codVoucher)
    {
        $this->codVoucher = $codVoucher;
        return $this;
    }

    public function getUnidadeId()
    {
        return $this->unidadeId;
    }

    public function setUnidadeId($unidadeId)
    {
        $this->unidadeId = $unidadeId;
        return $this;
    }

    public function getDivulgadorId()
    {
        return $this->divugadorId;
    }

    public function setDivulgadorId($divugadorId)
    {
        $this->divugadorId = $divugadorId;
        return $this;
    }

    public function getCursoId()
    {
        return $this->cursoId;
    }

    public function setCursoId($cursoId)
    {
        $this->cursoId = $cursoId;
        return $this;
    }

    public function getEspecializacaoId()
    {
        return $this->especializacaoId;
    }

    public function setEspecializacaoId($especializacaoId)
    {
        $this->especializacaoId = $especializacaoId;
        return $this;
    }

    public function getProfissaoId()
    {
        return $this->profissaoId;
    }

    public function setProfissaoId($profissaoId)
    {
        $this->profissaoId = $profissaoId;
        return $this;
    }

    public function getPeriodo()
    {
        return $this->periodo;
    }

    public function setPeriodo($periodo)
    {
        $this->periodo = $periodo;
        return $this;
    }

    public function getDate()
    {
        return $this->date;
    }

    public function setDate($date)
    {
        $this->date = $date;
        return $this;
    }

    public function getVencimento()
    {
        return $this->vencimento;
    }

    public function setVencimento($vencimento)
    {
        $this->vencimento = $vencimento;
        return $this;
    }

}
