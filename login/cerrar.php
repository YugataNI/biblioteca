<?php
// cerraremos la sesion
session_start();

if ( isset($_SESSION['usuario'])) {

    unset( $_SESSION['$usuario']);

    session_destroy();
}

//redirigir al index.php
header("Location: index.php");

?>