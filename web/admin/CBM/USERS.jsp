

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.modelo.Contador"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Usuarios registrados</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="CssAd/StyleUSU.css">
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
                        <a href="admin/IndexAd.jsp" class="active"><span class="las la-igloo"></span>
                            <span>Inicio</span></a>
                    </li>
                    <li>
                        <a href="admin/CBM/ModificarUsu.jsp"><span class="las la-clipboard-list"></span>
                            <span>Modificar</span></a>
                    </li>
                      
                    <li>
                        <a href="admin/CBM/EliminarUsu.jsp"><span class="las la-users"></span>
                        <span>Bajas</span></a>
                    </li>
                      <li>
                        <a href="" class="active"><span class="las la-igloo"></span>
                            <span>Consultas</span></a>
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
                        Administrador 
                </h2>
                
              
                <div class="user-wrapper">
                    <img src="CssAd/perfil.png" width="50px" height="50px" alt="">  
                    <div>
                                          <% 
            String nombre;
            
            HttpSession objSesion = request.getSession();
            
            nombre = objSesion.getAttribute("nombre").toString();
           
        %>
                        <h4>Administrador</h4> 
                        <a href="admin/profileAdmin/perfil.jsp"><small><% out.print(nombre); %></small></a>
                    </div>
                </div>
            </header>
            
            <main>
                <%String data[] = new String[3];
           Contador contador = new Contador();
               

           data = contador.contadores();
            if(data.equals(data[0])){
             data[0]= objSesion.getAttribute("data[]").toString();  
            }else
            if(data.equals(data[1])){
             data[1]= objSesion.getAttribute("data[]").toString(); 
            }else
            if(data.equals(data[2])){
             data[2]= objSesion.getAttribute("data[]").toString(); 
            }




                %>
                <div class="cards">
                    <div class="card-sigle">
                        <div>
                            <h1><% out.print(data[2]); %></h1>  
                            <span>Usuarios</span>
                        </div>
                        <div>
                            <span class="las la-users"></span> 
                        </div>
                    </div>    
                        <div class="card-sigle">
                        <div>
                            <h1><% out.print(data[1]); %></h1>  
                            <span>Entrenadores</span>
                        </div>
                        <div>
                            <span class="las la-users"></span> 
                        </div>
                        </div>    
                      <div class="card-sigle">
                        <div>
                            <h1><% out.print(data[0]); %></h1>  
                            <span>Clientes</span>
                        </div>
                        <div>
                            <span class="las la-clipboard-list"></span> 
                        </div>
                    </div>
                </div>
                
                <div class="recent-grid">
                    <div class="projects">
                        <div class="card">
                            <div class="card-header">
                                <h3>Usuarios</h3>  
                            </div>  
                            <div class="card-body">
                                <div class="table-responsive">
                                <table width="100%">
                                    <thead>
                                        <tr>
                                            <th>Perfil</th>
                                            <th>Nombre Usuario</th>  
                                            <th>Apellido Paterno</th>
                                            <th>Tipo Usuario</th>
                                            <th>Correo</th>
                                            
                                            
                                            
                                        </tr> 
                                    </thead>
                                    
                                    <tbody>
                                        <c:forEach  var="usuario" items="${lista}">
                                            
                                        
                                        <tr>
                                            <td> <div class="info">
                                            <img src="CssAd/perfil.png" width="40px" height="40px" alt="">
                                            </div></td>
                                            <td><c:out value="${usuario.nombre}" /></td>
                                            <td><c:out value="${usuario.apellido}" /></td>
                                            <td>
                                                
                                                <button class="status purple"></button> 
                                              <c:out value="${usuario.tipoUsuario}" />
                                            </td>
                                            <td> <c:out value="${usuario.correo}" /></td>
                                            
                                        </tr>
                                        </c:forEach>
                                    </tbody>
                                    
                                </table> 
                            </div>
                        </div>
                    </div>
                  </div>   
                    
                
            </main>
        </div>
    </body>
</html>
