package DAO;

import java.sql.PreparedStatement;

import Modelo.Conexion;
import java.sql.SQLException;

public class DAOEliminarSiniestro {
    public String EliminarSiniestro(String idEliminar) {
        Conexion conect = new Conexion();
        PreparedStatement ps;
        String sql;
        String respuesta=null;
        try {
            sql = "delete from documentosaprobados where fkIdRegistroDocsAprobados ='" + idEliminar + "'";
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            ps.executeUpdate();
            conect.Desconectar();
            sql = "delete from estadoproceso where fkIdRegistroEstadoProceso ='" + idEliminar + "'";
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            ps.executeUpdate();
            conect.Desconectar();
            sql = "delete from fechasseguimiento where fkidRegistro ='" + idEliminar + "'";
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            ps.executeUpdate();
            conect.Desconectar();
            sql = "delete from imagenes where fkImagen='" + idEliminar + "'";
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            ps.executeUpdate();
            conect.Desconectar();
            sql = "delete from infoauto where fkIdRegistro='" + idEliminar + "'";
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            ps.executeUpdate();
            conect.Desconectar();
            sql = "delete from infocarga where fkIdRegistro='" + idEliminar + "'";
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            ps.executeUpdate();
            conect.Desconectar();
            sql = "delete from infocliente where fkIdRegistro='" + idEliminar + "'";
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            ps.executeUpdate();
            conect.Desconectar();
            sql = "delete from insertarregistros where fkIdRegistroInsertar='" + idEliminar + "'";
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            ps.executeUpdate();
            conect.Desconectar();
            sql = "delete from mensajesseguimientos where fkmensgSeguimientos='" + idEliminar + "'";
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            ps.executeUpdate();
            conect.Desconectar();
            sql = "delete from seguimiento where fkIdRegistroSeguimiento='" + idEliminar + "'";
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            ps.executeUpdate();
            conect.Desconectar();
            sql = "delete from infosiniestro where idRegistro='" + idEliminar + "'";
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            ps.executeUpdate();
            conect.Desconectar();
            respuesta="Eliminado con éxito";
        } catch (SQLException e) {
            // TODO: handle exception
            respuesta="Error al eliminar siniestro";
        }
        return respuesta;
    }
}
