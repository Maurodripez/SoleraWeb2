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
    public String respuesta = "perro";

    public String actualizarDocsAprobados(ModeloDocumentos mDocumentos) {
        String sql = "update documentosaprobados set identificacionOficial =?, comprobanteDeDomicilio =?,"
                + " informacionAdicional =?, facturaDelVehiculo =?, tenencias =?, baja =?,"
                + " estadodeCuenta =?,  denuncia =?, acreditacion =? where fkIdRegistroDocsAprobados = ?";
        try {
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            ps.setString(1, mDocumentos.getIdentificacion());
            ps.setString(2, mDocumentos.getComprobante());
            ps.setString(3, mDocumentos.getInfoAdicional());
            ps.setString(4, mDocumentos.getFactura());
            ps.setString(5, mDocumentos.getTenencias());
            ps.setString(6, mDocumentos.getBaja());
            ps.setString(7, mDocumentos.getEstadoDeCuenta());
            ps.setString(8, mDocumentos.getDenuncia());
            ps.setString(9, mDocumentos.getAcreditacion());
            ps.setString(10, mDocumentos.getId());
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
                mDocumentos.setIdentificacion(rs.getString("identificacionOficial"));
                mDocumentos.setComprobante(rs.getString("comprobanteDeDomicilio"));
                mDocumentos.setInfoAdicional(rs.getString("informacionAdicional"));
                mDocumentos.setFactura(rs.getString("facturaDelVehiculo"));
                mDocumentos.setTenencias(rs.getString("tenencias"));
                mDocumentos.setBaja(rs.getString("baja"));
                mDocumentos.setEstadoDeCuenta(rs.getString("estadodeCuenta"));
                mDocumentos.setDenuncia(rs.getString("denuncia"));
                mDocumentos.setAcreditacion(rs.getString("acreditacion"));
                lista.add(mDocumentos);
            }
            respuesta = "mostrar correcto";
        } catch (Exception e) {
            respuesta = "Error al mostrar";
        }
        return lista;
    }
}
