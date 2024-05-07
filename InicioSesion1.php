<header>
    <h1>Biblioteca</h1>
</header>

<nav>
    <ul>
        <li><a href="index.php">Inicio</a></li>
        <li><a href="inicioSesion.php">Iniciar Sesión</a></li>
    </ul>
</nav>

<main>
    <section>
        <h2>Iniciar Sesión</h2>

        <form action="inicioSesion.php" method="post">
            <div class="form-group">
                <label for="usuario">Usuario:</label>
                <input type="text" id="usuario" name="usuario" required>
            </div>
            <div class="form-group">
                <label for="contrasena">Contraseña:</label>
                <input type="password" id="contrasena" name="contrasena" required>
            </div>
            <div class="form-group">
                <button type="submit" class="btn btn-primary">Iniciar Sesión</button>
            </div>
        </form>
    </section>
</main>