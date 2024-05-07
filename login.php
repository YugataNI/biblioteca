<?php
//iniciar la sesión y la conexión a la BD
//el fichero de conexion.php ya tiene la sesión iniciada
require_once 'includes/conexion.php';

if ( isset($_POST) ){

    //elimino resto que pueda haber de otro intento de login
    if( isset($_SESSION['error_login']) ){
        unset( $_SESSION['error_login'] );
    }

    //recoger los datos del formulario
    $email = trim( $_POST['email']); 

    $pass = trim( $_POST['password']); 

    //consulta para comprobar las credenciales del usuario
    $sql = "SELECT * FROM usuarios WHERE email = '$email'";

    $login = mysqli_query($conn, $sql);

    if( $login && mysqli_num_rows($login) == 1 ) {

        //extraigo los datos del registro del usuario y los guardo en el array asociativo $usuario
        //$usuario es un array que contiene TODOS los datos del registro
        $usuario = mysqli_fetch_assoc($login);

        //comprobar la contraseña
        $verify = password_verify($pass, $usuario['pass']);

        if ($verify){
            //utilizar una sesión para guardar los datos del usuario logueado

            $_SESSION['usuario'] = $usuario;

            //aquí ha hecho login correcto, así que borro si existía de antes el error
            if( isset($_SESSION['error_login']) ){
                unset( $_SESSION['error_login'] );
            }
        }
        else {
            //si hay algún error, crear una sesión con el error
            $_SESSION['error_login'] = "Login incorrecto";
        }
    }
    else {
        //en el caso que no se obtenga ninguna fila, o >1
        $_SESSION['error_login'] = "Login incorrecto";
    }
}

//redirigir al index.php
header('Location: index.php');


?>

