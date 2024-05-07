<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Prestar Libro</title>
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
            <h2>Prestar Libro</h2>

            <form action="guardarPrestamos.php" method="post">
                <div class="form-group">
                <div>
                    <label for="autor">Nombre del Autor:</label>
                    <input type="text" id="autor" name="autor" required>
                </div>
<br>
                <label for="libro">Nombre del Libro:</label>
                    <input type="text" id="libros" name="libros" required>
                    
                </div>
<br>
                <div>
                    <label for="categorias"> categoría:</label>
                    <input type="text" id="categorias" name="categorias" required>
                </div>
<br>
                <div class="form-group">
                    <label for="usuario">Usuario:</label>
                    <input type="text" id="usuario" name="usuario" required>
                </div>

              
<br>
                <div class="form-group">
                    <button type="submit" class="btn btn-primary">Prestar Libro</button>
                </div>
            </form>
        </section>
    </main>

</body>

</html>
