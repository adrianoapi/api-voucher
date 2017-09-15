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

    public function show($tipo = null)
    {
        if ($tipo) {
            $query = "SELECT * FROM `cursos` WHERE tipo = '{$tipo}' AND status = '1'";
        } else {
            $query = "SELECT * FROM `cursos` WHERE status = '1'";
        }
        $stmt = $this->db->prepare($query);
        $stmt->execute();
        return $stmt->fetchAll(\PDO::FETCH_ASSOC);
    }

    public function find($id)
    {
        $query = "SELECT * FROM `cursos` WHERE `id`=:id LIMIT 1";
        $stmt = $this->db->prepare($query);
        $stmt->bindValue(":id", $id);
        $stmt->execute();
        return $stmt->fetchAll(\PDO::FETCH_ASSOC);
    }

}
