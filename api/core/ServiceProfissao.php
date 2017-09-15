<?php

class ServiceProfissao
{

    private $db;
    private $profissao;

    public function __construct(IConn $db, IProfissao $profissao)
    {
        $this->db = $db->connect();
        $this->profissao = $profissao;
    }

    public function show()
    {
        $query = "SELECT * FROM `profissoes` WHERE status = '1'";
        $stmt = $this->db->prepare($query);
        $stmt->execute();
        return $stmt->fetchAll(\PDO::FETCH_ASSOC);
    }

    public function find($id)
    {
        $query = "SELECT * FROM `profissoes` WHERE `id`=:id LIMIT 1";
        $stmt = $this->db->prepare($query);
        $stmt->bindValue(":id", $id);
        $stmt->execute();
        return $stmt->fetchAll(\PDO::FETCH_ASSOC);
    }

}
