
package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Modelo.Conexion;
import Modelo.UsuariosModelo;

public class LoginDAO {
    Conexion conect = new Conexion();
    PreparedStatement pStatement;
    ResultSet rs;

    public boolean InicioSesion(UsuariosModelo uModelo) {// se realiza la conexion para la base de datos y el login
        boolean sesionExitosa = false;// si no es valido el usuario o contrasena, no cambia a true
        String sql = "select count(usuario) as cantidad, contrasena, privilegios from usuarios where usuario=? and contrasena=?";
        // se realiza la consulta de sql para validar el usuario y contrasena
        try {
            conect.conectar();// se realiza la conexion a la BD
            pStatement = conect.conexion.prepareStatement(sql);
            pStatement.setString(1, uModelo.getUsuario());// obtenemos los valores del usuario y contrasena
            pStatement.setString(2, uModelo.getContrasena());
            rs = pStatement.executeQuery();
            while (rs.next()) {
                sesionExitosa = rs.getInt("cantidad") > 0; // si se cumple con la sentencia anterior, entra al if y se
                                                           // cambia la
                // sesion en true
                uModelo.setPrivilegios(rs.getString("privilegios"));
            }
            return sesionExitosa;
        } catch (SQLException e) {
            System.err.println(e);
            return sesionExitosa;
        }
    }
}
