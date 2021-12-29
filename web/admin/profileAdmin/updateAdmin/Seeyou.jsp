<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Hasta pronto</title>
    <link rel="stylesheet" type="text/css" href="stylebye.css">
    <%
        HttpSession objSesion = request.getSession();
        objSesion.invalidate();
    %>
</head>
<body>
    <div id="container">
        <div class="content">
            <h2>Te vamos a extrañar...</h2>
            <h4>Podrás registrarte cuando quieras de nuevo</h4>
            <p>Entendemos que puedas sentirte cansado o simplemente desmotivado, esperamos puedas regresar pronto. Seguiremos trabajando para darte el mejor servicio.</p>
            <a href="../../../index.jsp">Ir al inicio</a>
        </div>
    </div>
</body>
</html>
