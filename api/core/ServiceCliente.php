<?php

class ServiceCliente
{

    private $db;
    private $cliente;

    public function __construct(IConn $db, ICliente $cliente)
    {
        $this->db = $db->connect();
        $this->cliente = $cliente;
    }

    public function show()
    {
        $query = "select * from `clientes`";
        $stmt = $this->db->prepare($query);
        $stmt->execute();
        return $stmt->fetchall(\PDO::FETCH_ASSOC);
    }

    public function find(int $id)
    {
        $query = "select * from `clientes` where `id`=:id";
        $stmt = $this->db->prepare($query);
        $stmt->bindValue(":id", $id);
        $stmt->execute();
        return $stmt->fetchAll(\PDO::FETCH_ASSOC);
    }

    public function findEmail($email)
    {
        $query = "SELECT * FROM `clientes` WHERE `email`=:email";
        $stmt = $this->db->prepare($query);
        $stmt->bindValue(":email", $email);
        $stmt->execute();
        return $stmt->fetchAll(\PDO::FETCH_ASSOC);
    }

    public function save()
    {
        $query = "insert into `clientes` (`nome`,`email`,`telefone`,`unidade_id`,`divulgador_id`,`curso_id`,`periodo`,`date`,`vencimento`) values (:nome,:email,:telefone,:unidade_id,:divulgador_id,:curso_id,:periodo,:date,:vencimento)";
        $stmt = $this->db->prepare($query);
        $stmt->bindValue(":nome", $this->cliente->getNome());
        $stmt->bindValue(":email", $this->cliente->getEmail());
        $stmt->bindValue(":telefone", $this->cliente->getTelefone());
        $stmt->bindValue(":unidade_id", $this->cliente->getUnidadeId());
        $stmt->bindValue(":divulgador_id", $this->cliente->getDivulgadorId());
        $stmt->bindValue(":curso_id", $this->cliente->getCursoId());
        $stmt->bindValue(":periodo", $this->cliente->getPeriodo());
        $stmt->bindValue(":date", $this->cliente->getDate());
        $stmt->bindValue(":vencimento", $this->cliente->getVencimento());
        $stmt->execute();
        return $this->db->lastInsertId();
    }

    public function update()
    {
        $query = "update `clientes` set `cod_voucher`=:cod_voucher where `id`=:id";
        $stmt = $this->db->prepare($query);
        $stmt->bindValue(":id", $this->cliente->getId());
        $stmt->bindValue(":cod_voucher", $this->cliente->getCodVoucher());
        return $stmt->execute();
    }

    public function delete(int $id)
    {
        $query = "delete from `clientes` where `id`=:id";
        $stmt = $this->db->prepare($query);
        $stmt->bindValue(":id", $id);
        return $stmt->execute();
    }

}
