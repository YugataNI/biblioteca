<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Añadir Categorías</title>
    <link rel="stylesheet" href="css/styles.css">
</head>

<body>

    <header>
        <h1>Biblioteca</h1>
    </header>
    
    <nav>
        <ul>
            <li><a href="index.php">Inicio</a></li>
            <li><a href="nuevoAutor.php">Añadir Autor</a></li>
            <li><a href="nuevoLibro.php">Añadir Libro</a></li>
            <li><a href="crearCategoria.php">Añadir Categoría</a></li>
            <li><a href="prestarLibro.php" class="active">Prestar Libro</a></li>
            <li><a href="devolverLibro.php">Devolver Libro</a></li>
        </ul>
    </nav>

    <main>
        <section>
            <h2>Añadir Categorías</h2>

            <form action="guardarCategoria.php" method="post">
                <div>
                    <label for="categorias">Nombre de la categoría:</label>
                    <input type="text" id="categorias" name="categorias" required>
                </div>
                <div>
                    <input type="submit" value="Añadir categoría">
                </div>
            </form>
        </section>
    </main>

</body>

</html>
