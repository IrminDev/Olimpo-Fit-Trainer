<%-- 
    Document   : ModificarUsu
    Created on : 19/05/2021, 10:54:20 AM
    Author     : danielasosa
--%>
 <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Modificación</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
            <link rel="stylesheet" href="estiloM.css">
    </head>
    <body>
         <header class="hero">
          <div class="container">
                <nav class="nav">
                    <a href="../IndexAd.jsp" class="nav__items nav__items--cta">Inicio</a>
                    <a href="../../ControlAD?accion=Usuario"  class="nav__items">Usuarios</a>
                    <a href="#" class="nav__items">Modificar</a>
                    <a href="EliminarUsu.jsp"  class="nav__items">Bajas</a>
                </nav>
               
             </div>
         </header> 
        
            <form class="form" id="formulario" action='../../ControlAD?accion=cambiar' name="formulario" method="POST">
                <h1>Modificación de usuario</h1>
                <center><h3>Ingresa primero el nombre, apellido, correo, y podrá modificar el tipo de usuario que es el usuario a cambiar</h3></center>
                <!-- Nombre -->
                
                <div class="grupo" id="grupo__nombre">
                    <div class="grupo-input">
                        <input type="text" class="formulario__input" name="nombreviejo" id="nombreviejo" placeholder="Escriba el nombre del producto a cambiar" pattern="[A-Z]{1}[a-z ]{2,20}" required>
                    </div>
                    <span class="barra"></span>
                    <label class="etiqueta" for="nombre"> Nombre del usuario</label>
                    <p class="input-error">El nombre debe iniciar con mayúscula y tener entre 3-20 dígitos, solo puede contener la primera letra mayúscula y el resto minúsculas</p>
                </div>
                
                <div class="grupo" id="grupo__nombre">
                    <div class="grupo-input">
                        <input type="text" class="formulario__input" name="apellido" id="apellido" placeholder="Escriba el nombre del producto a cambiar" pattern="[A-Z]{1}[a-z ]{2,20}" required>
                    </div>
                    <span class="barra"></span>
                    <label class="etiqueta" for="apellido"> Apellido del Usuario</label>
                    <p class="input-error">El nombre debe iniciar con mayúscula y tener entre 3-20 dígitos, solo puede contener la primera letra mayúscula y el resto minúsculas</p>
                </div>
                
                <!-- Descripción -->
                <div class="grupo" id="grupo__descripcion">
                    <div class="grupo-input">
                        <input type="text" class="formulario__input" name="correo" id="correo" placeholder="Escriba la nueva descripción" pattern="[A-Za-z0-9.-_%/# ñ]*" required >
                    </div>
                    <span class="barra"></span>
                    <label class="etiqueta" for="correo"> Correo</label>
                    <p class="input-error">El correo puede contener cualquier tipo de caracteres</p>
                </div>

                <!-- Precio -->
                <div class="grupo" id="grupo__fecha"> 
                    <div class="grupo-input">
                        <input type="number" class="formulario__input" name="tipo" id="tipo" placeholder="Escriba el nuevo precio" pattern="\d*" required >
                    </div>
                    <span class="barra"></span>
                    <label class="etiqueta" for="tipo">Tipo de Usuario</label>
                    <p class="input-error">Ingrese el número que corresponda el usuario 1-Administrador, 2-Cliente, 3-Entrenador</p>
                </div>

                <!-- Botones-->
                <div class="botton" id="grupo__botones">
                    <button type="submit" name="enviar" id="enviar" class="button1">Modificar</button> 
                    <input type="reset" value="Reiniciar" name="limpiar" id="limpiar" class="button1">  
                </div>
            
            </form>
            
        <script src="https://kit.fontawesome.com/2c36e9b7b1.js" crossorigin="anonymous"></script>
    </body>
</html>
