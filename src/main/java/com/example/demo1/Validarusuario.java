package com.example.demo1;

public interface Validarusuario {
    static String USER = "Admin";
    static String PASS = "1234";

    boolean validarUsuario(String user, String pass);
}
