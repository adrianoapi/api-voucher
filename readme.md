# App de Voucher

Esse aplicativo foi desenvolvido para ser utilizado como uma única requisição de página, para ser executado em CMS, tais como WordPress, Joomla, etc...

## Arquivo index.php
É aqui que toda ação principal do App ocorre, pois é através dela que são feitas as requisições de classes e métodos que irão gerar conteúdo de interação para o usuário.

## Implementação
>Na index.php, altere de `$mail->setMailTo("xpto@gmail.com")` para `$mail->setMailTo($inputUnidade[0]['email'])`

>No arquivo library/PHPMailer-master/send.php, altere a senha no atributo `$sndmail->Password` para autenticação no serivdor de e-mail;