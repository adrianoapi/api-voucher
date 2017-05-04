<?php

class ServiceDivulgador
{

    private $db;
    private $divulgador;

    public function __construct(IConn $db, IDivulgador $divulgador)
    {
        $this->db = $db->connect();
        $this->divulgador = $divulgador;
    }

    public function select()
    {
        $query = "SELECT * FROM `divulgadores` WHERE `id`=:id LIMIT 1";
        $stmt = $this->db->prepare($query);
        $stmt->bindValue(":id", $this->divulgador->getId());
        $stmt->execute();
        return $stmt->fetchAll(\PDO::FETCH_ASSOC);
    }

}
