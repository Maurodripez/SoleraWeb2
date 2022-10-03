package DAO;

import java.sql.PreparedStatement;

import Modelo.Conexion;
import Modelo.ModeloGuardarSeguimiento;

public class DAOGuardarSeguimiento {
    public String GuardarSeguimiento(ModeloGuardarSeguimiento mgSeguimiento) {
        Conexion con = new Conexion();
        PreparedStatement ps;
        String respuesta = "null";
        try {
            String sql = "update insertarregistros, seguimiento, fechasseguimiento, estadoproceso set comentariosSeguimiento=?, respuestaSolera=?,"
                    + " estatusOperativo=?, personaContactada=?, tipoPersona=?, contactoSeguimiento=?, fechaSeguimiento = ?, "
                    + "fechaPrimerEnvioDoc=?, fechaIntegracionexpedienteCompleto=?, fechaTermino=?, estacionProceso=?"
                    + " where fkIdRegistroSeguimiento=? and fkIdRegistroEstadoProceso=? and fkIdRegistroInsertar=? and fkidRegistro=?";
            con.conectar();
            ps = con.conexion.prepareStatement(sql);
            ps.setString(1, mgSeguimiento.getComentSeguimiento());
            ps.setString(2, mgSeguimiento.getRespSolera());
            ps.setString(3, mgSeguimiento.getEstatusSeguimiento());
            ps.setString(4, mgSeguimiento.getPersContactada());
            ps.setString(5, mgSeguimiento.getTipoPersona());
            ps.setString(6, mgSeguimiento.getTipoContacto());
            ps.setString(7, mgSeguimiento.getFechaSeguimiento());
            ps.setString(8, mgSeguimiento.getFechaPrimEnvDocs());
            ps.setString(9, mgSeguimiento.getFechaIntExp());
            ps.setString(10, mgSeguimiento.getFechaTermino());
            ps.setString(11, mgSeguimiento.getEstacion());
            ps.setString(12, mgSeguimiento.getIdRegistro());
            ps.setString(13, mgSeguimiento.getIdRegistro());
            ps.setString(14, mgSeguimiento.getIdRegistro());
            ps.setString(15, mgSeguimiento.getIdRegistro());

            ps.executeUpdate();
            respuesta = "Guardado Correcto";

        } catch (Exception e) {
            // TODO: handle exception
            respuesta = "Error al guardar";
        }
        return respuesta;

    }
}
