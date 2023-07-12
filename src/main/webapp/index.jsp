<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
    request.getRequestDispatcher("ValidarSession").include(request, response);
%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <title>Bienvenido</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>
<div class="container">
    <%@include file="navbar.jsp"%>
    <h1>Bienvenido</h1>
    <p>Seleccione una opción:</p>
    <div class="list-group">
        <a href="/demo1_war_exploded/GoToAddUser" class="list-group-item">Crear Usuario</a>
        <a href="/demo1_war_exploded/GoToListUsers" class="list-group-item">Mostrar Usuarios</a>

<%--        <a href="editarUsuario" class="list-group-item">Editar Usuario</a>--%>
<%--        <a href="eliminarUsuario" class="list-group-item">Eliminar Usuario</a>--%>

    </div>
    <div><br></div>
    <%@include file="footer.jsp"%>
</div>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js" integrity="sha384-fbbOQedDUMZZ5KreZpsbe1LCZPVmfTnH7ois6mU1QK+m14rQ1l2bGBq41eYeM/fS" crossorigin="anonymous"></script>
</body>

</html>
