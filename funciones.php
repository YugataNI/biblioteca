<?php
include_once 'conexion.php';

$message = '';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $author = mysqli_real_escape_string($conn, $_POST['author']);
    $country = mysqli_real_escape_string($conn, $_POST['country']);

    $sql = "INSERT INTO autores (autor, idPais) VALUES ('$author', '$country')";

    if ($conn->query($sql) === TRUE) {
        $message = "Autor añadido con éxito";
    } else {
        $message = "Error: " . $sql . "<br>" . $conn->error;
    }
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Añadir Autor</title>
</head>
<body>
    <h2>Añadir Autor</h2>
    <form method="post" action="">
        <div><?php echo $message; ?></div>
        Nombre del Autor: <input type="text" name="author" required><br>
        País: 
        <select name="country" required>
            <!-- Opciones de países aquí -->
        </select><br>
        <input type="submit" value="Añadir">
    </form>
</body>
</html>
