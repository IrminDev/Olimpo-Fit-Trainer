<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<!DOCTYPE html>
<html>
<head>
    <title>
        Olimpo Fit Trainer
    </title>
    <link rel="stylesheet" type="text/css" href="Style.css">
</head>
    <body>
        <header class="cabecera">
            <a href="" class="logo">Olimpo<span>.</span></a>
            <ul class="navegador">
                <li><a href="#">Inicio</a></li>
                <li><a href="../procesosU?accion=playlists">Playlists</a></li>
                <li><a href="../procesosU?accion=rutina">Rutina</a></li>
                <li><a href="../procesosU?accion=listar">Foro de ayuda</a></li>
                <li><a href="profile/perfil.jsp">Perfil</a></li>
                <li><a href="logout.jsp">Cerrar sesi&#243;n</a></li>
            </ul>
        </header>
        <% 
            String nombre;
            HttpSession objSesion = request.getSession();
            
            nombre = objSesion.getAttribute("nombre").toString();
        %>
        <section class="banner" id="banner">
            <div class="contenido">
                <h2>Bienvenido <span><% out.print(nombre); %></span>.</h2>
                <p>&#201;chale un vistazo a los ejercicios que tenemos preparados para calentar un poco, antes de iniciar tu rutina. Es recomendable que calientes un poco tu cuerpo antes. &#161;Mucha suerte el d&#237;a de hoy!</p>
                <a href="../procesosU?accion=rutina" class="btn">Mi rutina</a>
            </div>
        </section>

        <section class="recomendaciones">
            <div class="Ancho">
                <h1 class="titulo"><span>R</span>ecomendaciones</h1>
                <div class="lista">
                    <div class="bloque">
                            <h3>Mantente hidratado</h3>
                            <p>Es importante beber mucha agua antes de que se haga el ejercicio, para que en el proceso de ejercitarte repongas los l&#237;quidos perdidos. no esperes a sentir sed para tomar agua.</p>
                    </div>
                    <div class="bloque">
                            <h3>Viste cómodo</h3>
                            <p>Es recomendable vestir ropa de algod&#243;n, para que en el momento de ejercitarte no tengas dificultad en algunos ejercicios debido a tu vestimenta.</p>
                    </div>
                    <div class="bloque">
                            <h3>Calzado recomendable</h3>
                            <p>Cuidar la estructura &#243;sea es importante, por lo que si en casa tienes zapatos deportivos o con una buena amortiguaci&#243;n, te sugerimos que uses de preferencia esos.</p>
                    </div>
                    <div class="bloque">
                            <h3>Calentamiento</h3>
                            <p>Cada uno de los ejercicios que se te presentar&#225;n a continuaci&#243;n, es altamente recomendable realizarlos para relajar tu cuerpo y evitar posibles lesiones.</p>
                    </div>
                    <div class="bloque">
                            <h3>Come saludable</h3>
                            <p>Es sugerible una alimentaci&#243;n sana para notar de mejor forma los cambios. De igual forma es recomendable esperar m&#225;s de una hora antes de hacer ejercicio.</p>
                    </div>
                    <div class="bloque">
                            <h3>Lugar ideal</h3>
                            <p>Busca un lugar c&#243;modo y amplio en el que puedas realizar tus ejercicios de forma c&#243;moda y si es posible que sea en un lugar ventilado para tu comodidad.</p>
                    </div>
                </div>
            </div>
        </section>

        <section class="calentamientos">
                <div class="ancho">
                        <h1 class="titulo"><span>E</span>jercicios</h1>
                        <div class="ejercicios">
                                <div class="ejercicio">
                                        <img src="../assets/calentamientos/trote.jpg" alt="trote">
                                        <div class="info">
                                                <h3>Trote suave</h3>
                                                <div class="instruccion">Realiza un trote suave desde tu lugar sin desplazarte</div>
                                        </div>
                                </div>

                                <div class="ejercicio">
                                        <img src="../assets/calentamientos/cuadriceps.jpg" alt="cuadriceps">
                                        <div class="info">
                                                <h3>Cuadr&#237;ceps</h3>
                                                <div class="instruccion">De pie, lleva tu tal&#243;n a tu muslo y sujeta tu pie con la mano</div>
                                        </div>
                                </div>

                                <div class="ejercicio">
                                        <img src="../assets/calentamientos/triceps.jpg" alt="triceps">
                                        <div class="info">
                                                <h3>Tr&#237;ceps</h3>
                                                <div class="instruccion">Lleva tu brazo atr&#225;s de la cabeza y con tu otra mano ejerce presi&#243;n en el codo</div>
                                        </div>
                                </div>

                                <div class="ejercicio">
                                        <img src="../assets/calentamientos/abductores.jpg" alt="abductores">
                                        <div class="info">
                                                <h3>Abductores</h3>
                                                <div class="instruccion">En cuclillas estira tu pierna al costado e intenta tocar la punta con una mano</div>
                                        </div>
                                </div>

                                <div class="ejercicio">
                                        <img src="../assets/calentamientos/isquiotibiales.jpg" alt="isquiotibiales">
                                        <div class="info">
                                                <h3>Isquiotibiales</h3>
                                                <div class="instruccion">Si&#233;ntate en el suelo, estira tus piernas al frente e intenta tocar tus pies</div>
                                        </div>
                                </div>

                                <div class="ejercicio">
                                        <img src="../assets/calentamientos/munecas.jpg" alt="munecas">
                                        <div class="info">
                                                <h3>Muñecas</h3>
                                                <div class="instruccion">Estira tus brazos y entrecruza tus dedos con la palma al frente</div>
                                        </div>
                                </div>
                        </div>
                </div>
        </section>

        <footer>
                <p>Copyright 2021 <span>Mixco Tech</span>. Todos los derechos reservados.</p>
        </footer>

        <script type="text/javascript" src="Script.js"></script>
    </body>
</html>