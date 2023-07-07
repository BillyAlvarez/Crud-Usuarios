package com.example.demo1;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import javax.net.ssl.HandshakeCompletedEvent;
import java.io.IOException;

@WebServlet(name = "ValidarSession", value = "/ValidarSession")
public class ValidarSession extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
          boolean sessionActiva = (boolean)session.getAttribute("sessionActiva");

        if (!sessionActiva){
         response.sendRedirect("login.jsp");
//            request.getRequestDispatcher("login.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}