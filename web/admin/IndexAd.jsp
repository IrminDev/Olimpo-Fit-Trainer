<%-- 
    Document   : AdminIndex
    Created on : 17/05/2021, 06:13:52 PM
    Author     : danielasosa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<title>Olimpo fit trainer</title>
       
	<link rel="stylesheet" type="text/css" href="../CssAd/Style.css">
</head>
<body>
	<header>
		<a href="" class="logo">Olimpo<span>.</span></a>
		<ul class="navegador">
			<li><a href="#">Inicio</a></li>
			<li><a href="crearPlay.jsp">Crear playlist</a></li>
			<li><a href="logout.jsp">Cerrar sesión</a></li>
		</ul>
	</header>
        <% 
            String nombre;
            HttpSession objSesion = request.getSession();
            
            nombre = objSesion.getAttribute("nombre").toString();
        %>
        <section class="banner" id="banner">
		<div class="contenido">
			<h2>Bienvenido <% out.print(nombre); %></h2>
			<p>Bienvenido administrador pordras encontrar información acerca de los usuarios que están registrados para tener acceso a esta información de clic.</p>
			<a href="../ControlAD?accion=Usuario" class="btn">Usuarios</a>
		</div>
	</section>
</body>
</html>
