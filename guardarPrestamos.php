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
$libros = $_POST['libros'];
$usuario = $_POST['usuario'];

// Insertar datos en la tabla préstamos
$sql = "INSERT INTO prestamos (idLibro, idUsuario) VALUES ('$libros', '$usuario')";

if ($conn->query($sql) === TRUE) {
    echo "Libro prestado con éxito.";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>
