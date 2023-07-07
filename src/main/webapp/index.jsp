<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    request.getRequestDispatcher("ValidarSession").include(request, response);
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Bienvenido</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <h1>Bienvenido</h1>
    <p>Seleccione una opción:</p>
    <div class="list-group">
        <a href="/demo1_war_exploded/GoToAddUser" class="list-group-item">Crear Usuario</a>
        <a href="/demo1_war_exploded/GoToListUsers" class="list-group-item">Listar Usuarios</a>
        <a href="editarUsuario" class="list-group-item">Editar Usuario</a>
        <a href="eliminarUsuario" class="list-group-item">Eliminar Usuario</a>
    </div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</body>
</html>
