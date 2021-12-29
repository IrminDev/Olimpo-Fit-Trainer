<%@page import="java.util.Iterator"%>
<%@page import="com.modelo.Rutina"%>
<%@page import="java.util.List"%>
<%@page import="com.modelo.Validar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Rutinas</title>
	<link rel="stylesheet" type="text/css" href="user/Rutinas/Style.css">
</head>
<body>
<header class="cabecera">
    <a href="" class="logo">Olimpo<span>.</span></a>
    <ul class="navegador">
        <li><a href="#">Inicio</a></li>
        <li><a href="procesosU?accion=playlists">Playlists</a></li>
        <li><a href="procesosU?accion=rutina">Rutina</a></li>
        <li><a href="procesosU?accion=listar">Foro de ayuda</a></li>
        <li><a href="user/profile/perfil.jsp">Perfil</a></li>
        <li><a href="user/logout.jsp">Cerrar sesi&#243;n</a></li>
    </ul>
</header>
<div class="container">
    <%
        Validar listarRutina = new Validar();
        List<Rutina>lista = listarRutina.listarRutina();
        
        Iterator<Rutina>iter = lista.iterator();
        Rutina rut = null;
        while(iter.hasNext()){
            rut = iter.next();
    %>
	<div class="box">
		<span></span>
		<div class="content">
			<h2><%=rut.getNombre() %></h2>
			<p><%=rut.getDescripcion() %></p>
			<form action="" method="POST">
                            <button name="rutina" type="submit" value="<%=rut.getId() %>">¡Vamos allá!</button>
			</form>
		</div>
	</div>
   <%}%>
</div>
</body>
<script type='text/javascript' src='script.js'></script>
</html>