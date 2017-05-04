<?php

class Cadastro
{

    public function template()
    {

        return $strign = '
<!DOCTYPE html>
<html>
    <head>
        <title>Exemplo de cadastro</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h1>Formulário de cadastro</h1>
        <form method="post" action="index.php?unidade=%UNIDADE-ALIAS%&action=cadastrar">
            <input type="hidden" name="action" value="cadastrar">
            <fieldset>
                <legend>Cadastro:</legend>
                %ERROR-MSG%
                <input type="hidden" name="unidade" value="%UNIDADE-ID%">
                <input type="hidden" name="divulgador" value="%DIVULGADOR-ID%">
                <p><label class="field" for="nome">nome:</label> <input type="text" name="nome" value="%NOME%" class="text-250"></p>
                <p><label class="field" for="email">e-mail:</label> <input type="text" name="email" value="%EMAIL%" class="text-250"></p>
                <p><label class="field" for="telefone">telefone:</label> <input type="text" name="telefone" value="%TELEFONE%" class="text-250"></p>
                <p><label class="field" for="curso">curso:</label>
                    <select name="curso">
                        %CURSO-SELECT%
                    </select>
                </p>
                <p>
                    <label class="field" for="periodo">Período:</label>
                    <label class="sexo"><input type="radio" name="periodo" value="M"%CHECKED-M%>Manhã</label>
                    <label class="sexo"><input type="radio" name="periodo" value="T"%CHECKED-T%>Tarde</label>
                    <label class="sexo"><input type="radio" name="periodo" value="N"%CHECKED-N%>Noite</label>
                </p>
                <p><input type="submit" value="Salvar"></p>
            </fieldset>
        </form>
    </body>
</html>';
    }

}
