<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="com.modelo.Playlist"%>
<%@page import="com.modelo.Validar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Playlists</title>
        <link rel="stylesheet" type="text/css" href="user/Playlist/StyleP.css">
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@100;400;700&display=swap" rel="stylesheet">
    </head>
    <body>
         
		<header class="cabecera">
                    
			<a href="" class="logo">Olimpo<span>.</span></a>
			<ul class="navegador">
				<li><a href="user/indexU.jsp">Inicio</a></li>
				<li><a href="procesosU?accion=playlists">Playlists</a></li>
				<li><a href="procesosU?accion=rutina">Rutina</a></li>
				<li><a href="procesosU?accion=listar">Foro de ayuda</a></li>
				<li><a href="user/profile/perfil.jsp">Perfil</a></li>
				<li><a href="user/logout.jsp">Cerrar sesi&#243;n</a></li>
			</ul>
                       
                       
		</header>
                <section class="banner" id="banner">
			<div class="contenedor head">
				<h2 class="titulo">Playlist.</h2>
				<p class="copy"> La música que hará que tu rutina sea la más divertida</p>
                        </div>
			
		</section>
        <main>
            <section class="contenedor" id="servicio">
                <h2 class="subtitulo">¿Porqué la música influye al hacer ejercicio?</h2>
                <div class="contenedor-servicio">
                   <img src="assets/images/ejer.png" alt="">
                    <div class="checklist-servicio">
                        <div class="service">
                            <h3 class="n-service"><span class="number">1</span>Mejorar el rendimiento un 15%</h3>
                            <p>La música nos distrae del dolor y el cansancio, eleva el estado de ánimo, aumenta la resistencia, reduce el esfuerzo percibido e incluso puede promover la eficiencia metabólica.</p>
                        </div>
                         <div class="service">
                            <h3 class="n-service"><span class="number">2</span>Mantener el ritmo</h3>
                            <p>La música estimula la corteza cerebral motora, lo que se traduce en bastante activación del cuerpo. El cerebro envía señales de movernos y estar enérgicos, lo que puede sincronizarse con el ejercicio que estamos realizando. De esta manera, estaremos llenos de potencia para asumir el ejercicio que venga.</p>
                        </div>
                        <div class="service">
                            <h3 class="n-service"><span class="number">3</span> Mejora el estado de ánimo</h3>
                            <p>La combinación de música y ejercicio es una gran aliada del estado de humor. Ambas son capaces de inundar nuestro cerebro de serotonina, la hormona de la felicidad y el bienestar, por lo que dan resultados excelentes.</p>
                        </div>
                    </div>
                </div>
            </section>
            <section class="gallery" id="portafolio">
                <div class="contenedor">
                    <h2 class="subtitulo">Lista de playlists</h2>
                </div>
                <div class="contenedor-galeria">
                <%
                    Validar listarPlay = new Validar();
                    List<Playlist>lista = listarPlay.listarPlay();
                    
                    Iterator<Playlist>iter = lista.iterator();
                    Playlist play = null;
                    while(iter.hasNext()){
                        play = iter.next();
                        String img = "";
                        if(play.getPlataforma() == 1){
                            img = "assets/spotify.jpg";
                        }
                        else{
                            img = "assets/deezer.jpg";
                        }
                %>
                    <div class="card">
                        <figure>
                            <img src="<%=img%>" >   
                        </figure> 
                        <div class="contenido">
                            <h3><%=play.getTitulo()%></h3>
                            <p><%=play.getDescripcion()%></p>
                            <a href="<%=play.getUrl()%>">Ir a playlist</a>
                        </div>
                    </div>   
                
                <%}%>
                </div>
            </section>
        </main>
    <footer>
        <p>Copyright 2021 <span>Mixco Tech</span>. Todos los derechos reservados.</p>
    </footer>
    <script type="text/javascript" src="script.js"></script>
</body>
</html>

