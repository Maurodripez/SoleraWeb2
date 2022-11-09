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
    public String respuest = "nada";

    // buscar por cualquier manera, letra, nombre, inicial, etc
    public List<Siniestros> getSiniestroGeneral(String filtro) {
        List<Siniestros> lista = new ArrayList<>();
        try {
            String sql = "select idRegistro,numSiniestro, asegurado, poliza, estatusSeguimientoSin, datediff(CURDATE(),fechaPrimerEnvioDoc)"
                    + " AS 'Dias Transcurridos',"
                    + " fechaPrimerEnvioDoc from estadoproceso, infosiniestro,fechasseguimiento, infocliente as ia "
                    + " where idRegistro=fkIdRegistroEstadoProceso and idRegistro=fechasseguimiento.fkidRegistro and idRegistro=ia.fkIdRegistro"
                    + " and fechaPrimerEnvioDoc is not null and (idRegistro like '%" + filtro + "%' or"
                    + " numSiniestro like '%" + filtro + "%' or ia.asegurado like '%" + filtro + "%' or poliza like '%"
                    + filtro + "%' or "
                    + " estatusSeguimientoSin like '%" + filtro + "%' or datediff(CURDATE(), fechaPrimerEnvioDoc) like '%"
                    + filtro + "%' or"
                    + " fechaPrimerEnvioDoc like '%" + filtro + "%')";
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            Siniestros siniestros;
            while (rs.next()) {
                siniestros = new Siniestros();
                siniestros.setIdRegistro(rs.getString("IdRegistro"));
                siniestros.setNumSiniestro(rs.getString("numSiniestro"));
                siniestros.setAsegurado(rs.getString("asegurado"));
                siniestros.setPoliza(rs.getString("poliza"));
                siniestros.setEstatusCliente(rs.getString("estatusSeguimientoSin"));
                siniestros.setDiasTranscurridos(rs.getString("Dias Transcurridos"));
                siniestros.setFechaPrimerEnvioDoc(rs.getString("fechaPrimerEnvioDoc"));
                lista.add(siniestros);
                respuest = "final";
            }
        } catch (Exception e) {
            // TODO: handle exception
        }

        return lista;
    }

    public List<Siniestros> getResultados(String mayorQue, String menorQue) throws SQLException {
        List<Siniestros> lista = new ArrayList<>();

        conect.conectar();
        String sql = "select iSin.idRegistro as 'Id Registro',"
                + " iSin.numSiniestro as 'Numero Siniestro', ia.asegurado as 'Asegurado', "
                + " iSin.poliza as 'Poliza', estatusSeguimientoSin as 'Estatus Cliente', "
                + " datediff(CURDATE(), fseguimiento.fechaPrimerEnvioDoc) AS 'Dias Transcurridos', "
                + " fseguimiento.fechaPrimerEnvioDoc as 'Fecha Envio' "
                + " from estadoproceso, infoSiniestro as iSin, fechasseguimiento as fSeguimiento, "
                + " infocliente as ia"
                + " where fkIdRegistroEstadoProceso=idRegistro and ia.fkIdRegistro = iSin.idRegistro and iSin.idRegistro = fSeguimiento.fkidRegistro "
                + " and datediff(CURDATE(), fseguimiento.fechaPrimerEnvioDoc)>=" + mayorQue
                + " and datediff(CURDATE(), fseguimiento.fechaPrimerEnvioDoc)<" + menorQue + "";
        ps = conect.conexion.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        Siniestros siniestros;
        while (rs.next()) {
            siniestros = new Siniestros();
            siniestros.setIdRegistro(rs.getString("Id Registro"));
            siniestros.setDiasTranscurridos(rs.getString("Dias Transcurridos"));
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
        String sql = "select idregistro as 'Id Registro',"
                + " numSiniestro as 'Numero Siniestro', ia.asegurado as 'Asegurado', "
                + " poliza as 'Poliza', estatusSeguimientoSin as 'Estatus Cliente', "
                + " datediff(CURDATE(), fechaPrimerEnvioDoc) AS 'Dias Transcurridos', "
                + " fechaPrimerEnvioDoc as 'Fecha Envio' "
                + " from infoSiniestro as iSin, fechasseguimiento as fSeguimiento, "
                + " infocliente as ia, estadoproceso"
                + " where idRegistro=fkIdRegistroEstadoProceso and ia.fkIdRegistro = iSin.idRegistro and iSin.idRegistro = fSeguimiento.fkidRegistro "
                + "and datediff(CURDATE(), fseguimiento.fechaPrimerEnvioDoc)>'" + mayorQue + "'";
        ps = conect.conexion.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        Siniestros siniestros;
        while (rs.next()) {
            siniestros = new Siniestros();
            siniestros.setIdRegistro(rs.getString("Id Registro"));
            siniestros.setDiasTranscurridos(rs.getString("Dias Transcurridos"));
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
                + " iSin.poliza as 'Poliza', estatusSeguimientoSin as 'Estatus Cliente', "
                + " datediff(CURDATE(), fechaPrimerEnvioDoc) AS 'Dias Transcurridos',"
                + " fseguimiento.fechaPrimerEnvioDoc as 'Fecha Envio' "
                + " from estadoproceso, infoSiniestro as iSin,fechasseguimiento as fSeguimiento, infocliente as ia"
                + " where fechaPrimerEnvioDoc is not null and idRegistro=fkIdRegistroEstadoProceso and ia.fkIdRegistro = iSin.idRegistro "
                + " and iSin.idRegistro = fSeguimiento.fkidRegistro and iSin.idregistro like '%"+filtro+"%'";
        ps = conect.conexion.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        Siniestros siniestros;
        while (rs.next()) {
            siniestros = new Siniestros();
            siniestros.setIdRegistro(rs.getString("Id Registro"));
            siniestros.setDiasTranscurridos(rs.getString("Dias Transcurridos"));
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
        + " iSin.poliza as 'Poliza', estatusSeguimientoSin as 'Estatus Cliente', "
        + " datediff(CURDATE(), fechaPrimerEnvioDoc) AS 'Dias Transcurridos',"
        + " fseguimiento.fechaPrimerEnvioDoc as 'Fecha Envio' "
        + " from estadoproceso, infoSiniestro as iSin,fechasseguimiento as fSeguimiento, infocliente as ia"
        + " where fechaPrimerEnvioDoc is not null and idRegistro=fkIdRegistroEstadoProceso and ia.fkIdRegistro = iSin.idRegistro "
        + " and iSin.idRegistro = fSeguimiento.fkidRegistro and datediff(CURDATE(), fseguimiento.fechaPrimerEnvioDoc) like '%" + filtro + "%'";
        ps = conect.conexion.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        Siniestros siniestros;
        while (rs.next()) {
            siniestros = new Siniestros();
            siniestros.setIdRegistro(rs.getString("Id Registro"));
            siniestros.setDiasTranscurridos(rs.getString("Dias Transcurridos"));
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
        + " iSin.poliza as 'Poliza', estatusSeguimientoSin as 'Estatus Cliente', "
        + " datediff(CURDATE(), fechaPrimerEnvioDoc) AS 'Dias Transcurridos',"
        + " fseguimiento.fechaPrimerEnvioDoc as 'Fecha Envio' "
        + " from estadoproceso, infoSiniestro as iSin,fechasseguimiento as fSeguimiento, infocliente as ia"
        + " where fechaPrimerEnvioDoc is not null and idRegistro=fkIdRegistroEstadoProceso and ia.fkIdRegistro = iSin.idRegistro "
        + " and iSin.idRegistro = fSeguimiento.fkidRegistro and fseguimiento.fechaPrimerEnvioDoc like '%" + filtro + "%'";
        ps = conect.conexion.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        Siniestros siniestros;
        while (rs.next()) {
            siniestros = new Siniestros();
            siniestros.setIdRegistro(rs.getString("Id Registro"));
            siniestros.setDiasTranscurridos(rs.getString("Dias Transcurridos"));
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
        + " iSin.poliza as 'Poliza', estatusSeguimientoSin as 'Estatus Cliente', "
        + " datediff(CURDATE(), fechaPrimerEnvioDoc) AS 'Dias Transcurridos',"
        + " fseguimiento.fechaPrimerEnvioDoc as 'Fecha Envio' "
        + " from estadoproceso, infoSiniestro as iSin,fechasseguimiento as fSeguimiento, infocliente as ia"
        + " where fechaPrimerEnvioDoc is not null and idRegistro=fkIdRegistroEstadoProceso and ia.fkIdRegistro = iSin.idRegistro "
        + " and iSin.idRegistro = fSeguimiento.fkidRegistro and iSin.numSiniestro like '%" + filtro + "%'";
        ps = conect.conexion.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        Siniestros siniestros;
        while (rs.next()) {
            siniestros = new Siniestros();
            siniestros.setIdRegistro(rs.getString("Id Registro"));
            siniestros.setDiasTranscurridos(rs.getString("Dias Transcurridos"));
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
        + " iSin.poliza as 'Poliza', estatusSeguimientoSin as 'Estatus Cliente', "
        + " datediff(CURDATE(), fechaPrimerEnvioDoc) AS 'Dias Transcurridos',"
        + " fseguimiento.fechaPrimerEnvioDoc as 'Fecha Envio' "
        + " from estadoproceso, infoSiniestro as iSin,fechasseguimiento as fSeguimiento, infocliente as ia"
        + " where fechaPrimerEnvioDoc is not null and idRegistro=fkIdRegistroEstadoProceso and ia.fkIdRegistro = iSin.idRegistro "
        + " and iSin.idRegistro = fSeguimiento.fkidRegistro and iSin.poliza like '%" + filtro + "%'";
        ps = conect.conexion.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        Siniestros siniestros;
        while (rs.next()) {
            siniestros = new Siniestros();
            siniestros.setIdRegistro(rs.getString("Id Registro"));
            siniestros.setDiasTranscurridos(rs.getString("Dias Transcurridos"));
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
        + " iSin.poliza as 'Poliza', estatusSeguimientoSin as 'Estatus Cliente', "
        + " datediff(CURDATE(), fechaPrimerEnvioDoc) AS 'Dias Transcurridos',"
        + " fseguimiento.fechaPrimerEnvioDoc as 'Fecha Envio' "
        + " from estadoproceso, infoSiniestro as iSin,fechasseguimiento as fSeguimiento, infocliente as ia"
        + " where fechaPrimerEnvioDoc is not null and idRegistro=fkIdRegistroEstadoProceso and ia.fkIdRegistro = iSin.idRegistro "
        + " and iSin.idRegistro = fSeguimiento.fkidRegistro and ia.asegurado like '%" + filtro + "%'";
        ps = conect.conexion.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        Siniestros siniestros;
        while (rs.next()) {
            siniestros = new Siniestros();
            siniestros.setIdRegistro(rs.getString("Id Registro"));
            siniestros.setDiasTranscurridos(rs.getString("Dias Transcurridos"));
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
        + " iSin.poliza as 'Poliza', estatusSeguimientoSin as 'Estatus Cliente', "
        + " datediff(CURDATE(), fechaPrimerEnvioDoc) AS 'Dias Transcurridos',"
        + " fseguimiento.fechaPrimerEnvioDoc as 'Fecha Envio' "
        + " from estadoproceso, infoSiniestro as iSin,fechasseguimiento as fSeguimiento, infocliente as ia"
        + " where fechaPrimerEnvioDoc is not null and idRegistro=fkIdRegistroEstadoProceso and ia.fkIdRegistro = iSin.idRegistro "
        + " and iSin.idRegistro = fSeguimiento.fkidRegistro and estatusSeguimientoSin like '%" + filtro + "%'";
        ps = conect.conexion.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        Siniestros siniestros;
        while (rs.next()) {
            siniestros = new Siniestros();
            siniestros.setIdRegistro(rs.getString("Id Registro"));
            siniestros.setDiasTranscurridos(rs.getString("Dias Transcurridos"));
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
