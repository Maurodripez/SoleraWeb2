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
        String sql = "select identificacionOficial, comprobanteDeDomicilio, informacionAdicional, facturaDelVehiculo, tenencias, baja, estadodeCuenta,"
                + " denuncia, acreditacion, idRegistro, numSiniestro, poliza, marca, tipo, modelo, numSerie, estado,fechaCarga, estacionProceso, "
                + " estatusOperativo, subEstatusProceso from documentosaprobados, fechasseguimiento as fs,  estadoproceso as ep, infosiniestro as iSin, infoauto as ia"
                + " where idRegistro = ia.fkIdRegistro and idRegistro=fs.fkidRegistro and idRegistro = ep.fkIdRegistroEstadoProceso"
                + " and idRegistro=fkIdRegistroDocsAprobados and estacionProceso like '%" + estacion
                + "%' and estatusoperativo like '%" + estatus + "%' and subEstatusProceso like '%" + subEstatus+"%'"
                + " and fechaSeguimiento between '" + fechaBuscar2 + "'  and curdate() and fechaCarga between '"
                + fechaBuscar1 + "' and curdate() "
                + " and region like '%" + region + "%' and estado like '%" + estado + "%' and  cobertura like '%"
                + cobertura + "%'";
        /*
         * select identificacionOficial, comprobanteDeDomicilio, informacionAdicional,
         * facturaDelVehiculo, tenencias, baja, estadodeCuenta,
         * denuncia, acreditacion, idRegistro, numSiniestro, poliza, marca, tipo,
         * modelo, numSerie, estado, iSin.fechaCarga as fechaCarga, estacionProceso,
         * estatusOperativo, subEstatusProceso from documentosaprobados,
         * fechasseguimiento as fs, estadoproceso as ep, infosiniestro as iSin, infoauto
         * as ia
         * where iSin.idRegistro = ia.fkIdRegistro and iSin.idRegistro=fs.fkidRegistro
         * and iSin.idRegistro = ep.fkIdRegistroEstadoProceso
         * and iSin.idRegistro=fkIdRegistroDocsAprobados and (fechaCarga between
         * '2022-09-12'
         * and curdate() and estacionProceso like '%%' and estatusoperativo like '%%'
         * and subEstatusProceso like '%%'
         * or fechaSeguimiento between '2022-09-12' and curdate() and region like '%%'
         * and
         * estado like '%%' and cobertura like '%%');
         */
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
                mbDatos.setIdentificacionOficial(rs.getString("identificacionOficial"));
                mbDatos.setComprobanteDeDomicilio(rs.getString("comprobanteDeDomicilio"));
                mbDatos.setInformacionAdicional(rs.getString("informacionAdicional"));
                mbDatos.setFacturaDelVehiculo(rs.getString("facturaDelVehiculo"));
                mbDatos.setTenencias(rs.getString("tenencias"));
                mbDatos.setBaja(rs.getString("baja"));
                mbDatos.setEstadodeCuenta(rs.getString("estadodeCuenta"));
                mbDatos.setDenuncia(rs.getString("denuncia"));
                mbDatos.setAcreditacion(rs.getString("acreditacion"));
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
            String sql = " select identificacionOficial, comprobanteDeDomicilio, informacionAdicional, facturaDelVehiculo, tenencias, baja, estadodeCuenta,"
                    + " denuncia, acreditacion, idRegistro, numSiniestro, poliza, marca, tipo, modelo, numSerie, estado, iSin.fechaCarga as fechaCarga, estacionProceso, "
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
                mbDatos.setIdentificacionOficial(rs.getString("identificacionOficial"));
                mbDatos.setComprobanteDeDomicilio(rs.getString("comprobanteDeDomicilio"));
                mbDatos.setInformacionAdicional(rs.getString("informacionAdicional"));
                mbDatos.setFacturaDelVehiculo(rs.getString("facturaDelVehiculo"));
                mbDatos.setTenencias(rs.getString("tenencias"));
                mbDatos.setBaja(rs.getString("baja"));
                mbDatos.setEstadodeCuenta(rs.getString("estadodeCuenta"));
                mbDatos.setDenuncia(rs.getString("denuncia"));
                mbDatos.setAcreditacion(rs.getString("acreditacion"));
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
