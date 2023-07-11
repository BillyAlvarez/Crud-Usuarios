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

@WebServlet(name = "GoToListUsers", value = "/GoToListUsers")
public class GoToListUsers extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        UsuarioDAO usuarioDAO = UsuarioDAO.getInstancia();

        List<Usuario> usuarios = usuarioDAO.obtenerUsuarios();

        request.setAttribute("usuarios", usuarios);

        request.getRequestDispatcher("listarUsuario.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}