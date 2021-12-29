<%-- 
    Document   : logout
    Created on : 21/05/2021, 12:09:33 PM
    Author     : LENOVO
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Cerrar sesión</title>
    <link rel="stylesheet" type="text/css" href="../CssAd/stulecs.css">
</head>
<body>
    <%
        HttpSession objSesion = request.getSession();
        objSesion.invalidate();
    %>
    <div id="container">
        <div class="content">
            <h2>Nos vemos <span>usuario</span></h2>
            <h4>Esperamos que regreses pronto :)</h4>
            <p>Recuerda que en cualquier momento puedes seguir administrando esta aplicación web</p>
        </div>
    </div>
    <%
        out.print("<script>location.replace('../index.jsp');</script>");
    %>
</body>
</html>