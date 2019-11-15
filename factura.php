<!DOCTYPE html>
<html lang="">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mi Tienda</title>
    <!--Estilos para la pagina-->
    <link rel="stylesheet" type="text/css" href="css/estilos.css" />

</head>

<body>
    <div class="contenedor-grid">
        <!--CABECERA-->
        <header class="row">
            <div class="col-4"><a href="index.html"><img src="img/logoabde.png" alt="Logo" width="90" height="auto"></a></div>
            <div class="col-4">
                <h2>Cines</h2>
            </div>
            <div class="col-4">
                <!--TABLA DE LOGIN-->
                <form action="#" method="post">
                    <fieldset name="Acceso">
                        <legend>
                            Acceso usuario
                        </legend>
                        <input type="text" placeholder="Usuario" name="uname" required>
                        <input type="password" placeholder="Contraseña" name="psw" required>
                        <button type="submit">Login</button>
                    </fieldset>
                </form>
            </div>
        </header>
        <!--MENU de navegacion-->
        <nav class="row" id="navegacion">
            <a href="index.php" class="col-3">Página de Inicio</a>
            <a href="pelis.php" class="col-3">Peliculas</a>
            <a href="factura.php" class="col-3">factura</a>
            <a href="#" class="col-3">estrenos</a>

        </nav>
        <!--menu lateral-->
        <aside id="izquierdo">
            <!--menu lateral-->
            <a href="#">accion</a>
            <a href="#">comedia</a>
            <a href="#">aventura</a>
            <a href="#">terror</a>
            <a href="#">suspense</a>
        </aside>
        <!--CUERPO de la página-->
        <main>
            <h2 id="peliculas">Peliculas disponibles</h2>
            <table>
                <tr>
                    <th>Peliculas</th>
                    <th>precio</th>

                </tr>
                <tr>
                    <td>-</td>
                    <td>-</td>
                    
                </tr>
                <tr>
                    <td colspan="2">Total: </td>
                </tr>
            </table>
            
        </main>
        
        <!--PIE de página-->
        <footer>
            <div>
                <a href="https://twitter.com/?lang=es" value="twitter"><img src="img/twitter.png" alt="Twitter" width="20" height="20"></a>
                <a href="https://facebook.com/?lang=es"><img src="img/facebook.png" alt="facebook" width="20" height="20"></a>
                <a href="https://youtube.com/?lang=es"><img src="img/youtube.png" alt="youtube" width="20" height="20"></a>
            </div>
            <div>
                <a href="#" onclick="#"> Aviso legal</a>
            </div>
        </footer>
    </div>
</body></html>
