package com.example.demo1;

import cl.daos.UsuarioDAO;
import cl.modelos.Usuario;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "GuardarUsuario", value = "/GuardarUsuario")
public class GuardarUsuario extends HttpServlet {

    ArrayList<Usuario> listaUsuarios = new ArrayList<>();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nombre = request.getParameter("nombre");
        String email = request.getParameter("email");
        String apellido = request.getParameter("apellido");
        String telefono = request.getParameter("telefono");
        String fechaCreacion = request.getParameter("fechaCreacion");


        Usuario usuario = new Usuario();
        usuario.setNombre(nombre);
        usuario.setApellido(apellido);
        usuario.setEmail(email);
        usuario.setTelefono(telefono);
        usuario.setFechaCreacionCuenta(fechaCreacion);

        UsuarioDAO usuarioDAO = UsuarioDAO.getInstancia();
        usuarioDAO.agregarUsuario(usuario);


        List<Usuario> usuarios = usuarioDAO.obtenerUsuarios();

        request.setAttribute("usuarios", usuarios);
        request.getRequestDispatcher("listarUsuario.jsp").forward(request, response);
    }
}