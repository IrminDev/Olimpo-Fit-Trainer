<%-- 
    Document   : crearPlay
    Created on : 21/05/2021, 12:06:21 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Crear Playlist</title>
	<link rel="stylesheet" type="text/css" href="../CssAd/stylePlay.css">
</head>
<body>
	<header>
		<a href="" class="logo">Olimpo<span>.</span></a>
		<ul class="navegador">
			<li><a href="IndexAd.jsp">Inicio</a></li>
			<li><a href="#">Crear playlist</a></li>
			<li><a href="logout.jsp">Cerrar sesión</a></li>
		</ul>
	</header>

    <section>
    <div class="contenedor">
    	<div class="caja">
            <div class="formulario">
                <h2>Nueva <span>P</span>laylist</h2>
                <form action="../procesosU" method="POST">
                    <div class="entrada" id="cname">
                            <h3 class="titulo">Titulo</h3>
                            <input type="text" placeholder="Titulo" name="titulo" id="nombre" maxlength="20" minlength="2" required>
                    </div>
                    <div class="entrada" id="cdesc">
                            <h3 class="titulo">Descripcion</h3>
                            <input type="text" placeholder="Descripcion" name="descripcion" id="Apellido" maxlength="100" minlength="2" required>
                    </div>
                    <div class="entrada" id="curl">
                            <h3 class="titulo">URL</h3>
                            <input type="text" placeholder="URL" name="url" id="Apellido" maxlength="100" minlength="2" required>
                    </div>
                    <div class="entrada" id="cplat">
                            <h3 class="titulo">Plataforma</h3>
                            <select id="plat" name="plataforma" required>
                            	<option value="1">Spotify</option>
				<option value="2">Deezer</option>
                            </select>
                    </div>
                    <div class="entrada" id="csubmit">
                            <button type="submit" name="BtnSubirPlay">Subir</button>
                    </div>
                </form>
            </div>
    	</div>
    </div>
</section>
    <footer>
        <p>Copyright 2021 <span>Mixco Tech</span>. Todos los derechos reservados.</p>
    </footer>
</body>
</html>

