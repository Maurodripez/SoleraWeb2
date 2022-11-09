package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Modelo.Conexion;
import Modelo.ModeloBusquedaDatos;

public class DAOBusquedaGeneralDatos {

    public List<ModeloBusquedaDatos> getBusquedaGeneral(String filtro) {
        List<ModeloBusquedaDatos> lista = new ArrayList<>();
        Conexion conect = new Conexion();
        PreparedStatement ps;
        ResultSet rs;
        String sql;
        try {
            sql = "select factura, poder, identificacion, situacion, curp, estadoDoc, tenencia, baja, tarjeta, polizaDoc, comprobante,"
                    + " idRegistro, numSiniestro, poliza, marca, modelo, numSerie, fechaCarga, estacionProceso,estatusSeguimientoSin"
                    + " from documentosaprobados, infosiniestro, infoauto, estadoproceso where idRegistro=fkIdRegistroDocsAprobados and"
                    + " idRegistro= fkIdRegistro and idRegistro=fkIdRegistroEstadoProceso"
                    + " and (idRegistro like '%" + filtro + "%' or numSiniestro like '%" + filtro
                    + "%' or poliza like '%" + filtro + "%' or marca like '%" + filtro + "%' or modelo like '%"
                    + filtro + "%'"
                    + " or numSerie like '%" + filtro + "%' or fechaCarga like '%" + filtro
                    + "%' or estacionProceso like '%" + filtro + "%' or estatusSeguimientoSin like '%" + filtro + "%');";
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                ModeloBusquedaDatos mbDatos = new ModeloBusquedaDatos();
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
                mbDatos.setIdRegistro(rs.getString("idRegistro"));
                mbDatos.setNumSiniestro(rs.getString("numSiniestro"));
                mbDatos.setPoliza(rs.getString("poliza"));
                mbDatos.setMarca(rs.getString("marca"));
                mbDatos.setModelo(rs.getString("modelo"));
                mbDatos.setNumSerie(rs.getString("numSerie"));
                mbDatos.setFechaCarga(rs.getString("fechaCarga"));
                mbDatos.setEstacionProceso(rs.getString("estacionProceso"));
                mbDatos.setEstatusOperativo(rs.getString("estatusSeguimientoSin"));
                lista.add(mbDatos);
            }
        } catch (Exception e) {
            // TODO: handle exception
        }
        return lista;
    }
}
