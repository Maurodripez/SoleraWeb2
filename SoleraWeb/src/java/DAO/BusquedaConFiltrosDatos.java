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
    String r = "ee";

    public List<ModeloBusquedaDatos> getTerminados(String mayor, String menor) {
        List<ModeloBusquedaDatos> lista = new ArrayList<>();
        sql = "select factura, poder, identificacion, situacion, curp, estadoDoc, tenencia, baja, tarjeta, polizaDoc, comprobante,"
                + " idRegistro, numSiniestro, poliza, marca, modelo, numSerie,estado, fechaCarga, estacionProceso,estatusCliente"
                + " from fechasseguimiento as fs,documentosaprobados, infosiniestro, infoauto, estadoproceso where fs.fkidRegistro=idRegistro "
                + " and idRegistro=fkIdRegistroDocsAprobados and idRegistro= infoauto.fkIdRegistro and idRegistro=fkIdRegistroEstadoProceso "
                + " and (datediff(CURDATE(), fechaSeguimiento)>='" + mayor
                + "' and datediff(CURDATE(), fechaSeguimiento)<'" + menor + "')"
                + " and (estatusCliente='TOTAL DE DOCUMENTOS' or estatusCliente='TERMINADO POR PROCESO COMPLETO' or  estatusCliente='TERMINADO ENTREGA ORIGINALES EN OFICINA' "
                + " or  estatusCliente='CONCLUIDO POR OTRAS VIAS (BARRA, OFICINA, BROKER)')";
        try {
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

    public List<ModeloBusquedaDatos> getSeguimientos(String mayor, String menor) {
        List<ModeloBusquedaDatos> lista = new ArrayList<>();
        try {
            sql = "select factura, poder, identificacion, situacion, curp, estadoDoc, tenencia, baja, tarjeta, polizaDoc, comprobante,"
                    + " idRegistro, numSiniestro, poliza, marca, modelo, numSerie,estado, fechaCarga, estacionProceso,estatusCliente"
                    + " from fechasseguimiento as fs,documentosaprobados, infosiniestro, infoauto, estadoproceso where fs.fkidRegistro=idRegistro "
                    + " and idRegistro=fkIdRegistroDocsAprobados and idRegistro= infoauto.fkIdRegistro and idRegistro=fkIdRegistroEstadoProceso"
                    + " and (datediff(CURDATE(), fechaSeguimiento)>='" + mayor
                    + "' and datediff(CURDATE(), fechaSeguimiento)<'" + menor + "')"
                    + " and (estatusCliente='CASO REABIERTO' or  estatusCliente='CON CONTACTO SIN DOCUMENTOS' "
                    + " or  estatusCliente='DE 1 A 3 DOCUMENTOS' or  estatusCliente='DE 4 A 6 DOCUMENTOS' or  estatusCliente='DE 7 A 10 DOCUMENTOS'"
                    + " or  estatusCliente='NUEVO' or  estatusCliente='SIN CONTACTO')";
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

    public List<ModeloBusquedaDatos> getIncorrectos(String mayor, String menor) {
        List<ModeloBusquedaDatos> lista = new ArrayList<>();
        sql = "select factura, poder, identificacion, situacion, curp, estadoDoc, tenencia, baja, tarjeta, polizaDoc, comprobante,"
                + " idRegistro, numSiniestro, poliza, marca, modelo, numSerie,estado, fechaCarga, estacionProceso,estatusCliente"
                + " from fechasseguimiento as fs,documentosaprobados, infosiniestro, infoauto, estadoproceso where fs.fkidRegistro=idRegistro "
                + " and idRegistro=fkIdRegistroDocsAprobados and idRegistro= infoauto.fkIdRegistro and idRegistro=fkIdRegistroEstadoProceso"
                + " and (datediff(CURDATE(), fechaSeguimiento)>='" + mayor
                + "' and datediff(CURDATE(), fechaSeguimiento)<'" + menor + "')"
                + " and (estatusCliente='CANCELADO POR ASEGURADORA (DESVIO INTERNO, INVESTIGACION, POLIZA NO PAGADA)' or  estatusCliente='CON CONTACTO SIN COOPERACION DEL CLIENTE' "
                + " or  estatusCliente='DATOS INCORRECTOS' or  estatusCliente='SIN CONTACTO EN 30 DIAS')";
        try {
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

    public List<ModeloBusquedaDatos> getTodos(String mayor, String menor) {
        List<ModeloBusquedaDatos> lista = new ArrayList<>();
        sql = "select factura, poder, identificacion, situacion, curp, estadoDoc, tenencia, baja, tarjeta, polizaDoc, comprobante,"
                + " idRegistro, numSiniestro, poliza, marca, modelo, numSerie,estado, fechaCarga, estacionProceso,estatusCliente"
                + " from documentosaprobados, infosiniestro, infoauto, estadoproceso,fechasseguimiento as fs where fs.fkidRegistro=idRegistro"
                + " and idRegistro=infoauto.fkidRegistro and idRegistro=fkIdRegistroEstadoProceso and fkIdRegistroDocsAprobados=idRegistro"
                + " and (datediff(CURDATE(), fechaSeguimiento)>='" + mayor
                + "' and datediff(CURDATE(), fechaSeguimiento)<'" + menor + "')";
        try {
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

    public List<ModeloBusquedaDatos> getTerminadoSeg(String mayor, String menor) {
        List<ModeloBusquedaDatos> lista = new ArrayList<>();
        sql = "select factura, poder, identificacion, situacion, curp, estadoDoc, tenencia, baja, tarjeta, polizaDoc, comprobante,"
                + " idRegistro, numSiniestro, poliza, marca, modelo, numSerie,estado, fechaCarga, estacionProceso,estatusCliente"
                + " from documentosaprobados, infosiniestro, infoauto, estadoproceso,fechasseguimiento as fs"
                + " where fs.fkidRegistro=idRegistro and idRegistro=fkIdRegistroDocsAprobados and idRegistro= infoauto.fkIdRegistro and idRegistro=fkIdRegistroEstadoProceso "
                + " and (datediff(CURDATE(), fs.fechaSeguimiento)>='" + mayor
                + "' and datediff(CURDATE(), fs.fechaSeguimiento)<'" + menor + "')"
                + " and (estatusCliente='TOTAL DE DOCUMENTOS' or estatusCliente='TERMINADO POR PROCESO COMPLETO' or  estatusCliente='TERMINADO ENTREGA ORIGINALES EN OFICINA'"
                + " or  estatusCliente='CONCLUIDO POR OTRAS VIAS (BARRA, OFICINA, BROKER)'"
                + " or estatusCliente='CASO REABIERTO' or  estatusCliente='CON CONTACTO SIN DOCUMENTOS' "
                + " or  estatusCliente='DE 1 A 3 DOCUMENTOS' or  estatusCliente='DE 4 A 6 DOCUMENTOS' or  estatusCliente='DE 7 A 10 DOCUMENTOS'"
                + " or  estatusCliente='NUEVO' or  estatusCliente='SIN CONTACTO')";
        try {
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

    public List<ModeloBusquedaDatos> getTerminadoIncorrecto(String mayor, String menor) {
        List<ModeloBusquedaDatos> lista = new ArrayList<>();
        sql = "select factura, poder, identificacion, situacion, curp, estadoDoc, tenencia, baja, tarjeta, polizaDoc, comprobante,"
                + " idRegistro, numSiniestro, poliza, marca, modelo, numSerie,estado, fechaCarga, estacionProceso,estatusCliente"
                + " from fechasseguimiento as fs,documentosaprobados, infosiniestro, infoauto, estadoproceso where fs.fkidRegistro=idRegistro"
                + " and idRegistro=fkIdRegistroDocsAprobados and idRegistro= infoauto.fkIdRegistro and idRegistro=fkIdRegistroEstadoProceso"
                + " and (datediff(CURDATE(), fechaSeguimiento)>='" + mayor
                + "' and datediff(CURDATE(), fechaSeguimiento)<'" + menor + "')"
                + " and (estatusCliente='TOTAL DE DOCUMENTOS' or estatusCliente='TERMINADO POR PROCESO COMPLETO' or  estatusCliente='TERMINADO ENTREGA ORIGINALES EN OFICINA'"
                + " or  estatusCliente='CONCLUIDO POR OTRAS VIAS (BARRA, OFICINA, BROKER)' or estatusCliente='CANCELADO POR ASEGURADORA (DESVIO INTERNO, INVESTIGACION, POLIZA NO PAGADA)'"
                + " or  estatusCliente='CON CONTACTO SIN COOPERACION DEL CLIENTE' "
                + " or  estatusCliente='DATOS INCORRECTOS' or  estatusCliente='SIN CONTACTO EN 30 DIAS');";
        try {
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

    public List<ModeloBusquedaDatos> getSegIncorrecto(String mayor, String menor) {
        List<ModeloBusquedaDatos> lista = new ArrayList<>();
        sql = "select factura, poder, identificacion, situacion, curp, estadoDoc, tenencia, baja, tarjeta, polizaDoc, comprobante,"
                + " idRegistro, numSiniestro, poliza, marca, modelo, numSerie,estado, fechaCarga, estacionProceso,estatusCliente"
                + " from fechasseguimiento as fs,documentosaprobados, infosiniestro, infoauto, estadoproceso where fs.fkidRegistro=idRegistro"
                + " and idRegistro=fkIdRegistroDocsAprobados and idRegistro= infoauto.fkIdRegistro and idRegistro=fkIdRegistroEstadoProceso"
                + " and (datediff(CURDATE(), fechaSeguimiento)>='" + mayor
                + "' and datediff(CURDATE(), fechaSeguimiento)<'" + menor + "')"
                + " and (estatusCliente='CASO REABIERTO' or  estatusCliente='CON CONTACTO SIN DOCUMENTOS' "
                + " or  estatusCliente='DE 1 A 3 DOCUMENTOS' or  estatusCliente='DE 4 A 6 DOCUMENTOS' or  estatusCliente='DE 7 A 10 DOCUMENTOS'"
                + " or  estatusCliente='NUEVO' or  estatusCliente='SIN CONTACTO' or estatusCliente='CANCELADO POR ASEGURADORA (DESVIO INTERNO, INVESTIGACION, POLIZA NO PAGADA)'"
                + " or  estatusCliente='CON CONTACTO SIN COOPERACION DEL CLIENTE' "
                + " or  estatusCliente='DATOS INCORRECTOS' or  estatusCliente='SIN CONTACTO EN 30 DIAS')";
        try {
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
