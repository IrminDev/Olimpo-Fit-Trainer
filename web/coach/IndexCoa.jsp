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
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="../CssAd/StyleC.css">
</head>
<body>
	<header>
		<a href="" class="logo">Olimpo<span>.</span></a>
		<ul class="navegador">
			<li><a href="#">Inicio</a></li>
			<li><a href="crearpu.jsp">Crear publicación</a></li>
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
			<p>Bienvenido entrenador pordrás encontrar información acerca de los clientes que están registrados para tener acceso a esta información de clic.</p>
			<a href="../ControlCoa?accion=clientes" class="btn">Usuarios</a>
		</div>
	</section>
</body>
</html>