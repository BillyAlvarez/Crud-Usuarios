package com.example.demo1;

import cl.modelos.Usuario;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet(name = "AutenticarUsuario", value = "/AutenticarUsuario")
public class AutenticarUsuario extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String user = request.getParameter("username");
        String pass = request.getParameter("password");

        Usuario usuario = new Usuario();
        if (usuario.validarUsuario(user,pass)){
            //crea una session Activa valida si la autenticacion es correcta
            boolean sessionActiva = true;
            HttpSession session = request.getSession();
            session.setAttribute("sessionActiva", sessionActiva);
            //envia a la pagina index.jsp
            request.getRequestDispatcher("index.jsp").forward(request, response);
        }else{
            // Establece un atributo de mensaje de error en el objeto request
            request.setAttribute("errorMensaje", "Usuario o contraseña incorrectos");
            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }

}