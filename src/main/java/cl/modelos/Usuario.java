package cl.modelos;

import com.example.demo1.Validarusuario;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class Usuario implements Validarusuario {

    private int id;
    private String nombre;
    private String apellido;
    private String email;
    private String telefono;
    private String fechaCreacionCuenta;


    @Override
    public boolean validarUsuario(String user, String pass) {
        return Validarusuario.USER.equals(user) && Validarusuario.PASS.equals(pass);
    }
}
