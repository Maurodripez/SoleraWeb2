package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Modelo.Conexion;
import Modelo.ModeloDocumentos;

public class MostrarDocumentosEstados {
    Conexion conect = new Conexion();
    PreparedStatement ps;
    public String respuesta;
    ResultSet rs;

    public String actualizarDocsAprobados(ModeloDocumentos mDocumentos) {
        String sql = "update documentosaprobados set factura =?, poder =?,"
                + " identificacion =?, situacion =?, curp =?, estadoDoc =?,"
                + " tenencia =?,  baja =?, tarjeta =?, polizaDoc=?, comprobante=? where fkIdRegistroDocsAprobados = ?";
        try {
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            ps.setString(1, mDocumentos.getFactura());
            ps.setString(2, mDocumentos.getPoder());
            ps.setString(3, mDocumentos.getIdentificacion());
            ps.setString(4, mDocumentos.getSituacion());
            ps.setString(5, mDocumentos.getCurp());
            ps.setString(6, mDocumentos.getEstado());
            ps.setString(7, mDocumentos.getTenencia());
            ps.setString(8, mDocumentos.getBaja());
            ps.setString(9, mDocumentos.getTarjeta());
            ps.setString(10, mDocumentos.getPoliza());
            ps.setString(11, mDocumentos.getComprobante());
            ps.setString(12, mDocumentos.getId());
            ps.executeUpdate();
            respuesta = "actualizacion correcta";
        } catch (Exception e) {

            respuesta = "Error al actualizar";
        }
        return respuesta;
    }

    public List<ModeloDocumentos> mostrarDocsAprobados(String id) {
        List<ModeloDocumentos> lista = new ArrayList<>();
        String sql = "select * from documentosaprobados where fkIdRegistroDocsAprobados=" + id + "";
        ModeloDocumentos mDocumentos = new ModeloDocumentos();
        try {
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                mDocumentos.setFactura(rs.getString("factura"));
                mDocumentos.setPoder(rs.getString("poder"));
                mDocumentos.setIdentificacion(rs.getString("identificacion"));
                mDocumentos.setSituacion(rs.getString("situacion"));
                mDocumentos.setCurp(rs.getString("curp"));
                mDocumentos.setEstado(rs.getString("estadoDoc"));
                mDocumentos.setTenencia(rs.getString("tenencia"));
                mDocumentos.setBaja(rs.getString("baja"));
                mDocumentos.setTarjeta(rs.getString("tarjeta"));
                mDocumentos.setPoliza(rs.getString("polizaDoc"));
                mDocumentos.setComprobante(rs.getString("comprobante"));
                lista.add(mDocumentos);
            }
            respuesta = "mostrar correcto";
        } catch (Exception e) {
            respuesta = "Error al mostrar";
        }
        return lista;
    }

    public String docsYaCargados(String id) {
        String respuesta="";
        try {
            String sql = "select nombreImagen from imagenes where fkImagen='" + id + "'";
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                respuesta += rs.getString("nombreImagen")+"-_/";
            }
        } catch (Exception e) {
            respuesta = "error al ejecutar";
            // TODO: handle exception
        }
        return respuesta;
    }
}
