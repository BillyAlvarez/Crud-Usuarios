<%@ page import="cl.modelos.Usuario" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>


<html>
<head>
    <title>Editar Usuario</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <%@include file="navbar.jsp"%>
    <h1>Editar Usuario</h1>
    <% Usuario usuario = (Usuario) request.getAttribute("usuarios"); %>
    <form action="ActualizarUsuario" method="POST">
        <input type="hidden" name="id" value="<%= usuario.getId() %>">
        <div class="form-group">
            <label>Nombre:</label>
            <input type="text" class="form-control" name="nombre" value="<%= usuario.getNombre() %>">
        </div>
        <div class="form-group">
            <label>apellido:</label>
            <input type="text" class="form-control" name="apellido" value="<%= usuario.getApellido() %>">
        </div>
        <div class="form-group">
            <label>Email:</label>
            <input type="text" class="form-control" name="email" value="<%= usuario.getEmail() %>">
        </div>
        <div class="form-group">
            <label>Telefono:</label>
            <input type="text" class="form-control" name="telefono" value="<%= usuario.getTelefono() %>">
        </div>
        <div class="form-group">
            <label>Fecha Creacion:</label>
            <input type="text" class="form-control" name="fechaCreacionCuenta" value="<%= usuario.getFechaCreacionCuenta() %>">
        </div><div><br></div>
        <button type="submit" class="btn btn-primary">Actualizar</button>
    </form>
    <%@include file="footer.jsp"%>
</div>

<!-- Agregar los scripts de JavaScript de Bootstrap al final del documento -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js" integrity="sha384-fbbOQedDUMZZ5KreZpsbe1LCZPVmfTnH7ois6mU1QK+m14rQ1l2bGBq41eYeM/fS" crossorigin="anonymous"></script>
</body>

</html>

