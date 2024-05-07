
<div id="contenedor">
            <!-- BARRA LATERAL -->
            <aside id="sidebar">
                <!-- Muestra si hay algún usuario logado -->
                <?php  if ( isset($_SESSION['usuario']) ) : ?>
                    <div id="usuario-logado" class="bloque">
                        <h3> <?= "Hola, " . $_SESSION['usuario']['nombre'] . "!";  ?></h3>
                        <!-- botones -->
                    
                        <a href="cerrar.php" class="boton boton-rojo">Cerrar sesión</a>
                    </div>
                <?php endif;  ?> 

                <!-- si hay un usuario logado, que desaparezcan los dos div´s siguientes -->
                <?php if (! isset($_SESSION['usuario']) ) : ?>
                    <div id="login" class="bloque">
                        <h3>Identifícate</h3>   
                        <!-- Muestra si se ha producido un error en el login -->
                        <?php  if ( isset($_SESSION['error_login']) ) : ?>
                            <div class="alerta alerta-error">
                                <h3> <?= $_SESSION['error_login'];   ?>  </h3>
                            </div>
                        <?php endif;  ?>
                        
                        <form action="login.php"  method="post">
                            <label for="email">Email</label>
                            <input type="email" name="email" id="email">

                            <label for="password">Contraseña</label>
                            <input type="password" name="password" id="password">

                            <input type="submit" value="Entrar">
                        </form>
                    </div>

                    <div id="register" class="bloque">
                     
                        <h3>Regístrate</h3>               
                        <form action="registro.php"  method="post">
                            <label for="nombre">Nombre</label>
                            <input type="text" name="nombre" id="nombre">
                            
                            <label for="apellidos">Apellidos</label>
                            <input type="text" name="apellidos" id="apellidos">

                            <label for="email">Email</label>
                            <input type="email" name="email" id="email">

                            <label for="password">Contraseña</label>
                            <input type="password" name="password" id="password">

                            <input type="submit" name="submit" value="Registrar">
                        </form>
                    </div>
             <?php endif;  ?>     
            </aside>
        </div> 

        