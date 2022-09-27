package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Modelo.Conexion;
import Modelo.Siniestros;

public class BusquedaAjax {
    Conexion conect = new Conexion();
    PreparedStatement ps;

    // buscar por cualquier manera, letra, nombre, inicial, etc
    public List<Siniestros> getSiniestroGeneral(String filtro) throws SQLException {
        List<Siniestros> lista = new ArrayList<>();

        conect.conectar();
        String sql = "select iSin.idregistro as 'Id Registro',"
                + " iSin.numSiniestro as 'Numero Siniestro', ia.asegurado as 'Asegurado', "
                + " iSin.poliza as 'Poliza', iSin.estatusCliente as 'Estatus Cliente', "
                + " datediff(CURDATE(), fseguimiento.fechaPrimerEnvioDoc) AS 'Dias Transcurridos', "
                + " fseguimiento.fechaPrimerEnvioDoc as 'Fecha Envio' "
                + " from infoSiniestro as iSin left join fechasseguimiento as fSeguimiento on iSin.idRegistro = fSeguimiento.fkidRegistro "
                + " left join infocliente as ia on ia.fkIdRegistro = iSin.idRegistro "
                + " where iSin.idregistro like '%" + filtro + "%' or iSin.numSiniestro like '%" + filtro
                + "%' or ia.nomAseguradoPropietario like '%" + filtro + "%' or iSin.poliza like '%" + filtro + "%' or "
                + " iSin.estatusCliente like '%" + filtro
                + "%' or datediff(CURDATE(), fseguimiento.fechaPrimerEnvioDoc) like '%" + filtro
                + "%' or fseguimiento.fechaPrimerEnvioDoc like '%" + filtro + "%'";
        ps = conect.conexion.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        Siniestros siniestros;
        while (rs.next()) {
            siniestros = new Siniestros();
            siniestros.setIdRegistro(rs.getInt("Id Registro"));
            siniestros.setDiasTranscurridos(rs.getInt("Dias Transcurridos"));
            siniestros.setFechaPrimerEnvioDoc(rs.getString("Fecha Envio"));
            siniestros.setNumSiniestro(rs.getString("Numero Siniestro"));
            siniestros.setPoliza(rs.getString("Poliza"));
            siniestros.setAsegurado(rs.getString("Asegurado"));
            siniestros.setEstatusCliente(rs.getString("Estatus Cliente"));
            lista.add(siniestros);

        }
        return lista;
    }

    public List<Siniestros> getResultados(String mayorQue, String menorQue) throws SQLException {
        List<Siniestros> lista = new ArrayList<>();

        conect.conectar();
        String sql = "select iSin.idregistro as 'Id Registro',"
                + " iSin.numSiniestro as 'Numero Siniestro', ia.asegurado as 'Asegurado', "
                + " iSin.poliza as 'Poliza', iSin.estatusCliente as 'Estatus Cliente', "
                + " datediff(CURDATE(), fseguimiento.fechaPrimerEnvioDoc) AS 'Dias Transcurridos', "
                + " fseguimiento.fechaPrimerEnvioDoc as 'Fecha Envio' "
                + " from infoSiniestro as iSin left join fechasseguimiento as fSeguimiento on iSin.idRegistro = fSeguimiento.fkidRegistro "
                + " left join infocliente as ia on ia.fkIdRegistro = iSin.idRegistro "
                + " where datediff(CURDATE(), fseguimiento.fechaPrimerEnvioDoc)>" + mayorQue
                + " and datediff(CURDATE(), fseguimiento.fechaPrimerEnvioDoc)<" + menorQue + "";
        ps = conect.conexion.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        Siniestros siniestros;
        while (rs.next()) {
            siniestros = new Siniestros();
            siniestros.setIdRegistro(rs.getInt("Id Registro"));
            siniestros.setDiasTranscurridos(rs.getInt("Dias Transcurridos"));
            siniestros.setFechaPrimerEnvioDoc(rs.getString("Fecha Envio"));
            siniestros.setNumSiniestro(rs.getString("Numero Siniestro"));
            siniestros.setPoliza(rs.getString("Poliza"));
            siniestros.setAsegurado(rs.getString("Asegurado"));
            siniestros.setEstatusCliente(rs.getString("Estatus Cliente"));
            lista.add(siniestros);

        }
        return lista;
    }

    public List<Siniestros> getResultadosMas15(String mayorQue) throws SQLException {
        List<Siniestros> lista = new ArrayList<>();

        conect.conectar();
        String sql = "select iSin.idregistro as 'Id Registro',"
                + " iSin.numSiniestro as 'Numero Siniestro', ia.asegurado as 'Asegurado', "
                + " iSin.poliza as 'Poliza', iSin.estatusCliente as 'Estatus Cliente', "
                + " datediff(CURDATE(), fseguimiento.fechaPrimerEnvioDoc) AS 'Dias Transcurridos', "
                + " fseguimiento.fechaPrimerEnvioDoc as 'Fecha Envio' "
                + " from infoSiniestro as iSin left join fechasseguimiento as fSeguimiento on iSin.idRegistro = fSeguimiento.fkidRegistro "
                + " left join infocliente as ia on ia.fkIdRegistro = iSin.idRegistro "
                + " where datediff(CURDATE(), fseguimiento.fechaPrimerEnvioDoc)>" + mayorQue + "";
        ps = conect.conexion.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        Siniestros siniestros;
        while (rs.next()) {
            siniestros = new Siniestros();
            siniestros.setIdRegistro(rs.getInt("Id Registro"));
            siniestros.setDiasTranscurridos(rs.getInt("Dias Transcurridos"));
            siniestros.setFechaPrimerEnvioDoc(rs.getString("Fecha Envio"));
            siniestros.setNumSiniestro(rs.getString("Numero Siniestro"));
            siniestros.setPoliza(rs.getString("Poliza"));
            siniestros.setAsegurado(rs.getString("Asegurado"));
            siniestros.setEstatusCliente(rs.getString("Estatus Cliente"));
            lista.add(siniestros);

        }
        return lista;
    }

    public List<Siniestros> getIdRegistro(String filtro) throws SQLException {
        List<Siniestros> lista = new ArrayList<>();
        conect.conectar();
        String sql = "select iSin.idregistro as 'Id Registro',"
                + " iSin.numSiniestro as 'Numero Siniestro', ia.asegurado as 'Asegurado', "
                + " iSin.poliza as 'Poliza', iSin.estatusCliente as 'Estatus Cliente', "
                + " datediff(CURDATE(), fseguimiento.fechaPrimerEnvioDoc) AS 'Dias Transcurridos', "
                + " fseguimiento.fechaPrimerEnvioDoc as 'Fecha Envio' "
                + " from infoSiniestro as iSin left join fechasseguimiento as fSeguimiento on iSin.idRegistro = fSeguimiento.fkidRegistro "
                + " left join infocliente as ia on ia.fkIdRegistro = iSin.idRegistro "
                + " where iSin.idregistro like '%" + filtro + "%'";
        ps = conect.conexion.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        Siniestros siniestros;
        while (rs.next()) {
            siniestros = new Siniestros();
            siniestros.setIdRegistro(rs.getInt("Id Registro"));
            siniestros.setDiasTranscurridos(rs.getInt("Dias Transcurridos"));
            siniestros.setFechaPrimerEnvioDoc(rs.getString("Fecha Envio"));
            siniestros.setNumSiniestro(rs.getString("Numero Siniestro"));
            siniestros.setPoliza(rs.getString("Poliza"));
            siniestros.setAsegurado(rs.getString("Asegurado"));
            siniestros.setEstatusCliente(rs.getString("Estatus Cliente"));
            lista.add(siniestros);

        }
        // conect.Desconectar();
        return lista;
    }

    public List<Siniestros> getDiasTranscurridos(String filtro) throws SQLException {
        List<Siniestros> lista = new ArrayList<>();
        conect.conectar();
        String sql = "select iSin.idregistro as 'Id Registro',"
                + " iSin.numSiniestro as 'Numero Siniestro', ia.asegurado as 'Asegurado', "
                + " iSin.poliza as 'Poliza', iSin.estatusCliente as 'Estatus Cliente', "
                + " datediff(CURDATE(), fseguimiento.fechaPrimerEnvioDoc) AS 'Dias Transcurridos', "
                + " fseguimiento.fechaPrimerEnvioDoc as 'Fecha Envio' "
                + " from infoSiniestro as iSin left join fechasseguimiento as fSeguimiento on iSin.idRegistro = fSeguimiento.fkidRegistro "
                + " left join infocliente as ia on ia.fkIdRegistro = iSin.idRegistro "
                + " where datediff(CURDATE(), fseguimiento.fechaPrimerEnvioDoc) like '%" + filtro + "%'";
        ps = conect.conexion.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        Siniestros siniestros;
        while (rs.next()) {
            siniestros = new Siniestros();
            siniestros.setIdRegistro(rs.getInt("Id Registro"));
            siniestros.setDiasTranscurridos(rs.getInt("Dias Transcurridos"));
            siniestros.setFechaPrimerEnvioDoc(rs.getString("Fecha Envio"));
            siniestros.setNumSiniestro(rs.getString("Numero Siniestro"));
            siniestros.setPoliza(rs.getString("Poliza"));
            siniestros.setAsegurado(rs.getString("Asegurado"));
            siniestros.setEstatusCliente(rs.getString("Estatus Cliente"));
            lista.add(siniestros);

        }
        // conect.Desconectar();
        return lista;
    }

    public List<Siniestros> getFechaInicio(String filtro) throws SQLException {
        List<Siniestros> lista = new ArrayList<>();
        conect.conectar();
        String sql = "select iSin.idregistro as 'Id Registro',"
                + " iSin.numSiniestro as 'Numero Siniestro', ia.asegurado as 'Asegurado', "
                + " iSin.poliza as 'Poliza', iSin.estatusCliente as 'Estatus Cliente', "
                + " datediff(CURDATE(), fseguimiento.fechaPrimerEnvioDoc) AS 'Dias Transcurridos', "
                + " fseguimiento.fechaPrimerEnvioDoc as 'Fecha Envio' "
                + " from infoSiniestro as iSin left join fechasseguimiento as fSeguimiento on iSin.idRegistro = fSeguimiento.fkidRegistro "
                + " left join infocliente as ia on ia.fkIdRegistro = iSin.idRegistro "
                + " where fseguimiento.fechaPrimerEnvioDoc like '%" + filtro + "%'";
        ps = conect.conexion.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        Siniestros siniestros;
        while (rs.next()) {
            siniestros = new Siniestros();
            siniestros.setIdRegistro(rs.getInt("Id Registro"));
            siniestros.setDiasTranscurridos(rs.getInt("Dias Transcurridos"));
            siniestros.setFechaPrimerEnvioDoc(rs.getString("Fecha Envio"));
            siniestros.setNumSiniestro(rs.getString("Numero Siniestro"));
            siniestros.setPoliza(rs.getString("Poliza"));
            siniestros.setAsegurado(rs.getString("Asegurado"));
            siniestros.setEstatusCliente(rs.getString("Estatus Cliente"));
            lista.add(siniestros);

        }
        // conect.Desconectar();
        return lista;
    }

    public List<Siniestros> getSiniestro(String filtro) throws SQLException {
        List<Siniestros> lista = new ArrayList<>();
        conect.conectar();
        String sql = "select iSin.idregistro as 'Id Registro',"
                + " iSin.numSiniestro as 'Numero Siniestro', ia.asegurado as 'Asegurado', "
                + " iSin.poliza as 'Poliza', iSin.estatusCliente as 'Estatus Cliente', "
                + " datediff(CURDATE(), fseguimiento.fechaPrimerEnvioDoc) AS 'Dias Transcurridos', "
                + " fseguimiento.fechaPrimerEnvioDoc as 'Fecha Envio' "
                + " from infoSiniestro as iSin left join fechasseguimiento as fSeguimiento on iSin.idRegistro = fSeguimiento.fkidRegistro "
                + " left join infocliente as ia on ia.fkIdRegistro = iSin.idRegistro "
                + " where iSin.numSiniestro like '%" + filtro + "%'";
        ps = conect.conexion.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        Siniestros siniestros;
        while (rs.next()) {
            siniestros = new Siniestros();
            siniestros.setIdRegistro(rs.getInt("Id Registro"));
            siniestros.setDiasTranscurridos(rs.getInt("Dias Transcurridos"));
            siniestros.setFechaPrimerEnvioDoc(rs.getString("Fecha Envio"));
            siniestros.setNumSiniestro(rs.getString("Numero Siniestro"));
            siniestros.setPoliza(rs.getString("Poliza"));
            siniestros.setAsegurado(rs.getString("Asegurado"));
            siniestros.setEstatusCliente(rs.getString("Estatus Cliente"));
            lista.add(siniestros);

        }
        // conect.Desconectar();
        return lista;
    }

    public List<Siniestros> getPoliza(String filtro) throws SQLException {
        List<Siniestros> lista = new ArrayList<>();
        conect.conectar();
        String sql = "select iSin.idregistro as 'Id Registro',"
                + " iSin.numSiniestro as 'Numero Siniestro', ia.asegurado as 'Asegurado', "
                + " iSin.poliza as 'Poliza', iSin.estatusCliente as 'Estatus Cliente', "
                + " datediff(CURDATE(), fseguimiento.fechaPrimerEnvioDoc) AS 'Dias Transcurridos', "
                + " fseguimiento.fechaPrimerEnvioDoc as 'Fecha Envio' "
                + " from infoSiniestro as iSin left join fechasseguimiento as fSeguimiento on iSin.idRegistro = fSeguimiento.fkidRegistro "
                + " left join infocliente as ia on ia.fkIdRegistro = iSin.idRegistro "
                + " where iSin.poliza like '%" + filtro + "%'";
        ps = conect.conexion.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        Siniestros siniestros;
        while (rs.next()) {
            siniestros = new Siniestros();
            siniestros.setIdRegistro(rs.getInt("Id Registro"));
            siniestros.setDiasTranscurridos(rs.getInt("Dias Transcurridos"));
            siniestros.setFechaPrimerEnvioDoc(rs.getString("Fecha Envio"));
            siniestros.setNumSiniestro(rs.getString("Numero Siniestro"));
            siniestros.setPoliza(rs.getString("Poliza"));
            siniestros.setAsegurado(rs.getString("Asegurado"));
            siniestros.setEstatusCliente(rs.getString("Estatus Cliente"));
            lista.add(siniestros);

        }
        // conect.Desconectar();
        return lista;
    }

    public List<Siniestros> getAsegurado(String filtro) throws SQLException {
        List<Siniestros> lista = new ArrayList<>();
        int size = lista.size();
        conect.conectar();
        String sql = "select iSin.idregistro as 'Id Registro',"
                + " iSin.numSiniestro as 'Numero Siniestro', ia.asegurado as 'Asegurado', "
                + " iSin.poliza as 'Poliza', iSin.estatusCliente as 'Estatus Cliente', "
                + " datediff(CURDATE(), fseguimiento.fechaPrimerEnvioDoc) AS 'Dias Transcurridos', "
                + " fseguimiento.fechaPrimerEnvioDoc as 'Fecha Envio' "
                + " from infoSiniestro as iSin left join fechasseguimiento as fSeguimiento on iSin.idRegistro = fSeguimiento.fkidRegistro "
                + " left join infocliente as ia on ia.fkIdRegistro = iSin.idRegistro "
                + " where ia.asegurado like '%" + filtro + "%'";
        ps = conect.conexion.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        Siniestros siniestros;
        while (rs.next()) {
            siniestros = new Siniestros();
            siniestros.setIdRegistro(rs.getInt("Id Registro"));
            siniestros.setDiasTranscurridos(rs.getInt("Dias Transcurridos"));
            siniestros.setFechaPrimerEnvioDoc(rs.getString("Fecha Envio"));
            siniestros.setNumSiniestro(rs.getString("Numero Siniestro"));
            siniestros.setPoliza(rs.getString("Poliza"));
            siniestros.setAsegurado(rs.getString("Asegurado"));
            siniestros.setEstatusCliente(rs.getString("Estatus Cliente"));
            siniestros.setSize(size);
            lista.add(siniestros);

        }
        // conect.Desconectar();
        return lista;
    }

    public List<Siniestros> getStatus(String filtro) throws SQLException {
        List<Siniestros> lista = new ArrayList<>();
        conect.conectar();
        String sql = "select iSin.idregistro as 'Id Registro',"
                + " iSin.numSiniestro as 'Numero Siniestro', ia.asegurado as 'Asegurado', "
                + " iSin.poliza as 'Poliza', iSin.estatusCliente as 'Estatus Cliente', "
                + " datediff(CURDATE(), fseguimiento.fechaPrimerEnvioDoc) AS 'Dias Transcurridos', "
                + " fseguimiento.fechaPrimerEnvioDoc as 'Fecha Envio' "
                + " from infoSiniestro as iSin left join fechasseguimiento as fSeguimiento on iSin.idRegistro = fSeguimiento.fkidRegistro "
                + " left join infocliente as ia on ia.fkIdRegistro = iSin.idRegistro "
                + " where iSin.estatusCliente like '%" + filtro + "%'";
        ps = conect.conexion.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        Siniestros siniestros;
        while (rs.next()) {
            siniestros = new Siniestros();
            siniestros.setIdRegistro(rs.getInt("Id Registro"));
            siniestros.setDiasTranscurridos(rs.getInt("Dias Transcurridos"));
            siniestros.setFechaPrimerEnvioDoc(rs.getString("Fecha Envio"));
            siniestros.setNumSiniestro(rs.getString("Numero Siniestro"));
            siniestros.setPoliza(rs.getString("Poliza"));
            siniestros.setAsegurado(rs.getString("Asegurado"));
            siniestros.setEstatusCliente(rs.getString("Estatus Cliente"));
            lista.add(siniestros);

        }
        // conect.Desconectar();
        return lista;
    }
}
