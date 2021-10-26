<?php

function cabecera()
{
    require_once 'app\views\assets\header.html';
}

function Nav()
{
    require_once 'app\views\assets\nav.phtml';
}

function piedepagina()
{
    require_once 'app\views\assets\footer.html';
}


class controller
{
    //Inicio
    public static function Inicio()
    {
        cabecera();
        Nav();
        require_once 'app\views\modules\inicio.phtml';
        piedepagina();
    }


    //Condicionales
    public static function Condicionales()
    {
        cabecera();

        //Evaluar de una divicion si el valor de 1 imprima resultado deficiente, regular, bueno o excelente
        $valor1 = 8;
        $valor2 = 2;
        $resultado = $valor1 / $valor2;

        switch ($resultado) {
            case 1:
                $mensajeswitch = 'Resultado Deficiente';
                break;
            case 2:
                $mensajeswitch = 'Resultado Regular';
                break;
            case 3:
                $mensajeswitch = 'Resultado Bueno';
                break;
            case 4:
                $mensajeswitch = 'Resultado excelente';
                break;
            default:
                $mensajeswitch = 'Fuera del parametro';
                break;
        }

        //Condicional de Valores
        $precio = 10000;
        $iva = 16;
        $venta = $precio + ($precio * $iva / 100);
        if ($venta >= 100000 && $venta <= 170000) {
            $mensaje = 'El precio Ideal';
        } elseif ($venta > 170000 && $iva > 0) {
            $mensaje = 'El precio Elevado';
        } elseif ($iva > 0) {
            $mensaje = 'El precio esta por debajo';
        } else {
            $mensaje = 'Debo validar que el iva sea mayor que cero';
        }

        //Condicional de Entrada Mostrada en la vista
        $entrada = false;
        Nav();
        require_once 'app\views\modules\condicionales.phtml';
        piedepagina();
    }

    //arrays
    public static function Arrays()
    {
        $Usuarios[] = array(
            "Nombre"   => "Cristian",
            "Apellido" => "Aguirre",
            "Correo"   => "Dextter1913@gmail.com"
        );
        $Usuarios[] = array(
            "Nombre"   => "Camilo",
            "Apellido" => "Monsalve",
            "Correo"   => "mijita6790@gmail.com"
        );
        $Usuarios[] = array(
            "Nombre"   => "Laura",
            "Apellido" => "Escobar",
            "Correo"   => "omg233@gmail.com"
        );
        $Usuarios[] = array(
            "Nombre"   => "Maria",
            "Apellido" => "Solorzano",
            "Correo"   => "Mary1999@gmail.com"
        );
        $Usuarios[] = array(
            "Nombre"   => "Estefania",
            "Apellido" => "Arrieta",
            "Correo"   => "stefa4567@gmail.com"
        );
        $Usuarios[] = array(
            "Nombre"   => "Carolina",
            "Apellido" => "Escudero",
            "Correo"   => "Caro1254@gmail.com"
        );
        cabecera();
        Nav();


        require_once 'app\views\modules\TablaArray.phtml';
        //var_dump($Usuarios);
        piedepagina();
    }

    //Encriptacion
    public static function Encriptacion(){
        $clave = '12345';
        cabecera();
        Nav();



        require_once 'app\views\modules\MetodosEncripcion.phtml';


        piedepagina();
    }
}
