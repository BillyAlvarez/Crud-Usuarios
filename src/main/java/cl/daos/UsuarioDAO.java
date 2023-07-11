package cl.daos;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.sql.DriverManager;

import cl.modelos.Usuario;

public class UsuarioDAO {
    private static UsuarioDAO instancia;
    private Connection conexion;

    private String date = new Date().toString();
    private UsuarioDAO() {
        // Establecer la conexión a la base de datos en el constructor privado
        // Usar Singleton para asegurar que solo haya una instancia de UsuarioDAO
        // y una única conexión a la base de datos en todo el proyecto
        conexion = obtenerConexion(); // Implementar este método
    }

    public static UsuarioDAO getInstancia() {
        if (instancia == null) {
            instancia = new UsuarioDAO();
        }
        return instancia;
    }

    // Métodos CRUD

    public List<Usuario> obtenerUsuarios() {
    	
        List<Usuario> usuarios = new ArrayList<>();
        String consulta = "SELECT id, nombre, apellido,email,telefono,fechaCreacionCuenta FROM usuarios";

        try (
        	 PreparedStatement statement = conexion.prepareStatement(consulta);
        		
             ResultSet resultSet = statement.executeQuery()) {

            while (resultSet.next()) {
                Usuario usuario = new Usuario();
                usuario.setId(resultSet.getInt("id"));
                usuario.setNombre(resultSet.getString("nombre"));
                usuario.setApellido(resultSet.getString("apellido"));
                usuario.setEmail(resultSet.getString("email"));
                usuario.setTelefono(resultSet.getString("telefono"));
                usuario.setFechaCreacionCuenta(resultSet.getString("fechaCreacionCuenta"));

                usuarios.add(usuario);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return usuarios;
    }

    public Usuario obtenerUsuarioPorId(int id) {
        Usuario usuario = null;
        String consulta = "SELECT id, nombre,apellido, email,telefono,fechaCreacionCuenta FROM usuarios WHERE id = ?";

        try (PreparedStatement statement = conexion.prepareStatement(consulta)) {
            statement.setInt(1, id);

            try (ResultSet resultSet = statement.executeQuery()) {
                if (resultSet.next()) {
                    usuario = new Usuario();
                    usuario.setId(resultSet.getInt("id"));
                    usuario.setNombre(resultSet.getString("nombre"));
                    usuario.setApellido(resultSet.getString("apellido"));
                    usuario.setEmail(resultSet.getString("email"));
                    usuario.setTelefono(resultSet.getString("telefono"));
                    usuario.setFechaCreacionCuenta(resultSet.getString("fechaCreacionCuenta"));


                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return usuario;
    }

    public void agregarUsuario(Usuario usuario) {
        String consulta = "INSERT INTO usuarios (nombre,apellido email,telefono,fechaCreacionCuenta) VALUES (?, ?,?,?,?)";

        try (
        		
        	PreparedStatement statement = conexion.prepareStatement(consulta)) {
            statement.setString(1, usuario.getNombre());
            statement.setString(2, usuario.getApellido());
            statement.setString(3, usuario.getEmail());
            statement.setString(4, usuario.getTelefono());
            statement.setString(5, usuario.getFechaCreacionCuenta());


            statement.executeUpdate();
            
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void actualizarUsuario(Usuario usuario) {
        String consulta = "UPDATE usuarios SET nombre = ?,apellido = ?, email =? , telefono = ? , fechaCreacionCuenta = ? = WHERE id = ?";

        try (PreparedStatement statement = conexion.prepareStatement(consulta)) {
            statement.setString(1, usuario.getNombre());
            statement.setString(2, usuario.getApellido());
            statement.setString(3, usuario.getEmail());
            statement.setString(4, usuario.getTelefono());
            statement.setString(5, usuario.getFechaCreacionCuenta());
            statement.setInt(6, usuario.getId());

            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void eliminarUsuario(int id) {
        String consulta = "DELETE FROM usuarios WHERE id = ?";

        try (PreparedStatement statement = conexion.prepareStatement(consulta)) {
            statement.setInt(1, id);
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

   

    private Connection obtenerConexion() {
        Connection conexion = null;

        try {
            // Cargar el driver de mysql
            Class.forName("com.mysql.cj.jdbc.Driver");

            // Establecer los detalles de la conexión
            String url = "jdbc:mysql://localhost:3306/capacitaciones";
            String usuario = "root";
            String contrasena = "root";

            // Establecer la conexión
            conexion = DriverManager.getConnection(url, usuario, contrasena);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return conexion;
    }
}