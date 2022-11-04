package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Modelo.Conexion;
import Modelo.ModeloBusquedaDatos;

public class BusquedaConFiltrosDatos {
    Conexion conect = new Conexion();
    PreparedStatement ps;
    ResultSet rs;
    String sql;

    public List<ModeloBusquedaDatos> getTerminados() {
        String r = "ee";
        List<ModeloBusquedaDatos> lista = new ArrayList<>();
        try {
            sql = "select factura, poder, identificacion, situacion, curp, estadoDoc, tenencia, baja, tarjeta, polizaDoc, comprobante,"
                    + " idRegistro, numSiniestro, poliza, marca, modelo, numSerie,estado, fechaCarga, estacionProceso,estatusCliente"
                    + " from seguimientoprincipal,documentosaprobados, infosiniestro, infoauto, estadoproceso where fkIdRegistroSegPrincipal=idRegistro "
                    + " and idRegistro=fkIdRegistroDocsAprobados and idRegistro= fkIdRegistro and idRegistro=fkIdRegistroEstadoProceso "
                    + " and (estatusSeguimiento='TERMINADO POR PROCESO COMPLETO' or  estatusSeguimiento='TERMINADO ENTREGA ORIGINALES EN OFICINA' "
                    + " or  estatusSeguimiento='CONCLUIDO POR OTRAS VIAS (BARRA, OFICINA, BROKER)') group by fkIdRegistroSegPrincipal";
            r = "-2";
            conect.conectar();
            r = "-1";
            ps = conect.conexion.prepareStatement(sql);
            rs = ps.executeQuery();
            r = "0";
            while (rs.next()) {
                r = "1";
                ModeloBusquedaDatos mbDatos = new ModeloBusquedaDatos();
                mbDatos.setIdRegistro(rs.getString("idRegistro"));
                mbDatos.setNumSiniestro(rs.getString("numSiniestro"));
                mbDatos.setPoliza(rs.getString("poliza"));
                r = "2";
                mbDatos.setMarca(rs.getString("marca"));
                mbDatos.setModelo(rs.getString("modelo"));
                mbDatos.setNumSerie(rs.getString("numSerie"));
                r = "3";
                mbDatos.setEstado(rs.getString("estado"));
                mbDatos.setFechaCarga(rs.getString("fechaCarga"));
                mbDatos.setEstacionProceso(rs.getString("estacionProceso"));
                r = "4";
                mbDatos.setEstatusOperativo(rs.getString("estatusCliente"));
                mbDatos.setFactura(rs.getString("factura"));
                mbDatos.setPoder(rs.getString("poder"));
                r = "5";
                mbDatos.setIdentificacion(rs.getString("identificacion"));
                mbDatos.setSituacion(rs.getString("situacion"));
                mbDatos.setCurp(rs.getString("curp"));
                r = "6";
                mbDatos.setEstadoDoc(rs.getString("estadoDoc"));
                mbDatos.setTenencia(rs.getString("tenencia"));
                mbDatos.setBaja(rs.getString("baja"));
                r = "7";
                mbDatos.setTarjeta(rs.getString("tarjeta"));
                mbDatos.setPolizaDoc(rs.getString("polizaDoc"));
                mbDatos.setComprobante(rs.getString("comprobante"));
                r = "8";
                lista.add(mbDatos);
            }
        } catch (Exception e) {
            // TODO: handle exception
        }
        return lista;
    }
}
