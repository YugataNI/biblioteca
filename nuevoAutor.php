<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Añadir Nuevo Autor</title>
    <link rel="stylesheet" href="css/styles.css">
</head>

<body>

    <header>
        <h1>Biblioteca</h1>
    </header>

    
    <main>
        <section>
            <h2>Añadir Nuevo Autor</h2>

            <form action="guardarAutor.php" method="post">
                <div class="form-group">
                    <label for="autor">Nombre del Autor:</label>
                    <input type="text" id="autor" name="autor" required>
                </div>
                <div class="form-group">
                    <label for="pais">País:</label>
                    <select id="pais" name="pais" required>
                        <!-- Opciones de países podrían ser obtenidas de la base de datos -->
                        <option value="1">España</option>
                        <option value="2">México</option>
                        <option value="3">Argentina</option>
                        <!-- Agrega más opciones según tus necesidades -->
                    </select>
                </div>
         
                <div class="form-group">
                    <input type="submit" value="Añadir Autor">
                </div>
            </form>
        </section>
    </main>

</body>

</html>

