<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Biblioteca</title>
    <link rel="stylesheet" href="css/styles.css">
</head>

<body>
<?php
include_once 'conexion.php';?>

    <div class="container">
        <header>
            <h1>Biblioteca</h1>
        </header>

        <nav>
            <ul>
                <li><a href="index.php">Inicio</a></li>
                <li><a href="nuevoAutor.php">Añadir Autor</a></li>
                <li><a href="nuevoLibro.php">Añadir Libro</a></li>
                <li><a href="crearCategoria.php">Añadir Categoría</a></li>
                <li><a href="prestarLibro.php">Prestar Libro</a></li>
                <li><a href="devolverLibro.php">Devolver Libro</a></li>
            </ul>
        </nav>

        <main>
            <section>
                <h2>Bienvenido a la Biblioteca</h2>
                <p>Seleccione una opción del menú para comenzar.</p>
            </section>
        </main>
    </div>

</body>

</html>

</html>