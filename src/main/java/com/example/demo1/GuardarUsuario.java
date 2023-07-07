package com.example.demo1;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;



import java.io.IOException;
import java.util.ArrayList;

@WebServlet(name = "GuardarUsuario", value = "/GuardarUsuario")
public class GuardarUsuario extends HttpServlet {

    ArrayList<Usuario> listaUsuarios =  new ArrayList<>();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String nombre = request.getParameter("nombre");
        String email =request.getParameter("email");
        String telefono = request.getParameter("telefono");

        request.setAttribute("nombre", nombre);
        request.setAttribute("email", email);
        request.setAttribute("telefono", telefono);

        Usuario usuario;
        usuario = new Usuario(nombre, email, telefono);
        listaUsuarios.add(usuario);
        request.setAttribute("listaUsuarios", listaUsuarios);


        request.getRequestDispatcher("listarUsuario.jsp").forward(request, response);
    }
}