<?php

class Email
{

    public function template($msg)
    {


        return $string = "
        <!doctype html>
<html>
<head>
<meta charset='utf-8'>
<title>Evolutime | Vale Curso</title>
</head>

<body style='font-family: arial;font-size: 13px;text-align:justify;background-image: url(http://evolutime.com.br/wp-content/themes/evolutimesp/images/banner/bg2.jpg);padding:50px'>

<table cellspacing='0' cellpadding='0' border='0' width='500' align='center' style='text-align:center; background:white; border:1px solid #ccc'>
  <tr>
      <td align='center' border='0' width='500' height='120' style='background-color:#CDCDCD;'>
      <img src='http://evolutime.com.br/wp-content/themes/evolutimesp/images/banner/logo.jpg' width='100%' border='0'/>
    </td>
    </tr>
    <tr>
  
    <td align='center' width='500'  cellpadding='5' style='text-align:center;background: white;' >
    <div style='font-family: arial;font-size: 13px;line-height: 18px;background: white;width:500px;text-align:left;padding:20px;margin:20px;'>
        <h2>Parab&#233;ns! " . utf8_decode($msg['nome']) . "</h2>
        <p>Voc&#234; acaba de receber o vale curso da Evolutime. Informe o c&#243;digo abaixo no ato da matr&#237;cula para ter o curso gratuitamente.</p>
    <div style='border: 1px solid #ccc;padding: 20px;'>
        <h2>Vale Curso Gr&#225;tis</h2>
        <p><strong>Curso:</strong> " . $msg['curso'] . "</p>
        <p><strong>" . utf8_decode("Especialização") . ":</strong> " . $msg['especializacao'] . "</p>
        <p><strong>" . utf8_decode("Profissão") . ":</strong> " . $msg['profissao'] . "</p>
        <p><strong>Nome: </strong>" . utf8_decode($msg['nome']) . "</p>
        <p><strong>E-mail:</strong> {$msg['email']}</p>
        <p><strong>Telefone:</strong> {$msg['telefone']}</p>
        <p><strong>C&#243;digo do Vale Curso:</strong> {$msg['voucher']}</p>
        <p><strong>V&#225;lido at&#233;:</strong> " . utf8_decode($msg['validade']) . "<br/> </p>
        <p><strong>Endere&#231;o da Unidade:</strong> " . $msg['endereco']['endereco'] . " - " . $msg['endereco']['bairro'] . " - " . $msg['endereco']['cidade'] . "/" . $msg['endereco']['estado'] . "</p>
     </div>
     </div> 
    </td>
  </tr>
</table>

</body>
                                        
</html>";
    }

}
