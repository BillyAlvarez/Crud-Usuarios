<%@ page import="java.util.ArrayList" %>
<%@ page import="com.example.demo1.Usuario" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>


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
      <th>Nombre</th>
      <th>Email</th>
      <th>Teléfono</th>
    </tr>
    </thead>
    <tbody>
    <% ArrayList<Usuario> usuarios = (ArrayList<Usuario>)request.getAttribute("listaUsuarios");%>
    <% for (Usuario usuario : usuarios) { %>
    <tr>

      <td><%= usuario.getNombre() %></td>
      <td><%= usuario.getEmail() %></td>
      <td><%= usuario.getTelefono() %></td>
    </tr>
    <% } %>
    </tbody>
  </table>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
</body>
</html>
