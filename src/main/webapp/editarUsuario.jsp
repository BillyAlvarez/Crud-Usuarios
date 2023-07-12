<%@ page import="cl.modelos.Usuario" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>


<html>
<head>
    <title>Editar Usuario</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
</head>
<body>
<div class="container">
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
        </div>
        <button type="submit" class="btn btn-primary">Actualizar</button>
    </form>
</div>
<!-- Agregar los scripts de JavaScript de Bootstrap al final del documento -->
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>

