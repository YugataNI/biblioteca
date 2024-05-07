<?php
//iniciar la sesion
session_start();

//datos para realizar la conexion 
$servidor="localhost";
$usuario = "root";
$pass = "";
$BD= "biblioteca";

//crear conexiÃ³n
$conn = mysqli_connect($servidor, $usuario, $pass, $BD);

//verificar la conexiÃ³n
/*if(!$conn) {
    die("ConexiÃ³n fallida: ". mysqli_connect_error());
} else {
    echo "ConexiÃ³n exitosa!! <br>";
}*/

// mysqli_close($conn);
?>
