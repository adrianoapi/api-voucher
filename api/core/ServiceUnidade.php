<?php

class ServiceUnidade
{

    private $db;
    private $unidade;

    public function __construct(IConn $db, IUnidade $unidade)
    {
        $this->db = $db->connect();
        $this->unidade = $unidade;
    }

    public function show()
    {
        $query = "SELECT * FROM `unidades`";
        $stmt = $this->db->prepare($query);
        $stmt->execute();
        return $stmt->fetchall(\PDO::FETCH_ASSOC);
    }

    public function findByAlias()
    {
        $query = "SELECT * FROM `unidades` WHERE `alias`=:alias LIMIT 1";
        $stmt = $this->db->prepare($query);
        $stmt->bindValue(":alias", $this->unidade->getAlias());
        $stmt->execute();
        return $stmt->fetchAll(\PDO::FETCH_ASSOC);
    }

}
