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
$libro = $_POST['libro'];

// Insertar datos en la tabla libros
$sql = "INSERT INTO libros (titulo) VALUES ('$libro')";

if ($conn->query($sql) === TRUE) {
    echo "Libro añadido con éxito.";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>
