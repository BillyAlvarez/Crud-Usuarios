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

@WebServlet(name = "EditarUsuario", value = "/EditarUsuario")
public class EditarUsuario extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));

        UsuarioDAO usuarioDAO = UsuarioDAO.getInstancia();
        Usuario usuario = usuarioDAO.obtenerUsuarioPorId(id);

        request.setAttribute("usuarios", usuario);
        request.getRequestDispatcher("editarUsuario.jsp").forward(request, response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}