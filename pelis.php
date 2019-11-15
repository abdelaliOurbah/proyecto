<?php
	$usuario="";//El usuario
    $clave="";//la clave del usuario
	
	if (isset($_POST['usuario'])){
		$usuario=strip_tags(trim($_POST['usuario']));//obtener el usuario introducido
	}
    if (isset($_POST['clave'])){
		$clave=strip_tags(trim($_POST['clave']));//obtener lacontraseña
	}
    
	//comprobar si el campo esta vacio
if (empty($usuario)){
	header("Location: index.php?mensaje=".urlencode("se necesita un usuario"));
	exit;
}
if (empty($clave)){
	header("Location: index.php?mensaje=".urlencode("se necesita una clave"));
	exit;
}

	/*Poder acceder a nuestra base de Datos.
	importante conocer la ruta y ejecutar dichos archivos en una ruta similar*/
		include ("../../seguridad/tema04/peliculas.php");
		$canal=@mysqli_connect(IP,USUARIO,CLAVE,BD);
		
		$usuario=$_POST['usuario'];//Se obtiene el usuario
        $clave=$_POST['clave'];//Se obtiene la contraseña
		
        mysqli_set_charset($canal,"utf8");
		//con este select obtenemos la informacion necesaria

		$sql="select nombre, apellidos,edad from usuario where nombre = '$usuario' and contraseña like '$clave'";
        $sqlpeliculas="select titulo,edad from peliculas";
		
		$consulta=mysqli_prepare($canal,$sql);//pasar a una base de datos una consulta
			if (!$consulta){
				//En caso de que se localice un error en la base de datos.
				echo "Ha ocurrido el error: ".mysqli_errno($canal)." ".mysqli_error($canal)."<br />";
				exit;
				}

        $peliculas=mysqli_prepare($canal,$sqlpeliculas);//pasar a una base de datos una consulta
			if (!$peliculas){
				//En caso de que se localice un error en la base de datos.
				echo "Ha ocurrido el error: ".mysqli_errno($canal)." ".mysqli_error($canal)."<br />";
				exit;
				}
				
			//Guardamos la informacion obtenida desde el select
		mysqli_stmt_execute($consulta);
		mysqli_stmt_bind_result($consulta,$nombre,$apellidos,$edadusuario);
		
		mysqli_stmt_store_result($consulta);
		$n=mysqli_stmt_num_rows($consulta);
		if ($n!=1){
			header("Location: index.php?mensaje=".urlencode("Se necesita un usuario existente"));
			exit;
		}

?>

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
            <h2>Bienvenido Usuario:
                <?php
                
				while (mysqli_stmt_fetch($consulta)){
				echo "$nombre $apellidos";
				}
            
			?>
            </h2>
            <h3 id="peliculas">Peliculas disponibles</h3>

            <table>
                <tr>
                    <th>Peliculas</th>
                    <th>edad</th>
                    <th>tipo</th>
                    <th>precio</th>
                    <th>Compras</th>
                    <th>stock</th>
                </tr>
                <?php
                
                mysqli_stmt_execute($peliculas);
                mysqli_stmt_bind_result($peliculas,$titulo,$edad);
                
				while (mysqli_stmt_fetch($peliculas)){
					if($edadusuario >= $edad){
						echo "<tr><td>$titulo</td>
						<td>$edad</td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td></tr>";
					}
				}
			 ?>
            </table>
            <?php
			mysqli_stmt_close($consulta);
            mysqli_stmt_close($peliculas);
            mysqli_close($canal);
		?>

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
</body>

</html>
