package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import Modelo.Conexion;
import Modelo.ModeloGuardarSeguimiento;
import java.sql.SQLException;

public class DAOGuardarSeguimiento {
    Conexion con = new Conexion();
    PreparedStatement ps;
    String nombreReal = "";
    String respuesta = null;

    public String GuardarSeguimiento(ModeloGuardarSeguimiento mgSeguimiento) {
        try {
            String sql = "select nombreReal from usuarios where usuario = '" + mgSeguimiento.getUsuario() + "'";
            con.conectar();
            ps = con.conexion.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                nombreReal = rs.getString("nombreReal");
            }
            sql = "insert into seguimientoprincipal(comentarios,estacionPrincipal, estatusSeguimiento,subEstatus, respuestaSolera,"
                    + " personaContactada, tipodePersona, contacto,"
                    + " integraciondeexpediente, facturaciondeservicio, termino, fechaseguimiento, usuario,fkIdRegistroSegPrincipal)"
                    + " values('" + mgSeguimiento.getComentSeguimiento() + "','" + mgSeguimiento.getEstacion()
                    + "','" + mgSeguimiento.getEstatusSeguimiento() + "','" + mgSeguimiento.getSubEstatus()
                    + "','" + mgSeguimiento.getRespSolera() + "','" + mgSeguimiento.getPersContactada()
                    + "','" + mgSeguimiento.getTipoPersona() + "','" + mgSeguimiento.getTipoContacto()
                    + "','" + mgSeguimiento.getFechaIntExp() + "','" + mgSeguimiento.getFechaFactServ()
                    + "','" + mgSeguimiento.getFechaTermino() + "',now(),'" + nombreReal
                    + "','" + mgSeguimiento.getIdRegistro() + "')";
            con.conectar();
            ps = con.conexion.prepareStatement(sql);
            ps.execute();
            respuesta = "0";
            con.Desconectar();
            sql = "insert into mensajesseguimientos(mensajes,usuario,fechaMensaje,fkmensgSeguimientos) values('"
                    + mgSeguimiento.getComentSeguimiento() + "','" + mgSeguimiento.getUsuario() + "',now(), '"
                    + mgSeguimiento.getIdRegistro() + "')";
            con.conectar();
            ps = con.conexion.prepareStatement(sql);
            ps.execute();
            respuesta = "1";
            con.Desconectar();
            sql = "update mensajesseguimientos set respondido='si' where fkmensgSeguimientos='"
                    + mgSeguimiento.getIdRegistro() + "'";
            con.conectar();
            ps = con.conexion.prepareStatement(sql);
            ps.execute();
            respuesta = "2";
            con.Desconectar();
            sql = "update fechasseguimiento set fechaSeguimiento=now() where fkidRegistro='"
                    + mgSeguimiento.getIdRegistro() + "'";
            con.conectar();
            ps = con.conexion.prepareStatement(sql);
            ps.execute();
            respuesta = "3";
            con.Desconectar();
            sql = "update infosiniestro set estatusSeguimientoSin='" + mgSeguimiento.getEstatusSeguimiento()
                    + "' where idRegistro='" + mgSeguimiento.getIdRegistro() + "'";
            con.conectar();
            ps = con.conexion.prepareStatement(sql);
            ps.execute();
            respuesta = "4";
            con.Desconectar();
            sql = "update estadoproceso set estacionProceso='" + mgSeguimiento.getEstacion() + "', estatusOperativo='"
                    + mgSeguimiento.getEstatusSeguimiento() + "',"
                    + " subEstatusProceso='" + mgSeguimiento.getSubEstatus() + "', usuarioSeguimiento='" + nombreReal
                    + "' where fkIdRegistroEstadoProceso='" + mgSeguimiento.getIdRegistro() + "'";
            con.conectar();
            ps = con.conexion.prepareStatement(sql);
            ps.execute();
            respuesta = "5";
            con.Desconectar();
            respuesta = "Guardado Correcto";

        } catch (SQLException e) {
            // TODO: handle exception
            // respuesta = e;
        }
        return respuesta;

    }

    public String asignarIntegrador(String integrador, String idRegistro, String usuario) {
        respuesta = null;
        try {
            String sql = "select nombreReal from usuarios where usuario = '" + usuario + "'";
            con.conectar();
            ps = con.conexion.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                nombreReal = rs.getString("nombreReal");
            }
            sql = "insert into seguimientoprincipal(estatusSeguimiento,fechaseguimiento, fkIdRegistroSegPrincipal,usuario) values('"
                    + integrador + "',now(),'" + idRegistro + "','" + nombreReal + "')";
            con.conectar();
            ps = con.conexion.prepareStatement(sql);
            ps.executeUpdate();
            respuesta = "Integrador asignado";
            con.Desconectar();
            sql = "update infosiniestro set usuarioAsignadoSin='" + integrador
                    + "',fechaAsignacion=now() where idRegistro = '" + idRegistro + "'";
            con.conectar();
            ps = con.conexion.prepareStatement(sql);
            ps.executeUpdate();
            respuesta = "Integrador asignado";
            con.Desconectar();
        } catch (Exception e) {
            // TODO: handle exception
        }
        return respuesta;

    }
}
