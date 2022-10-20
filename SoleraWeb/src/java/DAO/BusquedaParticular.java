package DAO;

import java.util.List;

import Modelo.Conexion;
import Modelo.ModeloBusquedaDatos;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class BusquedaParticular {

    List<ModeloBusquedaDatos> lista = new ArrayList<>();
    String sql;
    Conexion conect = new Conexion();
    PreparedStatement ps;
    ResultSet rs;

    public List<ModeloBusquedaDatos> getID(String id) throws SQLException {
        sql = "select identificacionOficial, comprobanteDeDomicilio, informacionAdicional, facturaDelVehiculo, tenencias, baja, estadodeCuenta,"
                + " denuncia, acreditacion, idRegistro, numSiniestro, poliza, marca, tipo, modelo, numSerie, estado, iSin.fechaCarga as fechaCarga, estacionProceso, "
                + " estatusOperativo, subEstatusProceso from infosiniestro as iSin, infoauto, estadoproceso, documentosaprobados where iSin.idRegistro = infoauto.fkIdRegistro and "
                + " iSin.idRegistro = estadoproceso.fkIdRegistroEstadoProceso and iSin.idRegistro=fkIdRegistroDocsAprobados and idRegistro like '%"
                + id + "%'";
        try {
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
            conect.Desconectar();
        } catch (SQLException e) {
            // TODO: handle exception
        }
        return lista;
    }

    public List<ModeloBusquedaDatos> getSiniestro(String id) throws SQLException {

        sql = "select identificacionOficial, comprobanteDeDomicilio, informacionAdicional, facturaDelVehiculo, tenencias, baja, estadodeCuenta,"
                + " denuncia, acreditacion, idRegistro, numSiniestro, poliza, marca, tipo, modelo, numSerie, estado, iSin.fechaCarga as fechaCarga, estacionProceso, "
                + " estatusOperativo, subEstatusProceso from infosiniestro as iSin, infoauto, estadoproceso, documentosaprobados where iSin.idRegistro = infoauto.fkIdRegistro and "
                + " iSin.idRegistro = estadoproceso.fkIdRegistroEstadoProceso and iSin.idRegistro=fkIdRegistroDocsAprobados and numSiniestro like '%"
                + id + "%'";
        try {
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
        } catch (SQLException e) {
            // TODO: handle exception
        }
        return lista;
    }

    public List<ModeloBusquedaDatos> getPoliza(String id) throws SQLException {
        sql = "select identificacionOficial, comprobanteDeDomicilio, informacionAdicional, facturaDelVehiculo, tenencias, baja, estadodeCuenta,"
                + " denuncia, acreditacion, idRegistro, numSiniestro, poliza, marca, tipo, modelo, numSerie, estado, iSin.fechaCarga as fechaCarga, estacionProceso, "
                + " estatusOperativo, subEstatusProceso from infosiniestro as iSin, infoauto, estadoproceso, documentosaprobados where iSin.idRegistro = infoauto.fkIdRegistro and "
                + " iSin.idRegistro = estadoproceso.fkIdRegistroEstadoProceso and iSin.idRegistro=fkIdRegistroDocsAprobados and poliza like '%"
                + id + "%'";
        try {
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
        } catch (SQLException e) {
            // TODO: handle exception
        }
        return lista;
    }

    public List<ModeloBusquedaDatos> getMarca(String id) throws SQLException {
        sql = "select identificacionOficial, comprobanteDeDomicilio, informacionAdicional, facturaDelVehiculo, tenencias, baja, estadodeCuenta,"
                + " denuncia, acreditacion, idRegistro, numSiniestro, poliza, marca, tipo, modelo, numSerie, estado, iSin.fechaCarga as fechaCarga, estacionProceso, "
                + " estatusOperativo, subEstatusProceso from infosiniestro as iSin, infoauto, estadoproceso, documentosaprobados where iSin.idRegistro = infoauto.fkIdRegistro and "
                + " iSin.idRegistro = estadoproceso.fkIdRegistroEstadoProceso and iSin.idRegistro=fkIdRegistroDocsAprobados and marca like '%"
                + id + "%'";
        try {
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
        } catch (SQLException e) {
            // TODO: handle exception
        }
        return lista;
    }

    public List<ModeloBusquedaDatos> getTipo(String id) throws SQLException {
        sql = "select identificacionOficial, comprobanteDeDomicilio, informacionAdicional, facturaDelVehiculo, tenencias, baja, estadodeCuenta,"
                + " denuncia, acreditacion, idRegistro, numSiniestro, poliza, marca, tipo, modelo, numSerie, estado, iSin.fechaCarga as fechaCarga, estacionProceso, "
                + " estatusOperativo, subEstatusProceso from infosiniestro as iSin, infoauto, estadoproceso, documentosaprobados where iSin.idRegistro = infoauto.fkIdRegistro and "
                + " iSin.idRegistro = estadoproceso.fkIdRegistroEstadoProceso and iSin.idRegistro=fkIdRegistroDocsAprobados and tipo like '%"
                + id + "%'";
        try {
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
        } catch (SQLException e) {
            // TODO: handle exception
        }
        return lista;
    }

    public List<ModeloBusquedaDatos> getModelo(String id) throws SQLException {
        sql = "select identificacionOficial, comprobanteDeDomicilio, informacionAdicional, facturaDelVehiculo, tenencias, baja, estadodeCuenta,"
                + " denuncia, acreditacion, idRegistro, numSiniestro, poliza, marca, tipo, modelo, numSerie, estado, iSin.fechaCarga as fechaCarga, estacionProceso, "
                + " estatusOperativo, subEstatusProceso from infosiniestro as iSin, infoauto, estadoproceso, documentosaprobados where iSin.idRegistro = infoauto.fkIdRegistro and "
                + " iSin.idRegistro = estadoproceso.fkIdRegistroEstadoProceso and iSin.idRegistro=fkIdRegistroDocsAprobados and modelo like '%"
                + id + "%'";
        try {
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
        } catch (SQLException e) {
            // TODO: handle exception
        }
        return lista;
    }

    public List<ModeloBusquedaDatos> getSerie(String id) throws SQLException {
        sql = "select identificacionOficial, comprobanteDeDomicilio, informacionAdicional, facturaDelVehiculo, tenencias, baja, estadodeCuenta,"
                + " denuncia, acreditacion, idRegistro, numSiniestro, poliza, marca, tipo, modelo, numSerie, estado, iSin.fechaCarga as fechaCarga, estacionProceso, "
                + " estatusOperativo, subEstatusProceso from infosiniestro as iSin, infoauto, estadoproceso, documentosaprobados where iSin.idRegistro = infoauto.fkIdRegistro and "
                + " iSin.idRegistro = estadoproceso.fkIdRegistroEstadoProceso and iSin.idRegistro=fkIdRegistroDocsAprobados and numSerie like '%"
                + id + "%'";
        try {
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
        } catch (SQLException e) {
            // TODO: handle exception
        }
        return lista;
    }

    public List<ModeloBusquedaDatos> getEstado(String id) throws SQLException {
        sql = "select identificacionOficial, comprobanteDeDomicilio, informacionAdicional, facturaDelVehiculo, tenencias, baja, estadodeCuenta,"
                + " denuncia, acreditacion, idRegistro, numSiniestro, poliza, marca, tipo, modelo, numSerie, estado, iSin.fechaCarga as fechaCarga, estacionProceso, "
                + " estatusOperativo, subEstatusProceso from infosiniestro as iSin, infoauto, estadoproceso, documentosaprobados where iSin.idRegistro = infoauto.fkIdRegistro and "
                + " iSin.idRegistro = estadoproceso.fkIdRegistroEstadoProceso and iSin.idRegistro=fkIdRegistroDocsAprobados and estado like '%"
                + id + "%'";
        try {
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
        } catch (SQLException e) {
            // TODO: handle exception
        }
        return lista;
    }

    public List<ModeloBusquedaDatos> getFechaCarga(String id) throws SQLException {
        sql = "select identificacionOficial, comprobanteDeDomicilio, informacionAdicional, facturaDelVehiculo, tenencias, baja, estadodeCuenta,"
                + " denuncia, acreditacion, idRegistro, numSiniestro, poliza, marca, tipo, modelo, numSerie, estado, iSin.fechaCarga as fechaCarga, estacionProceso, "
                + " estatusOperativo, subEstatusProceso from infosiniestro as iSin, infoauto, estadoproceso, documentosaprobados where iSin.idRegistro = infoauto.fkIdRegistro and "
                + " iSin.idRegistro = estadoproceso.fkIdRegistroEstadoProceso and iSin.idRegistro=fkIdRegistroDocsAprobados and fechaCarga like '%"
                + id + "%'";
        try {
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
        } catch (SQLException e) {
            // TODO: handle exception
        }
        return lista;
    }

    public List<ModeloBusquedaDatos> getEstacion(String id) throws SQLException {
        sql = "select identificacionOficial, comprobanteDeDomicilio, informacionAdicional, facturaDelVehiculo, tenencias, baja, estadodeCuenta,"
                + " denuncia, acreditacion, idRegistro, numSiniestro, poliza, marca, tipo, modelo, numSerie, estado, iSin.fechaCarga as fechaCarga, estacionProceso, "
                + " estatusOperativo, subEstatusProceso from infosiniestro as iSin, infoauto, estadoproceso, documentosaprobados where iSin.idRegistro = infoauto.fkIdRegistro and "
                + " iSin.idRegistro = estadoproceso.fkIdRegistroEstadoProceso and iSin.idRegistro=fkIdRegistroDocsAprobados and estacionProceso like '%"
                + id + "%'";
        try {
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
        } catch (SQLException e) {
            // TODO: handle exception
        }
        return lista;
    }

    public List<ModeloBusquedaDatos> getEstatus(String id) throws SQLException {
        sql = "select identificacionOficial, comprobanteDeDomicilio, informacionAdicional, facturaDelVehiculo, tenencias, baja, estadodeCuenta,"
                + " denuncia, acreditacion, idRegistro, numSiniestro, poliza, marca, tipo, modelo, numSerie, estado, iSin.fechaCarga as fechaCarga, estacionProceso, "
                + " estatusOperativo, subEstatusProceso from infosiniestro as iSin, infoauto, estadoproceso, documentosaprobados where iSin.idRegistro = infoauto.fkIdRegistro and "
                + " iSin.idRegistro = estadoproceso.fkIdRegistroEstadoProceso and iSin.idRegistro=fkIdRegistroDocsAprobados and estatusOperativo like '%"
                + id + "%'";
        try {
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
        } catch (SQLException e) {
            // TODO: handle exception
        }
        return lista;
    }
}
