package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Modelo.Conexion;
import Modelo.ModeloBusquedaDatos;

public class DAOMostrarPorDias {
    public List<ModeloBusquedaDatos> getPorDias(String mayor, String menor) {
        List<ModeloBusquedaDatos> lista = new ArrayList<>();
        Conexion conect = new Conexion();
        PreparedStatement ps;
        ResultSet rs;
        String sql;
        //String respuesta = "eror";
        try {
            sql = "select factura, poder, identificacion, situacion, curp, estadoDoc, tenencia,"
                    + " baja, tarjeta, polizaDoc, comprobante, idRegistro, numSiniestro, poliza, marca, tipo, modelo, numSerie, estado, iSin.fechaCarga as fechaCarga, estacionProceso,"
                    + " estatusSeguimientoSin, subEstatusProceso from fechasseguimiento, infosiniestro as iSin, infoauto, estadoproceso, documentosaprobados "
                    + " where fechasseguimiento.fkidRegistro=idRegistro and iSin.idRegistro = infoauto.fkIdRegistro and"
                    + " iSin.idRegistro = estadoproceso.fkIdRegistroEstadoProceso and iSin.idRegistro=fkIdRegistroDocsAprobados"
                    + " and (datediff(CURDATE(), fechaSeguimiento)>='" + mayor
                    + "' and datediff(CURDATE(), fechaSeguimiento)<'" + menor + "')";
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            rs = ps.executeQuery();
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
                mbDatos.setEstatusOperativo(rs.getString("estatusSeguimientoSin"));
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
                // respuesta = "si entra poblemas";
            }
        } catch (Exception e) {
            // TODO: handle exception
            // respuesta = "error ejecucion";
        }
        return lista;
    }
}
