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
$autor = $_POST['autor'];
$idPais = $_POST['pais']; // Asegúrate de que este es el nombre correcto del campo en tu formulario

// Insertar datos en la tabla autores
$sql = "INSERT INTO autores (autor, idPais) VALUES ('$autor', '$idPais')";

if ($conn->query($sql) === TRUE) {
    echo "Autor añadido con éxito.";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>
