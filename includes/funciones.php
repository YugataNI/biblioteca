<?php

/* LIBRERIA DE FUNCIONES */ 

function mostrarError($errores, $campo){
    $alerta = '';
     if( isset($errores[$campo]) && !empty($campo) ){
         $alerta = "<div class='alerta alerta-error'>". $errores[$campo]. "</div>";
     }

     return $alerta;
}

function borrarErrores(){
    $borrado = false;

    if( isset($_SESSION['errores']) ) {
        $_SESSION['errores'] = null;
        $borrado = true;
    }

    if( isset($_SESSION['errores_entrada']) ) {
        $_SESSION['errores_entrada'] = null;
        $borrado = true;
    }

    if( isset($_SESSION['completado']) ) {
        $_SESSION['completado'] = null;
        $borrado = true;
    }

    return $borrado;
}

?>