<?php

class ServiceCurso
{

    private $db;
    private $curso;

    public function __construct(IConn $db, ICurso $curso)
    {
        $this->db = $db->connect();
        $this->curso = $curso;
    }

    public function show()
    {
        $query = "SELECT * FROM `cursos`";
        $stmt = $this->db->prepare($query);
        $stmt->execute();
        return $stmt->fetchAll(\PDO::FETCH_ASSOC);
    }

    public function find($id)
    {
        $query = "SELECT * FROM `cursos` WHERE `id`=:id";
        $stmt = $this->db->prepare($query);
        $stmt->bindValue(":id", $id);
        $stmt->execute();
        return $stmt->fetchAll(\PDO::FETCH_ASSOC);
    }

}
