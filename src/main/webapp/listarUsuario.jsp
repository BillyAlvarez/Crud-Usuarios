<%@ page import="java.util.ArrayList" %>
<%@ page import="cl.modelos.Usuario" %>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%
  request.getRequestDispatcher("ValidarSession").include(request, response);
%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Listar Usuarios</title>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
</head>
<body>
<div class="container">
  <%@include file="navbar.jsp"%>
  <h1>Usuarios</h1>
  <table class="table table-striped">
    <thead>
    <tr>
      <th>Id</th>
      <th>Nombre</th>
      <th>Apellido</th>
      <th>Email</th>
      <th>Teléfono</th>
      <th>Fecha de Creación</th>
      <th>Acciones</th>
    </tr>
    </thead>
    <tbody>
    <% List<Usuario> usuarios = (List<Usuario>) request.getAttribute("usuarios"); %>
    <% for (Usuario usuario : usuarios) { %>
    <tr>
      <td><%= usuario.getId() %></td>
      <td><%= usuario.getNombre() %></td>
      <td><%= usuario.getApellido() %></td>
      <td><%= usuario.getEmail() %></td>
      <td><%= usuario.getTelefono() %></td>
      <td><%= usuario.getFechaCreacionCuenta() %></td>
      <td>
        <a href="EditarUsuario?id=<%= usuario.getId() %>" class="btn btn-primary btn-sm">Editar</a>
        <a href="EliminarUsuario?id=<%= usuario.getId() %>" class="btn btn-danger btn-sm">Eliminar</a>
      </td>
    </tr>
    <% } %>
    </tbody>
  </table>
  <div class="text-right"><br>
    <a href="crearUsuario.jsp" class="btn btn-primary">Agregar nuevo usuario</a>
  </div><br>
  <%@include file="footer.jsp"%>
</div>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js" integrity="sha384-fbbOQedDUMZZ5KreZpsbe1LCZPVmfTnH7ois6mU1QK+m14rQ1l2bGBq41eYeM/fS" crossorigin="anonymous"></script>
</body>

</html>
