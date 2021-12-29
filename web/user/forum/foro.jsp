<%@page import="java.util.Iterator"%>
<%@page import="com.modelo.*"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Foro</title>
    <link rel="stylesheet" type="text/css" href="StyleForum.css">
</head>
<body>
	<header class="cabecera">
		<a href="" class="logo">Olimpo<span>.</span></a>
		<ul class="navegador">
			<li><a href="user/indexU.jsp">Inicio</a></li>
			<li><a href="procesosU?accion=playlists">Playlists</a></li>
			<li><a href="procesosU?accion=rutina">Rutina</a></li>
			<li><a href="procesosU?accion=listar">Foro de ayuda</a></li>
			<li><a href="user/profile/perfil.jsp">Perfil</a></li>
			<li><a href="user/logout.jsp">Cerrar sesi&#243;n</a></li>
		</ul>
	</header>

	<div class="container">
		<div class="encabezado">
			<img src="assets/forum/mariposa.png" class="icono"><p>Nunca te rindas</p><img src="assets/forum/comida.png" class="icono">
		</div>

		<div class="caja">
                    <%
                        Validar listar = new Validar();
                        List<Publicacion>lista = listar.listar();

                        Iterator<Publicacion>iter = lista.iterator();
                        Publicacion post = null;
                        while(iter.hasNext()){
                            post = iter.next();
                        
                    %>
			<div class="post">
				<h4 class="titulo"><%=post.getTitulo()%></h4>
				<p class="content"><%=post.getDescripcion()%></p>
			</div>
                        
                    <%}%>
		</div>
	</div>

	<footer>
		<p>Copyright 2021 <span>Mixco Tech.</span> Todos los derechos reservados.</p>
	</footer>

	<script type="text/javascript" src="Script.js"></script>
</body>
</html>