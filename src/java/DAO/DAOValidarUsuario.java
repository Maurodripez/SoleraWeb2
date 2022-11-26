package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import Modelo.Conexion;
import java.sql.SQLException;

public class DAOValidarUsuario {
    public String ValidarUsuario(String usuario) {
        String respuesta = null;
        Conexion conect = new Conexion();
        PreparedStatement ps;
        ResultSet rs;
        try {
            String sql = "select privilegios from usuarios where usuario =?";
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            ps.setString(1, usuario);
            rs = ps.executeQuery();
            while (rs.next()) {
                respuesta = rs.getString("privilegios");
            }
        } catch (SQLException e) {
            // TODO: handle exception
        }
        return respuesta;
    }
}
