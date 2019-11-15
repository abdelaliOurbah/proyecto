<?php
$usuario="";
if(isset($_GET['usuario'])){
	$usuario=strip_tags(trim($_GET['usuario']));
}
$clave="";
if(isset($_GET['clave'])){
	$clave=strip_tags(trim($_GET['clave']));
}

$mensaje="";
if(isset($_GET['mensaje'])){
	$mensaje=strip_tags(trim($_GET['mensaje']));
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
    <div class="contenedor-grid" id="pagina">
        <!--CABECERA-->
        <header class="row">
            <div class="col-4"><img src="img/logoabde.png" alt="Logo" width="90" height="auto"></div>
            <div class="col-4">
                <h2>Cines</h2>
            </div>
            <div class="col-4">
                <!--TABLA DE LOGIN-->
                <form action="pelis.php" method="post">
                    <fieldset name="Acceso">
                        <legend>
                            Acceso usuario
                        </legend>
                        <input type="text" placeholder="Contraseña" name="usuario" required value="<?=$usuario?>"/>
                        
                        <input type="password" placeholder="Contraseña" name="clave" required value="<?=$clave?>"/>
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
          <!--en caso de algun error mostraremos este mensjae-->
           <h1><?=$mensaje?></h1>
           
            <section id="alumnos" class="col-6">
                <h2>Peliculas</h2>
                <article>
                    <img src="img/joker.jpg" alt="">
                    <h3>JOKER</h3>
                    <p>La pasión de Arthur Fleck, un hombre ignorado por la sociedad, es hacer reír a la gente. Sin embargo, una serie de trágicos sucesos harán que su visión del mundo se distorsione considerablemente convirtiéndolo en un brillante criminal.<a href="#">ver Mas</a></p>
                    
                </article>
                <article>
                    <img src="img/zobieland.jpeg" alt="">
                    <h3>Zombieland</h3>
                    <p>Los cazadores de zombis viajan desde la Casa Blanca hasta el corazón de los Estados Unidos, donde tendrán que defenderse de nuevas clases de muertos vivientes que han evolucionado. Mientras intentan salvar el mundo, los miembros de la pandilla también tendrán que aprender a convivir.<a href="#">ver Mas</a></p>
                    
                </article>
            </section>
            <section id="profesores" class="col-6">
                <h2>Actores</h2>
                <article>
                   <img src="img/ryan.jpg" alt="">
                    <h3>ryan Reynolds</h3>
                    <p>Ryan Rodney Reynolds es un actor canadiense. El éxito y el reconocimiento le llegaron con su participación en la comedia titulada Two Guys and a Girl, antes de que iniciara su carrera de comediante y actor dramático para la industria de cine de Hollywood.<a href="#">ver Mas</a></p>
                </article>
                <article>
                   <img src="img/will.jpg" alt="">
                    <h3>Will Smith</h3>
                    <p>Es un actor, rapero, productor de cine, productor de televisión y productor discográfico estadounidense. Ha tenido éxito en sus dos facetas artísticas: ha sido nominado a cuatro Premios Globo de Oro y a dos Premios Óscar, y ha ganado cuatro Premios Grammy. <a href="#">ver Mas</a></p>
                    
                </article>
            </section>

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
