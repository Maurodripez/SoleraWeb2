package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Modelo.Conexion;
import Modelo.ModeloGuardarImagen;
import java.sql.SQLException;

//se obtienen los resultados de las imagenes para mostrarlos en la tabla
public class DAOTablaDocumentos {

    public List<ModeloGuardarImagen> getDocumentos(String idRegistro) {
        List<ModeloGuardarImagen> lista = new ArrayList<>();
        String respuesta = "No inicia";
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
        String r = "0";
        try {
            Conexion conect = new Conexion();
            PreparedStatement ps;
            String nombreImagen = null;
            String idRegistro = null;
            ResultSet rs;
            conect.conectar();
            String sql = "select nombreImagen,fkImagen from imagenes where idimagenes='" + idImagen + "'";
            ps = conect.conexion.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                nombreImagen = rs.getString("nombreImagen");
                idRegistro = rs.getString("fkImagen");
            }
            conect.Desconectar();
            switch (nombreImagen) {
                case "Poder notarial":
                    sql = "update documentosaprobados set poder='false'";
                    break;
                case "Factura original":
                    sql = "update documentosaprobados set factura='false'";
                    break;
                case "Identificacion oficial":
                    sql = "update documentosaprobados set identificacion='false'";
                    break;
                case "Situacion fiscal":
                    sql = "update documentosaprobados set situacion='false'";
                    break;
                case "Curp":
                    sql = "update documentosaprobados set curp='false'";
                    break;
                case "Estado de cuenta":
                    sql = "update documentosaprobados set estadoDoc='false'";
                    break;
                case "Tenencia":
                    sql = "update documentosaprobados set tenencia='false'";
                    break;
                case "Baja de placas":
                    sql = "update documentosaprobados set baja='false'";
                    break;
                case "Tarjeta circulacion":
                    sql = "update documentosaprobados set tarjeta='false'";
                    break;
                case "Poliza":
                    sql = "update documentosaprobados set polizaDoc='false'";
                    break;
                case "Comprobante domicilio":
                    sql = "update documentosaprobados set comprobante='false'";
                    break;
                default:
                    break;
            }
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            ps.executeUpdate();
            conect.Desconectar();
            sql = "select count(fkImagen) as conteo from imagenes where fkImagen='" + idRegistro + "'";
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            rs = ps.executeQuery();
            int conteo = 0;
            while (rs.next()) {
                conteo = rs.getInt("conteo");
            }
            conect.Desconectar();
            sql = "update fechasseguimiento set fechaPrimerEnvioDoc=null where fkidRegistro='" + idRegistro + "'";
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            ps.executeUpdate();
            conect.Desconectar();
            sql = "delete from imagenes where idimagenes=?";// se ejecuta la funcion sql para eliminar el registro
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            ps.setString(1, idImagen);
            ps.executeUpdate();
            r = "4 registro eliminado con exito";
        } catch (SQLException e) {
            // TODO: handle exception
            r = "Error al eliminar registro";
        }
        return r;
    }
}
