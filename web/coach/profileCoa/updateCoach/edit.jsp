<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<!DOCTYPE html>
<html>
<head>
	<title>Mi perfil</title>
	<link rel="stylesheet" type="text/css" href="style.css">
        <%
        HttpSession objSesion = request.getSession();
        
        String nombre = objSesion.getAttribute("nombre").toString();
        String apellido = objSesion.getAttribute("apellido").toString();
        String peso = objSesion.getAttribute("peso").toString();
        String estatura = objSesion.getAttribute("estatura").toString();
        String correo = objSesion.getAttribute("correo").toString();
        String tipo = objSesion.getAttribute("tipo").toString();
    %>
</head>
<body>
	<header class="cabecera">
            <a href="" class="logo">Olimpo<span>.</span></a>
            <ul class="navegador">
                 <li><a href="../../IndexAd.jsp">Inicio</a></li>
                 <li><a href="../../../ControlAD?accion=Usuario">Usuarios</a></li>
                <li><a href="../perfil.jsp" class="activo">Perfil</a></li>
                <li><a href="../../../coach/logout.jsp">Cerrar sesi&#243;n</a></li>
            </ul>
    </header>

    <section>
    <div class="contenedor">
    	<div class="caja">
            <div class="formulario">
                <h2>Mi <span>P</span>erfil</h2>
                <h3>Si no quiere modificar algún campo puede mantenerlo como está</h3>
                <form action="../../../procesosU" method="POST">
                    <div class="entrada" id="cname">
                            <h3 class="titulo">Nombre</h3>
                            <input type="text" placeholder="Nombre" value="<% out.print(nombre); %>" name="nombre" id="nombre" maxlength="20" minlength="2" required>
                    </div>
                    <div class="entrada" id="clast">
                            <h3 class="titulo">Apellido</h3>
                            <input type="text" placeholder="Apellido" value="<% out.print(apellido); %>" name="apellido" id="Apellido" maxlength="20" minlength="2" required>
                    </div>
                    <div class="entrada" id="cweight">
                            <h3 class="titulo">Peso</h3>
                            <input type="number" placeholder="Peso (kg)" value="<% out.print(peso); %>" name="peso" id="Peso" max="300" min="20" required>
                    </div>
                    <div class="entrada" id="cheight">
                            <h3 class="titulo">Estatura</h3>
                            <input type="number" placeholder="Estatura (cm)" value="<% out.print(estatura); %>" name="estatura" id="estatura" max="250" min="30" required>
                    </div>
                    <div class="entrada" id="cmail">
                            <h3 class="titulo">Correo</h3>
                            <input type="email" placeholder="Correo" value="<% out.print(correo); %>" name="correo" id="correo" maxlenght="30" required>
                    </div>					
                    <div class="entrada" id="cpass">
                            <h3 class="titulo">Contraseña nueva</h3>
                            <input type="password" placeholder="Contraseña" name="contrasenanew" id="contrasena" maxlenght="20" minlenght="4" required>
                    </div>
                    <div class="entrada" id="cpassn">
                            <h3 class="titulo">Contraseña antigua</h3>
                            <input type="password" placeholder="Contraseña nueva" name="contrasena" id="contrasenan" maxlenght="20" minlenght="4" required>
                    </div>
                    <div class="entrada" id="cidentifier">
                            <h3 class="titulo">Tipo (No modificable)</h3>
                            <input type="number" placeholder="Id" name="tipo" id="tipo" value=<% out.print(tipo); %> readonly>
                    </div>
                    <div class="entrada" id="cchange">
                            <button type="submit" name="BtnCambiar">Cambiar</button>
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

