package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import Modelo.Conexion;
import Modelo.ModeloTablamensajes;
import java.sql.SQLException;
import java.util.List;

public class GuardarComentarios {

    public String Guardarcoments(String comentario, String id) {
        String respuesta;
        String usuario = null;
        try {
            Conexion conect = new Conexion();
            PreparedStatement ps;
            ResultSet rs;
            String sql = "select asegurado from infocliente,infosiniestro where idRegistro='" + id
                    + "' and fkIdRegistro='" + id + "'";
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                usuario = rs.getString("asegurado");
            }
            conect.Desconectar();
            sql = "insert into mensajesseguimientos(mensajes,usuario,fechaMensaje,fkmensgSeguimientos) values('"
                    + comentario + "','" + usuario + "',curdate(),'" + id + "')";
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            ps.executeUpdate();
            respuesta = "Mensaje enviado";
        } catch (SQLException e) {
            // TODO: handle exception
            respuesta = "Error al enviar mensaje";
        }
        return respuesta;
    }

    public List<ModeloTablamensajes> getMensajes(String id) {
        List<ModeloTablamensajes> lista = new ArrayList<>();
        Conexion conect = new Conexion();
        PreparedStatement ps;
        ResultSet rs;
        String sql = "select usuario, mensajes,fechaMensaje from infocliente, mensajesseguimientos where fkIdRegistro = '"
                + id + "' and fkmensgSeguimientos = '" + id + "'";
        try {
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                ModeloTablamensajes mtImagenes = new ModeloTablamensajes();
                mtImagenes.setComentario(rs.getString("mensajes"));
                mtImagenes.setFechaComentario(rs.getString("fechaMensaje"));
                mtImagenes.setUsuario(rs.getString("usuario"));
                lista.add(mtImagenes);
            }
        } catch (SQLException e) {
            // TODO: handle exception
        }
        return lista;
    }
}
