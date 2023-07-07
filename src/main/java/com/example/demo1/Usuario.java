package com.example.demo1;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Usuario implements Validarusuario {

    private String nombre;
    private String email;
    private String telefono;

    @Override
    public boolean validarUsuario(String user, String pass) {



        if (Validarusuario.USER.equals(user) && Validarusuario.PASS.equals(pass)){
            return true;
        }else{
            return false;
        }
    }
}
