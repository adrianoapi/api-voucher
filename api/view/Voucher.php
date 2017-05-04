<?php

class Voucher
{

    public function template()
    {


        return $string = ' 
        <!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>TODO canvas</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <canvas id="canvas" width="350" height="100"></canvas><br>

        <script>

            var canvas = document.getElementById("canvas");
            var ctx = canvas.getContext("2d");
            
            // Background
            ctx.beginPath();
            ctx.rect(0, 0, 350, 100);
            ctx.fillStyle = "red";
            ctx.fill();
            
            // Background
            ctx.beginPath();
            ctx.rect(2, 2, 346, 96);
            ctx.fillStyle = "#ffffe1";
            ctx.fill();
            
            // Texto nome
            ctx.fillStyle = "black";
            ctx.font = "20px Georgia";
            ctx.fillText("%NOME%", 10, 23);
            
            // Texto curso
            ctx.fillStyle = "black";
            ctx.font = "16px Verdana";
            ctx.fillText("%CURSO%", 10, 45);

            // Código
            ctx.fillStyle = "red";
            ctx.font = "24px Verdana";
            ctx.fillText("%CODIGO-VOUCHER%", 10, 75);
            
            // Validade
            ctx.fillStyle = "black";
            ctx.font = "14px Verdana";
            ctx.fillText("Válido até %DATE%", 10, 95);

        </script>
    </body>
</html>';
    }

}
