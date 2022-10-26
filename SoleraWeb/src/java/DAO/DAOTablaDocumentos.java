package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Modelo.Conexion;
import Modelo.ModeloGuardarImagen;

//se obtienen los resultados de las imagenes para mostrarlos en la tabla
public class DAOTablaDocumentos {
    public List<ModeloGuardarImagen> getDocumentos(String idRegistro) {
        List<ModeloGuardarImagen> lista = new ArrayList<>();
        String respuesta;
        try {
            Conexion conect = new Conexion();
            PreparedStatement ps;
            conect.conectar();
            String sql = "select idimagenes, nombreImagen, fkImagen, nombreOriginal, imagenes.fechaCarga from imagenes, infosiniestro where idRegistro=? and fkImagen = ?";
            ps = conect.conexion.prepareStatement(sql);
            ps.setString(1, idRegistro);
            ps.setString(2, idRegistro);
            ResultSet rs = ps.executeQuery();

            ModeloGuardarImagen mgImagen;
            while (rs.next()) {
                mgImagen = new ModeloGuardarImagen();
                mgImagen.setIdImagen(rs.getString("idimagenes"));
                mgImagen.setNombreImagen(rs.getString("NombreImagen"));
                mgImagen.setNombreOriginal(rs.getString("nombreOriginal"));
                mgImagen.setFechaCarga(rs.getString("fechaCarga"));
                mgImagen.setFkImagen(rs.getString("fkImagen"));
                lista.add(mgImagen);
                respuesta = "correcto";
            }
        } catch (Exception e) {
            // TODO: handle exception
            respuesta = "error";
        }
        return lista;

    }

    public String EliminarImagen(String idImagen) {
        try {

            Conexion conect = new Conexion();
            PreparedStatement ps;
            conect.conectar();
            String sql = "delete from imagenes where idimagenes=?";//se ejecuta la funcion sql para eliminar el registro
            ps = conect.conexion.prepareStatement(sql);
            ps.setString(1, idImagen);
            ps.executeUpdate();
            return "registro eliminado con exito";
        } catch (Exception e) {
            // TODO: handle exception
            return "Error al eliminar registro";
        }
    }
}
