package DAO;

import java.sql.PreparedStatement;

import Modelo.Conexion;

public class DAOGuardarImagenes {
    Conexion conect = new Conexion();
    PreparedStatement ps = null;
    public String respuesta = "nada";

    public int guardarImagen(String nombre, String rutaImagen, String fkGuardar, String nombreOriginal) {
        int rs = 0;
        try {
            conect.conectar();
            String sql = "insert into imagenes values(null,?,?,?, now(),?)";
            ps = conect.conexion.prepareStatement(sql);
            ps.setString(1, nombre);
            ps.setString(2, rutaImagen);
            ps.setString(3, fkGuardar);
            ps.setString(4, nombreOriginal);
            rs = ps.executeUpdate();
            conect.Desconectar();
            sql = "update fechasseguimiento set fechaPrimerEnvioDoc=now() where fkidRegistro='"+fkGuardar+"'";
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            ps.executeUpdate();
            respuesta = "Imagen guardada";
        } catch (Exception e) {
            respuesta = "error al guardar";
        }
        return rs;
    }
}
