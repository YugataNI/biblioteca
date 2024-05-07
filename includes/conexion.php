<?php
//iniciar la sesion
session_start();

//datos para realizar la conexion 
$servidor="localhost";
$usuario = "root";
$pass = "";
$BD= "blog_examen";

//crear conexión
$conn = mysqli_connect($servidor, $usuario, $pass, $BD);

//verificar la conexión
/*if(!$conn) {
    die("Conexión fallida: ". mysqli_connect_error());
} else {
    echo "Conexión exitosa!! <br>";
}*/

// mysqli_close($conn);
?>