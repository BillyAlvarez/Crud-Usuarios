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
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
</head>
<body>
<div class="container">
  <h1>Listar Usuarios</h1>
  <table class="table table-striped">
    <thead>
    <tr>
      <th>Id</th>
      <th>Nombre</th>
      <th>Apellido</th>
      <th>Email</th>
      <th>Teléfono</th>
      <th>fecha de Creacion</th>

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
    </tr>
    <% } %>
    </tbody>
  </table>
  <div class="text-right">
    <a href="crearUsuario.jsp" class="btn btn-primary">Agregar nuevo usuario</a>
  </div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</body>
</html>
