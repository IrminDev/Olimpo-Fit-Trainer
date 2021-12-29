<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<!DOCTYPE html>
<html>
<head>
    <title>Mi perfil</title>
    <link rel="stylesheet" type="text/css" href="StyleUser.css">
    <%
        HttpSession objSesion = request.getSession();
        
        String nombre = objSesion.getAttribute("nombre").toString();
        String apellido = objSesion.getAttribute("apellido").toString();
        String peso = objSesion.getAttribute("peso").toString();
        String estatura = objSesion.getAttribute("estatura").toString();
        String correo = objSesion.getAttribute("correo").toString();
    %>
</head>
<body>
    <header class="cabecera">
        <a href="" class="logo">Olimpo<span>.</span></a>
        <ul class="navegador">
            <li><a href="../IndexCoa.jsp">Inicio</a></li>
            <li><a href="../../ControlCoa?accion=clientes">Usuarios</a></li>
            <li><a href="#" class="activo">Perfil</a></li>
            <li><a href='../../coach/logout.jsp'>Cerrar sesi&#243;n</a></li>
            
        </ul>
    </header>

    <section>
    <div class="contenedor">
    	<div class="caja">
            <div class="formulario">
                <h2>Mi <span>P</span>erfil</h2>
                <form method="POST" action="">
                        <div class="entrada" id="cname">
                            <h3 class="titulo">Nombre</h3>
                            <input type="text" placeholder="Nombre" id="nombre" value="<% out.print(nombre); %>" readonly>
                        </div>
                        <div class="entrada" id="clast">
                            <h3 class="titulo">Apellido</h3>
                            <input type="text" placeholder="Apellido" value="<% out.print(apellido); %>" id="Apellido" readonly>
                        </div>
                        <div class="entrada" id="cweight">
                            <h3 class="titulo">Peso</h3>
                            <input type="text" placeholder="Peso" id="Peso" value="<% out.print(peso); %>" readonly>
                        </div>
                        <div class="entrada" id="cheight">
                            <h3 class="titulo">Estatura</h3>
                            <input type="text" placeholder="Estatura" id="estatura" value="<% out.print(estatura); %>" readonly>
                        </div>
                        <div class="entrada" id="cmail">
                            <h3 class="titulo">Correo</h3>
                            <input type="text" placeholder="Correo" id="correo" value="<% out.print(correo); %>" readonly>
                        </div>
                        <div class="entrada" id="csubmit">
                            <a href="updateCoach/edit.jsp" class="btn">Modificar</a>
                        </div>
                        <div class="entrada" id="celiminar">
                            <a href="updateCoach/delete.jsp" class="btn">Eliminar</a>
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
