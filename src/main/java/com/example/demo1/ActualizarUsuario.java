package com.example.demo1;

import cl.daos.UsuarioDAO;
import cl.modelos.Usuario;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.List;

@WebServlet(name = "ActualizarUsuario", value = "/ActualizarUsuario")
public class ActualizarUsuario extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String nombre = request.getParameter("nombre");
        String apellido = request.getParameter("apellido");
        String email = request.getParameter("email");
        String telefono = request.getParameter("telefono");
        String fechaCreacionCuenta = request.getParameter("fechaCreacionCuenta");

        Usuario usuario = new Usuario();
        usuario.setId(id);
        usuario.setNombre(nombre);
        usuario.setApellido(apellido);
        usuario.setEmail(email);
        usuario.setTelefono(telefono);
        usuario.setFechaCreacionCuenta(fechaCreacionCuenta);

        UsuarioDAO usuarioDAO = UsuarioDAO.getInstancia();
        usuarioDAO.actualizarUsuario(usuario);


        List<Usuario> usuarios = usuarioDAO.obtenerUsuarios();

        request.setAttribute("usuarios", usuarios);
        request.getRequestDispatcher("listarUsuario.jsp").forward(request, response);

    }
}