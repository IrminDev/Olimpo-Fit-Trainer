

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Entrenador</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="CssCoa/StyleP.css">
        <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
    </head>
    <body>
        <input type="checkbox" id="nav-toggle">
        <div class="sidebar">
            <div class="sidebar-brand">
                <h2><span class="lab la-accusoft"></span><span>Menu</span></h2>
            </div>
            <div class="sidebar-menu">
                <ul>
                    <li>
                        <a href="IndexCoa.jsp"><span class="las la-igloo"></span>
                            <span>Inicio</span></a>
                    </li>
                    <li>
                        <a href="#" class="active" ><span class="las la-clipboard-list"></span>
                            <span>Publicaciones</span></a>
                    </li>
                    <li>
                        <a href="../ControlCoa?accion=clientes"><span class="las la-users"></span>
                        <span>Administrar</span></a>
                    </li>
                </ul>
            </div>
        </div>
        
        <div class="main-content">
            
            <header>
                <h2>
                    <label for="nav-toggle">
                        <span class="las la-bars"></span>
                    </label>
                        Entrenador 
                </h2>
                
             
                
                <div class="user-wrapper">
                    <img src="CssCoa/perfil.png" width="50px" height="50px" alt="">  
                    <div>
                                                                        <% 
            String nombre;
            
            HttpSession objSesion = request.getSession();
            
            nombre = objSesion.getAttribute("nombre").toString();
           
        %>
                        <h4>Entrenador</h4> 
                        <a href="profileCoa/perfil.jsp">  <small><% out.print(nombre); %></small></a>
                    </div>
                </div>
            </header>
            
            <main>
               <div class="form-container">
               <form action="../procesosU" method="post" class="form-wrap">
                   <h2>Nueva Publicación</h2>
                   <div class="form-box">
                       <input type="text" placeholder="Título" name="titulo" id="nombre" maxlength="20" minlength="2" required>
                   </div>
                   <div class="form-box">
                       <textarea name="descripcion" id="Apellido" maxlength="100" minlength="2" required cols="10" rows="25" placeholder="Contenido"></textarea>
                   </div>
                   <div class="form-submit">
                    <button type="submit" name="BtnSubirPub">Subir</button>
                   </div>
               </form>
            </div>
            </main>
        </div>
    </body>
</html>
