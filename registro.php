<?php
// iniciar sesion
session_start();

// conexion a la BD
 require_once './includes/conexion.php';

// recogemos por POST los datos que me llegan del formulario de registro
if (isset($_POST) ) {
    //var_dump($_POST);

    // usando el operador ternario
    $nombre = isset($_POST['nombre'])? $_POST['nombre'] : false;

    $apellidos = isset($_POST['apellidos'])? $_POST['apellidos'] : false;

    $email = isset($_POST['email'])? $_POST['email'] : false;

    $password = isset($_POST['password'])? $_POST['password'] : false;

    // array de errores, parta giardar los errores que pudiera haber en el formulario
    $errores = array();

    // validar los datos de antes de guardalos en la BD
    /* NOMBRE */
    if (!empty($nombre)  && !is_numeric($nombre) && !preg_match("/[0-9]+/",$nombre))
        $nombre_validado = true;
    else{
        $errores ['nombre'] = "el campo 'nombre' NO es valido";
        $nombre_validado = false;
    }
    /* APELLIDOS */
    if (!empty($apellidos) && !is_numeric($apellidos) && !preg_match("/[0-9]+/",$apellidos))
       $apellidos_validado = true;
    else{
        $errores ['apellidos'] = "el campo 'apellidos' NO es valido";
        $apellidos_validado = false;
    }

    /* EMAIL */
    if (!empty($email) && filter_var($email, FILTER_VALIDATE_EMAIL))
        $email_validado = true;
    else{
        $errores ['email'] = "el campo 'email' NO es valido";
        $email_validado = false;
    }

    /*PASSWORD*/
    if (!empty($password))
        $password_validado = true;
    else{
        $errores ['password'] = "la contraseña esta vacia";
        $password_validado = false;
    }

    // solo guarderemos los datos de registros SI NO HAY NINGUN ERROR
   // echo '<hr>';
    //echo ' Errores encontrados.... '.'<br>';
    //var_dump($errores);

    $guardar_usuario = false;
    if( count($errores) ==0 ) {
        $guardar_usuario = true;

        // es necesario cifrar la contraseña: guardarla sin cifrar no es legal
        // Esta funcion cifra la contraseña una vez, cuando este cifrada, la cifra otra vez
        // y asi 4 veces
        $password_segura = password_hash($password, PASSWORD_BCRYPT, ['cost' =>4]);

        // un var_dump para ver en que se ha convertido esta contraseña
        // var_dump($password_segura);

        // verificamos si es correcto el cifrado, comparando la contraseña original, y la que ha sido cifrada
        // var_dump(password_verify($password, $password_segura));

        // insertamos el usuario en la td de la BD
        $sql = "INSERT INTO usuarios (id, nombre, apellidos, email, pass, fecha)
        VALUES (NULL, '$nombre', '$apellidos', '$email', '$password_segura', curdate() ) ";
        $guardar = mysqli_query($conn, $sql);

        if ($guardar) {
         $_SESSION['completado'] = "El registro se ha completado con exito";
        } 
        else {
            $_SESSION['errores']['general']= "ERROR al guardar el usuario";
        }
       // var_dump($guardar);
        // echo '<br>' . $_SESSION['completado'];
        
        // a traves del sitema de sesiones le pasamos el array con todos los errores encontrados
        }
        else {
        $_SESSION['errores'] = $errores;
        }
    }
    header('Location: index.php');

?>