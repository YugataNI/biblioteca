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
$idPrestamo = $_POST['idPrestamo'];

// Actualizar la fecha de devolución en la tabla préstamos
$sql = "UPDATE prestamos SET fecha_devolucion = curdate() WHERE idPrestamo = '$idPrestamo'";

if ($conn->query($sql) === TRUE) {
    echo "Libro devuelto con éxito.";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>