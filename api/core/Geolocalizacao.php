<?php

class Geolocalizacao
{

    private $key = "AIzaSyDH-enwqlfRfq1Eb4pmuzAcr4ug3S-GxHw";
    private $endereco;
    private $estrutura;

    public function setEndereco($endereco)
    {
        $this->endereco = str_replace(" ", "+", $endereco);
    }

    public function setLocalizacao()
    {
        $this->estrutura = simplexml_load_file("https://maps.googleapis.com/maps/api/geocode/xml?address={$this->endereco}&key={$this->key}");
    }

    public function getLatitude()
    {
        return $this->estrutura->result->geometry->location->lat;
    }
    public function getLongitude()
    {
        return $this->estrutura->result->geometry->location->lng;
    }

}
