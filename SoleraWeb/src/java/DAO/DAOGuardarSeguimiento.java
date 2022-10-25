package DAO;

import java.sql.PreparedStatement;

import Modelo.Conexion;
import Modelo.ModeloGuardarSeguimiento;
import java.sql.SQLException;

public class DAOGuardarSeguimiento {
    public String GuardarSeguimiento(ModeloGuardarSeguimiento mgSeguimiento) {
        Conexion con = new Conexion();
        PreparedStatement ps;
        String respuesta = "null";
        try {
            String sql = "update insertarregistros, seguimiento, fechasseguimiento, estadoproceso set respuestaSolera=?,"
                    + " estatusOperativo=?, personaContactada=?, tipoPersona=?, contactoSeguimiento=?, fechaSeguimiento = ?, "
                    + "fechaPrimerEnvioDoc=?, fechaIntegracionexpedienteCompleto=?, fechaTermino=?, estacionProceso=?"
                    + " where fkIdRegistroSeguimiento=? and fkIdRegistroEstadoProceso=? and fkIdRegistroInsertar=? and fkidRegistro=?";
            con.conectar();
            ps = con.conexion.prepareStatement(sql);
            ps.setString(1, mgSeguimiento.getRespSolera());
            ps.setString(2, mgSeguimiento.getEstatusSeguimiento());
            ps.setString(3, mgSeguimiento.getPersContactada());
            ps.setString(4, mgSeguimiento.getTipoPersona());
            ps.setString(5, mgSeguimiento.getTipoContacto());
            ps.setString(6, mgSeguimiento.getFechaSeguimiento());
            ps.setString(7, mgSeguimiento.getFechaPrimEnvDocs());
            ps.setString(8, mgSeguimiento.getFechaIntExp());
            ps.setString(9, mgSeguimiento.getFechaTermino());
            ps.setString(10, mgSeguimiento.getEstacion());
            ps.setString(11, mgSeguimiento.getIdRegistro());
            ps.setString(12, mgSeguimiento.getIdRegistro());
            ps.setString(13, mgSeguimiento.getIdRegistro());
            ps.setString(14, mgSeguimiento.getIdRegistro());
            ps.executeUpdate();
            respuesta = "aqui si";
            con.Desconectar();
            sql = "insert into mensajesseguimientos(mensajes,usuario,fechaMensaje,fkmensgSeguimientos) values('"
                    + mgSeguimiento.getComentSeguimiento() + "','" + mgSeguimiento.getUsuario() + "',curdate(), '"
                    + mgSeguimiento.getIdRegistro() + "')";
            con.conectar();
            ps = con.conexion.prepareStatement(sql);
            ps.execute();
            con.Desconectar();
            sql = "update mensajesseguimientos set respondido='si' where fkmensgSeguimientos='"
                    + mgSeguimiento.getIdRegistro() + "'";
            con.conectar();
            ps = con.conexion.prepareStatement(sql);
            ps.execute();
            con.Desconectar();
            respuesta = "Guardado Correcto";

        } catch (SQLException e) {
            // TODO: handle exception
             //respuesta = e;
        }
        return respuesta;

    }
}
