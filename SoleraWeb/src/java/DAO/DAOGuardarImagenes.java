package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import Modelo.Conexion;
import Modelo.ModeloGuardarImagen;

public class DAOGuardarImagenes {
    Conexion conect = new Conexion();
    PreparedStatement ps = null;
    String respuesta = "";

    public int guardarImagen(ModeloGuardarImagen mgImagen) {
        int rs = 0;
        try {
            conect.conectar();
            String sql = "insert into imagenes values(null,?,?)";
            ps = conect.conexion.prepareStatement(sql);
            ps.setString(1, mgImagen.getNombreImagen());
            ps.setString(2, mgImagen.getRutaImagen());
            rs = ps.executeUpdate();
            respuesta = "Imagen guardada";
        } catch (Exception e) {
            respuesta = "error al guardar";
        }
        return rs;
    }
}
