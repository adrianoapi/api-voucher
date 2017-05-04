<?php

class Helper
{

    function voucherCodigo($id, $sigla)
    {
        $alfabeto = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
        $numerico = '1234567890';
        $minimo = 0;
        $maximo = strlen($alfabeto) - 1;
        $sequencia = null;

        for ($i = 2; $i > 0; --$i) {

            $posicao_sorteada = mt_rand($minimo, $maximo);
            $caractere_sorteado = $alfabeto[$posicao_sorteada];
            $sequencia .= $caractere_sorteado;
        }
        return $this->sanitizeWord($sigla, $sequencia, $id);
    }

    function sanitizeWord($sigla, $str, $id)
    {
        #ND = Não definido
        $arr = array("CU", "PU", "ND", "CUS", "CUU", "ECU", "FDS", "GAY", "KCT", "KUU", "KUS", "PUM", "PUU", "PIK", "PPK", "PQP", "PUT", "SCU", "VTC", "VPP", "VSF", "VTF", "TNC", "ZIK");
        if (in_array($str, $arr)) {
            $this->voucherCodigo($id);
        } else {
            return $sigla . "-" . $str . $this->menorDez($id);
        }
    }

    function menorDez($number)
    {
        if ($number < 10) {
            return "0" . $number;
        } else {
            return $number;
        }
    }

    function sanitizeString($str)
    {
        $str = preg_replace('/[ÁÀÃÂÄ]/ui', 'a', $str);
        $str = preg_replace('/[àãâä]/ui', 'a', $str);
        $str = preg_replace('/[ÉÈÊË]/ui', 'e', $str);
        $str = preg_replace('/[éèêë]/ui', 'e', $str);
        $str = preg_replace('/[ÍÌÎÏ]/ui', 'I', $str);
        $str = preg_replace('/[íìîï]/ui', 'i', $str);
        $str = preg_replace('/[ÓÒÕÔÖ]/ui', 'o', $str);
        $str = preg_replace('/[óòõôö]/ui', 'o', $str);
        $str = preg_replace('/[ÚÙÛÜ]/ui', 'u', $str);
        $str = preg_replace('/[úùûü]/ui', 'u', $str);
        $str = preg_replace('/[Ç]/ui', 'c', $str);
        $str = preg_replace('/[ç]/ui', 'c', $str);
        $str = preg_replace('/[^a-z0-9]/i', '-', $str);
        $str = preg_replace('/_+/', '-', $str);
        return strtolower($this->autoSanitizeString($str));
    }

    public function autoSanitizeString($string)
    {
        while (strpos($string, "--") !== false) {
            $string = str_replace('--', '-', $string);
        }
        return $string;
    }

    /**
     * Converte data br em sql
     * @param type $name $value
     */
    public function dataSql($value)
    {
        $data = explode('/', $value);
        return $data[2] . '-' . $data[1] . '-' . $data[0];
    }

    /**
     * Converte data sql em br
     * @param type $name $value
     */
    public function dataBr($value)
    {
        $data = explode('-', $value);
        return $data[2] . '/' . $data[1] . '/' . $data[0];
    }

}
