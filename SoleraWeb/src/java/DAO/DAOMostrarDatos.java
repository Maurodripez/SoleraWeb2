package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Modelo.Conexion;
import Modelo.ModeloBusquedaDatos;

public class DAOMostrarDatos {
    Conexion conect = new Conexion();
    PreparedStatement ps;
    public String respuesta = "inicio";

    public List<ModeloBusquedaDatos> obtenerDatos(String fechaBuscar1, String estacion, String estatus,
            String subEstatus,
            String fechaBuscar2, String region, String estado, String cobertura) {
        List<ModeloBusquedaDatos> lista = new ArrayList<>();
        String sql = "select factura, poder, identificacion, situacion, curp, estadoDoc, tenencia,"
                + " baja, tarjeta, polizaDoc, comprobante, idRegistro, numSiniestro, poliza, marca, tipo, modelo, numSerie, estado,fechaCarga, estacionProceso, "
                + " estatusOperativo, subEstatusProceso from documentosaprobados, fechasseguimiento as fs,  estadoproceso as ep, infosiniestro as iSin, infoauto as ia"
                + " where idRegistro = ia.fkIdRegistro and idRegistro=fs.fkidRegistro and idRegistro = ep.fkIdRegistroEstadoProceso"
                + " and idRegistro=fkIdRegistroDocsAprobados and estacionProceso like '%" + estacion
                + "%' and estatusoperativo like '%" + estatus + "%' and subEstatusProceso like '%" + subEstatus + "%'"
                + " and fechaSeguimiento between '" + fechaBuscar2 + "'  and curdate() and fechaCarga between '"
                + fechaBuscar1 + "' and curdate() "
                + " and region like '%" + region + "%' and estado like '%" + estado + "%' and  cobertura like '%"
                + cobertura + "%'";
        try {
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                ModeloBusquedaDatos mbDatos = new ModeloBusquedaDatos();
                mbDatos.setIdRegistro(rs.getString("idRegistro"));
                mbDatos.setNumSiniestro(rs.getString("numSiniestro"));
                mbDatos.setPoliza(rs.getString("poliza"));
                mbDatos.setMarca(rs.getString("marca"));
                mbDatos.setTipo(rs.getString("tipo"));
                mbDatos.setModelo(rs.getString("modelo"));
                mbDatos.setNumSerie(rs.getString("numSerie"));
                mbDatos.setEstado(rs.getString("estado"));
                mbDatos.setFechaCarga(rs.getString("fechaCarga"));
                mbDatos.setEstacionProceso(rs.getString("estacionProceso"));
                mbDatos.setEstatusOperativo(rs.getString("estatusOperativo"));
                mbDatos.setSubEstatusProceso(rs.getString("subEstatusProceso"));
                mbDatos.setFactura(rs.getString("factura"));
                mbDatos.setPoder(rs.getString("poder"));
                mbDatos.setIdentificacion(rs.getString("identificacion"));
                mbDatos.setSituacion(rs.getString("situacion"));
                mbDatos.setCurp(rs.getString("curp"));
                mbDatos.setEstadoDoc(rs.getString("estadoDoc"));
                mbDatos.setTenencia(rs.getString("tenencia"));
                mbDatos.setBaja(rs.getString("baja"));
                mbDatos.setTarjeta(rs.getString("tarjeta"));
                mbDatos.setPolizaDoc(rs.getString("polizaDoc"));
                mbDatos.setComprobante(rs.getString("comprobante"));
                lista.add(mbDatos);
            }
        } catch (Exception e) {
            // TODO: handle exception
            respuesta = "busqueda incorrecta";
        }
        return lista;
    }

    public List<ModeloBusquedaDatos> getTodosSinDocs() {
        List<ModeloBusquedaDatos> lista = new ArrayList<>();
        try {
            String sql = " select factura, poder, identificacion, situacion, curp, estadoDoc, tenencia,"
            + " baja, tarjeta, polizaDoc, comprobante, idRegistro, numSiniestro, poliza, marca, tipo, modelo, numSerie, estado, iSin.fechaCarga as fechaCarga, estacionProceso, "
                    + "estatusOperativo, subEstatusProceso from infosiniestro as iSin, infoauto, estadoproceso, documentosaprobados where iSin.idRegistro = infoauto.fkIdRegistro and "
                    + "iSin.idRegistro = estadoproceso.fkIdRegistroEstadoProceso and iSin.idRegistro=fkIdRegistroDocsAprobados";
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                ModeloBusquedaDatos mbDatos = new ModeloBusquedaDatos();
                mbDatos.setIdRegistro(rs.getString("idRegistro"));
                mbDatos.setNumSiniestro(rs.getString("numSiniestro"));
                mbDatos.setPoliza(rs.getString("poliza"));
                mbDatos.setMarca(rs.getString("marca"));
                mbDatos.setTipo(rs.getString("tipo"));
                mbDatos.setModelo(rs.getString("modelo"));
                mbDatos.setNumSerie(rs.getString("numSerie"));
                mbDatos.setEstado(rs.getString("estado"));
                mbDatos.setFechaCarga(rs.getString("fechaCarga"));
                mbDatos.setEstacionProceso(rs.getString("estacionProceso"));
                mbDatos.setEstatusOperativo(rs.getString("estatusOperativo"));
                mbDatos.setSubEstatusProceso(rs.getString("subEstatusProceso"));
                mbDatos.setFactura(rs.getString("factura"));
                mbDatos.setPoder(rs.getString("poder"));
                mbDatos.setIdentificacion(rs.getString("identificacion"));
                mbDatos.setSituacion(rs.getString("situacion"));
                mbDatos.setCurp(rs.getString("curp"));
                mbDatos.setEstadoDoc(rs.getString("estadoDoc"));
                mbDatos.setTenencia(rs.getString("tenencia"));
                mbDatos.setBaja(rs.getString("baja"));
                mbDatos.setTarjeta(rs.getString("tarjeta"));
                mbDatos.setPolizaDoc(rs.getString("polizaDoc"));
                mbDatos.setComprobante(rs.getString("comprobante"));
                lista.add(mbDatos);
                respuesta = "si entra poblemas";
            }
        } catch (Exception e) {
            // TODO: handle exception
            respuesta = "error ejecucion";
        }
        return lista;
    }
}
