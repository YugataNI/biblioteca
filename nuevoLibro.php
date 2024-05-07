<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Añadir Nuevo Libro</title>
    <link rel="stylesheet" href="css/styles.css">
</head>

<body>

    <header>
        <h1>Biblioteca</h1>
    </header>

    
    <main>
        <section>
            <h2>Añadir Libro</h2>

            <form action="guardarLibro.php" method="post">
                <div class="form-group">
                    <label for="libro">Nombre del Libro:</label>
                    <input type="text" id="libro" name="libro" required>
                </div>

         
                <div class="form-group">
                    <input type="submit" value="Añadir libro">
                </div>
            </form>
        </section>
    </main>

</body>

</html>



