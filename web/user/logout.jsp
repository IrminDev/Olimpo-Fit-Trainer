<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<!DOCTYPE html>
<html>
<head>
    <title>Cerrar sesión</title>
    <link rel="stylesheet" type="text/css" href="stylelo.css">
</head>
<body>
    <div id="container">
        <div class="content">
            <%
                HttpSession objSesion = request.getSession();
                objSesion.invalidate();
            %>
            <h2>Nos vemos <span>usuario</span></h2>
            <h4>Esperamos que regreses pronto :)</h4>
            <p>Recuerda mantener una rutina constante para no perder el ritmo, esperamos que mañana regreses con toda la energía.</p>
        </div>
    </div>
    <%
        out.print("<script>location.replace('../index.jsp');</script>");
    %>
</body>
</html>

