<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "biblioteca";

// Crear conexión
$conn = new mysqli($servername, $username, $password, $dbname);

// Verificar conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}

// Obtener datos del formulario
$categorias = $_POST['categorias'];

// Insertar datos en la tabla categorias
$sql = "INSERT INTO categorias (categoria) VALUES ('$categorias')";

if ($conn->query($sql) === TRUE) {
    echo "Categoría añadida con éxito.";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>
