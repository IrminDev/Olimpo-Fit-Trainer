<%-- 
    Document   : EliminarUsu
    Created on : 20/05/2021, 03:54:51 PM
    Author     : danielasosa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
        <title>Eliminacion de Usuario</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <link rel="stylesheet" type="text/css" href="StyleE.css">
    </head>
    <body>
         <header class="hero">
             <div class="container">
                <nav class="nav">
                    <a href="../IndexAd.jsp" class="nav__items nav__items--cta">Inicio</a>
                    <a href="../../ControlAD?accion=Usuario"  class="nav__items">Usuarios</a>
                    <a href="ModificarUsu.jsp" class="nav__items">Modificar</a>
                    <a href="EliminarUsu.jsp"  class="nav__items">Bajas</a>
                </nav>
             </div>
         </header> 
    <form class="form" id="formulario" action='../../ControlAD?accion=baja'  name="formulario" method="POST">
                <h1>Eliminación Usuario</h1>
                <center><h3>Ingresa primero el nombre, apellido y correo del usuario para poder eliminarlo</h3></center>
                <!-- Nombre -->
                
                <div class="grupo" id="grupo__nombre">
                    <div class="grupo-input">
                        <input type="text" class="formulario__input" name="nombre" id="nombre" placeholder="Escriba el nombre del producto a cambiar" pattern="[A-Z]{1}[a-z ]{2,20}" required>
                    </div>
                    <span class="barra"></span>
                    <label class="etiqueta" for="nombre"> Nombre del usuario</label>
                    <p class="input-error">El nombre debe iniciar con mayúscula y tener entre 3-20 dígitos, solo puede contener la primera letra mayúscula y el resto minúsculas</p>
                </div>
                
                <!-- Descripción -->
                <div class="grupo" id="grupo__descripcion">
                    <div class="grupo-input">
                        <input type="text" class="formulario__input" name="apellido" id="apellido" placeholder="Escriba la nueva descripción" pattern="[A-Za-z0-9.-_%/# ñ]*" required >
                    </div>
                    <span class="barra"></span>
                    <label class="etiqueta" for="apellido"> Apellido del Usuario </label>
                    <p class="input-error">La descripción puede contener cualquier tipo de caracteres</p>
                </div>

                <!-- Precio -->
                <div class="grupo" id="grupo__fecha"> 
                    <div class="grupo-input">
                        <input type="text" class="formulario__input" name="correo" id="correo" placeholder="Escriba el nuevo precio" pattern="[A-Za-z0-9.-_%/# ñ]*" required >
                    </div>
                    <span class="barra"></span>
                    <label class="etiqueta" for="correo">Correo del usuario</label>
                    <p class="input-error">ingresar correo de contacto del usuario</p>
                </div>

                <!-- Botones-->
                <div class="botton" id="grupo__botones">
                    <button type="submit" name="enviar" id="enviar" class="button1">Eliminar</button> 
                    <input type="reset" value="Reiniciar" name="limpiar" id="limpiar" class="button1">  
                </div>
            
            </form>
            
        <script src="https://kit.fontawesome.com/2c36e9b7b1.js" crossorigin="anonymous"></script>
    </body>
</html>

