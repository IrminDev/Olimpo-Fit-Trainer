<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Mi perfil</title>
    <link rel="stylesheet" type="text/css" href="style.css">
    <%
        HttpSession objSesion = request.getSession();
        
        String nombre = objSesion.getAttribute("nombre").toString();
        String apellido = objSesion.getAttribute("apellido").toString();
        String correo = objSesion.getAttribute("correo").toString();
        String id = objSesion.getAttribute("id").toString();
    %>
</head>
<body>
	<header class="cabecera">
            <a href="" class="logo">Olimpo<span>.</span></a>
            <ul class="navegador">
                <li><a href="../../IndexACoa.jsp">Inicio</a></li>
                <li><a href="../../../ControlCoa?accion=clientes">Usuarios</a></li>
                <li><a href="../perfil.jsp" class="activo">Perfil</a></li>
                <li><a href="../../../coach/logout.jsp">Cerrar sesi&#243;n</a></li>
            </ul>
    </header>

    <section>
    <div class="contenedor">
    	<div class="caja">
            <div class="formulario">
                <h2>Mi <span>P</span>erfil</h2>
                <h3>Confirma tu contraseña para eliminar tu cuenta</h3>
                <form method="POST" action="../../../procesosU">
                    <div class="entrada" id="cid">
                        <h3 class="titulo">Id</h3>
                        <input type="number" placeholder="Id" name="id" id="id" value=<% out.print(id); %> readonly>
                    </div>
                    <div class="entrada" id="cnombre">
                        <h3 class="titulo">Nombre</h3>
                        <input type="text" placeholder="Nombre" name="name" id="name" value=<% out.print(nombre); %> readonly>
                    </div>
                    <div class="entrada" id="capellido">
                        <h3 class="titulo">Apellido</h3>
                        <input type="text" placeholder="Apellido" name="apellido" id="apellido" value=<% out.print(apellido); %> readonly>
                    </div>
                    <div class="entrada" id="ccorreo">
                        <h3 class="titulo">Correo</h3>
                        <input type="text" placeholder="Correo" name="correo" id="correo" value=<% out.print(correo); %> readonly>
                    </div>
                    <div class="entrada" id="ccontra">
                        <h3 class="titulo">Contraseña</h3>
                        <input type="text" placeholder="Contraseña para confirmar" name="contrasena" id="contrasena" required>
                    </div>
                    <div class="entrada" id="cborrar">
                        <button type="submit" name="BtnEliminar">Eliminar</button>
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
