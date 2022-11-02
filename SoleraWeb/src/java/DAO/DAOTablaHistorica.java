package DAO;

import java.sql.PreparedStatement;
import Modelo.Conexion;
import Modelo.ModeloTablaSeguimiento;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class DAOTablaHistorica {
    Conexion conect = new Conexion();
    PreparedStatement ps;
    ResultSet rs;
    String sql;

    public String getHistorico(String id) {
        String r = null;
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

    public List<ModeloTablaSeguimiento> getSeguimiento(String id) {
        List<ModeloTablaSeguimiento> lista = new ArrayList<>();
        try {
            sql = "select * from seguimientoprincipal where fkIdRegistroSegPrincipal='" + id + "'";
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                ModeloTablaSeguimiento mtSeguimiento = new ModeloTablaSeguimiento();
                mtSeguimiento.setComentarios(rs.getString("comentarios"));
                mtSeguimiento.setEstacionPrincipal(rs.getString("estacionPrincipal"));
                mtSeguimiento.setEstatusSeguimiento(rs.getString("estatusSeguimiento"));
                mtSeguimiento.setSubEstatus(rs.getString("subEstatus"));
                mtSeguimiento.setRespuestaSolera(rs.getString("respuestaSolera"));
                mtSeguimiento.setPersonaContactada(rs.getString("personaContactada"));
                mtSeguimiento.setTipodePersona(rs.getString("tipodePersona"));
                mtSeguimiento.setContacto(rs.getString("contacto"));
                mtSeguimiento.setIntegraciondeexpediente(rs.getString("integraciondeexpediente"));
                mtSeguimiento.setFacturaciondeservicio(rs.getString("facturaciondeservicio"));
                mtSeguimiento.setTermino(rs.getString("termino"));
                mtSeguimiento.setFechaseguimiento(rs.getString("fechaseguimiento"));
                mtSeguimiento.setUsuario(rs.getString("usuario"));
                mtSeguimiento.setFechaasigncion(rs.getString("fechaasigncion"));
                mtSeguimiento.setFkIdRegistroSegPrincipal(rs.getString("fkIdRegistroSegPrincipal"));
                mtSeguimiento.setUsuarioAsignado(rs.getString("usuarioAsignado"));
                lista.add(mtSeguimiento);
            }
        } catch (Exception e) {
            // TODO: handle exception
        }
        return lista;

    }
}
