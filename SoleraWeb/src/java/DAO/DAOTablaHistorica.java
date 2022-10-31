package DAO;

import java.sql.PreparedStatement;
import Modelo.Conexion;
import java.sql.ResultSet;

public class DAOTablaHistorica {
    public String getHistorico(String id) {
        String r = null;
        Conexion conect = new Conexion();
        PreparedStatement ps;
        ResultSet rs;
        String sql;
        String fechaCarga;
        String estatus;
        String usuario;
        try {
            sql = "select fechaCarga, usuarioCarga, estatusOperativo from infosiniestro, estadoproceso where idRegistro='"
                    + id + "' and fkIdRegistroEstadoProceso='" + id + "'";
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                fechaCarga = rs.getString("fechaCarga");
                estatus = rs.getString("estatusOperativo");
                usuario = rs.getString("usuarioCarga");
                r = fechaCarga + "-_/" + estatus + "-_/" + usuario;
            }
        } catch (Exception e) {
            r = "error al ejecutar";
            // TODO: handle exception
        }
        return r;
    }
}
