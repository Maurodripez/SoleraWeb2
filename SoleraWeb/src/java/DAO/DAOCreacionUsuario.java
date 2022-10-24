package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import Modelo.Conexion;
import java.sql.SQLException;
import java.util.ArrayList;
import Modelo.ModeloCreacionUsuario;
import java.util.List;

public class DAOCreacionUsuario {
    Conexion conect = new Conexion();
    PreparedStatement ps;
    ResultSet rs;
    String sql;

    public String crearUsuario(String usuario, String password, String privilegio) {
        String respuesta;
        try {
            sql = "insert into usuarios(usuario,contrasena, privilegios) values(?,?,?)";
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            ps.setString(1, usuario);
            ps.setString(2, password);
            ps.setString(3, privilegio);
            ps.executeUpdate();
            respuesta = "Creacion exitosa";
        } catch (SQLException e) {
            // TODO: handle exception
            respuesta = "Error al crear usuario";
        }
        return respuesta;
    }

    public List<ModeloCreacionUsuario> getUsuarios() {
        List<ModeloCreacionUsuario> lista = new ArrayList<>();
        try {
            sql = "select idUsuarios, usuario, contrasena, privilegios from usuarios";
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                ModeloCreacionUsuario cUsuario = new ModeloCreacionUsuario();
                cUsuario.setId(rs.getString("idUsuarios"));
                cUsuario.setUsuario(rs.getString("usuario"));
                cUsuario.setPassword(rs.getString("contrasena"));
                cUsuario.setPrivilegio(rs.getString("privilegios"));
                lista.add(cUsuario);
            }
        } catch (SQLException e) {
            // TODO: handle exception
        }
        return lista;
    }

    public List<ModeloCreacionUsuario> cargarUsuario(String id) {
        List<ModeloCreacionUsuario> lista = new ArrayList<>();
        try {
            sql = "select idUsuarios, usuario, contrasena, privilegios from usuarios where idUsuarios=?";
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                ModeloCreacionUsuario mcUsuario = new ModeloCreacionUsuario();
                mcUsuario.setId(rs.getString("idUsuarios"));
                mcUsuario.setUsuario(rs.getString("usuario"));
                mcUsuario.setPassword(rs.getString("contrasena"));
                mcUsuario.setPrivilegio(rs.getString("privilegios"));
                lista.add(mcUsuario);
            }
        } catch (SQLException e) {
            // TODO: handle exception
        }
        return lista;
    }

    public String editarUsuario(String id, String usuario, String password, String privilegio) {
        String respuesta;
        try {
            sql = "update usuarios set usuario=?, contrasena=?, privilegios=? where idUsuarios=?";
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            ps.setString(1, usuario);
            ps.setString(2, password);
            ps.setString(3, privilegio);
            ps.setString(4, id);
            ps.executeUpdate();
            respuesta = "Actualizacion exitosa";
        } catch (SQLException e) {
            // TODO: handle exception
            respuesta = "Error al crear usuario";
        }
        return respuesta;
    }

    public int usuarioExiste(String usuario) {
        int contador = 0;
        try {
            sql = "select usuario from usuarios where usuario=?";
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            ps.setString(1, usuario);
            rs = ps.executeQuery();
            while (rs.next()) {
                contador += 1;
            }
        } catch (SQLException e) {
            // TODO: handle exception
        }
        return contador;
    }

    public String EliminarUsuario(String id) {
        String respuesta;
        try {
            sql = "DELETE FROM usuarios WHERE idUsuarios =?;";
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            ps.setString(1, id);
            ps.executeUpdate();
            respuesta = "Eliminado con exito";
        } catch (SQLException e) {
            respuesta = "Error al eliminar";
        }
        return respuesta;
    }
}
