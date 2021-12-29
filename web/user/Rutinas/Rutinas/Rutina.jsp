<%@page import="com.modelo.*"%>
<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>Olimpo fit trainer</title>
		<link rel="stylesheet" type="text/css" href="Style.css">
	</head>
	
	<body>
		<header class="cabecera">
        	<a href="" class="logo">Olimpo<span>.</span></a>
        	<ul class="navegador">
            	<li><a href="../../indexU.jsp">Inicio</a></li>
            	<li><a href="../../../procesosU?accion=playlists">Playlists</a></li>
            	<li><a href="../../../procesosU?accion=rutina">Rutina</a></li>
            	<li><a href="../../../procesosU?accion=listar">Foro de ayuda</a></li>
            	<li><a href="../../profile/perfil.jsp">Perfil</a></li>
            	<li><a href="../../logout.jsp">Cerrar sesi&#243;n</a></li>
        	</ul>
            </header>
            <div class="container">
                <div class="progressbar"></div>
            </div>
            
            <div class="circle">
                <span></span>
                <span></span>
                <span></span>
                <span></span>
            </div>
            
            <div class="temporizador">
                <p id="countdown">25:00</p>
            </div>
                
            
            <% 
            HttpSession objSesion = request.getSession();
            String id = objSesion.getAttribute("idR").toString();
            
            Validar ejercicios = new Validar();
            List<Ejercicio>lista = ejercicios.Rutina_ejercicios(Integer.parseInt(id));
            %>
            
            
            <div class="ejer_desc">
                
                <div class="exer" id="0" >
                    <h2>Instrucciones</h2>
                    <br>
                    <p>Pulsa el boton de Iniciar y realiza el ejercicio que se te pide hasta que se acabe el tiempo, una vez acabado vuelve a dar click en iniciar para comenzar el siguiente ejercicio</p>
                </div>
                <div class="exer" id="1" >
                    <h2><% out.print(lista.get(0).getTitulo()); %></h2>
                    <br>
                    <p><% out.print(lista.get(0).getDescripcion()); %></p>
                </div>
                <div class="exer" id="2" >
                    <h2><% out.print(lista.get(1).getTitulo()); %></h2>
                    <br>
                    <p><% out.print(lista.get(1).getDescripcion()); %></p>
                </div>
                <div class="exer" id="3" >
                    <h2><% out.print(lista.get(2).getTitulo()); %></h2>
                    <br>
                    <p><% out.print(lista.get(2).getDescripcion()); %></p>
                </div>
                <div class="exer" id="4" >
                    <h2><% out.print(lista.get(3).getTitulo()); %></h2>
                    <br>
                    <p><% out.print(lista.get(3).getDescripcion()); %></p>
                </div>
                <div class="exer" id="5" >
                    <h2><% out.print(lista.get(4).getTitulo()); %></h2>
                    <br>
                    <p><% out.print(lista.get(4).getDescripcion()); %></p>
                </div>
                <div class="exer" id="6" >
                    <h2><% out.print(lista.get(5).getTitulo()); %></h2>
                    <br>
                    <p><% out.print(lista.get(5).getDescripcion()); %></p>
                </div>
                <div class="exer" id="7" >
                    <h2><% out.print(lista.get(6).getTitulo()); %></h2>
                    <br>
                    <p><% out.print(lista.get(6).getDescripcion()); %></p>
                </div>
                <div class="exer" id="8" >
                    <h2><% out.print(lista.get(7).getTitulo()); %></h2>
                    <br>
                    <p><% out.print(lista.get(7).getDescripcion()); %></p>
                </div>
                <div class="exer" id="9" >
                    <h2><% out.print(lista.get(8).getTitulo()); %></h2>
                    <br>
                    <p><% out.print(lista.get(8).getDescripcion()); %></p>
                </div>
                <div class="exer" id="10" >
                    <h2><% out.print(lista.get(9).getTitulo()); %></h2>
                    <br>
                    <p><% out.print(lista.get(9).getDescripcion()); %></p>
                </div>
                <div class="exer" id="11" >
                    <h2><% out.print(lista.get(10).getTitulo()); %></h2>
                    <br>
                    <p><% out.print(lista.get(10).getDescripcion()); %></p>
                </div>
                 <div class="exer" id="12" >
                    <h2><% out.print(lista.get(11).getTitulo()); %></h2>
                    <br>
                    <p><% out.print(lista.get(11).getDescripcion()); %></p>
                </div>
                <div class="exer" id="13" >
                    <h2><% out.print(lista.get(12).getTitulo()); %></h2>
                    <br>
                    <p><% out.print(lista.get(12).getDescripcion()); %></p>
                </div>
                <div class="exer" id="14" >
                    <h2><% out.print(lista.get(13).getTitulo()); %></h2>
                    <br>
                    <p><% out.print(lista.get(13).getDescripcion()); %></p>
                </div>
                <div class="exer" id="15" >
                    <h2><% out.print(lista.get(14).getTitulo()); %></h2>
                    <br>
                    <p><% out.print(lista.get(14).getDescripcion()); %></p>
                </div>
                <div class="exer" id="16" >
                    <h2>Rutina Finalizada</h2>
                    <br>
                    <p>Felicidades has finalizado todos tus ejercicios, sigue asi</p>
                </div> 
            </div>
            
            <div class="info">
		<div class="fondo">
                   <div class="ejercicios">
			<br>
			<h3>Ejercicios:</h3><br>
                        <h4>Calentamiento</h4>
			<p>1.-<% out.print(lista.get(0).getTitulo()); %> </p>
			<p>2.-<% out.print(lista.get(1).getTitulo()); %></p>
			<p>3.-<% out.print(lista.get(2).getTitulo()); %></p>
			<p>4.-<% out.print(lista.get(3).getTitulo()); %></p>
                        <p>5.-<% out.print(lista.get(4).getTitulo()); %></p>

			<br><h4>Rutina</h4>
			<p>1.-<% out.print(lista.get(5).getTitulo()); %></p>
			<p>2-<% out.print(lista.get(6).getTitulo()); %></p>
                        <p>3.-<% out.print(lista.get(7).getTitulo()); %></p>
                        <p>4.-<% out.print(lista.get(8).getTitulo()); %></p>
                        <p>5.-<% out.print(lista.get(9).getTitulo()); %></p>

			<br><h4>Enfriamiento</h4>
			<p>1.-<% out.print(lista.get(10).getTitulo()); %></p>
			<p>2.-<% out.print(lista.get(11).getTitulo()); %></p>
                        <p>3.-<% out.print(lista.get(12).getTitulo()); %></p>
			<p>4.-<% out.print(lista.get(13).getTitulo()); %></p>
                        <p>5.-<% out.print(lista.get(14).getTitulo()); %></p>
			<br>
                    </div>
                        <button id="boton" onclick="iniciar()">Iniciar</button>	
		</div>
            </div>
        </body>
        <script >
        //Barra progreso
         function iniciar(){
            const progressBar= document.querySelector('.progressbar')
            progressBar.setAttribute('id', 'play-animation')
        }   
        //Temporizador
        var i=0;
        const boton = document.querySelector("#boton");
        
        boton.addEventListener("click", function(evento){
        i= i+1;
        if((i>5) && (i<=10)){
            Temporizador(3);
        }
        else{
            Temporizador(1);
        }
        document.getElementById(i).style.display="block";
        document.getElementById(i-1).style.display="none";
        
});
         function Temporizador(minutes){
            
            var startingMinutes=minutes;
            let time= startingMinutes*60;
 	
            const countdownEl=document.getElementById('countdown');
            var intervalo= setInterval(function(){
                const minutes= Math.floor(time/60);
		let seconds= time % 60;
                
		seconds= seconds<10 ? '0' +seconds: seconds;
	
		countdownEl.innerHTML = minutes +":"+ seconds;
		time--;
                boton.disabled=true;
                if(minutes<0){
                    countdownEl.innerHTML ="0:00";
                    clearInterval(intervalo);
                    boton.disabled=false;
                }
            },1000);
            
        }
        </script>
        
</html>
