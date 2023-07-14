<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    request.getRequestDispatcher("ValidarSession").include(request, response);
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Crear Usuario</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <%@include file="navbar.jsp"%>
    <h1>Crear Usuario</h1>
    <form action="GuardarUsuario" method="post">
        <div class="form-group">
            <label for="nombre">Nombre:</label>
            <input type="text" name="nombre" id="nombre" class="form-control" required>
        </div>
        <div class="form-group">
            <label for="nombre">Apellido:</label>
            <input type="text" name="apellido" id="apellido" class="form-control" required>
        </div>
        <div class="form-group">
            <label for="email">Email:</label>
            <input type="email" name="email" id="email" class="form-control" required>
        </div>
        <div class="form-group">
            <label for="telefono">Teléfono:</label>
            <input type="text" name="telefono" id="telefono" class="form-control" required>
        </div>
        <div class="form-group">
            <label for="fechaCreacion">Fecha Creacion:</label>
            <input type="date" name="fechaCreacion" id="fechaCreacion" class="form-control" required>
        </div><br>
        <button type="submit" class="btn btn-primary">Guardar</button>
    </form><br>
    <%@include file="footer.jsp"%>
</div>


<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js" integrity="sha384-fbbOQedDUMZZ5KreZpsbe1LCZPVmfTnH7ois6mU1QK+m14rQ1l2bGBq41eYeM/fS" crossorigin="anonymous"></script>
</body>

</html>
