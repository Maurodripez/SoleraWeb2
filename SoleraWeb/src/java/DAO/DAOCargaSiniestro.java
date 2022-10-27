package DAO;

import java.sql.PreparedStatement;

import Modelo.Conexion;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DAOCargaSiniestro {
    // script para la creacion del nuevo registro y sus fk
    public String setSiniestro(String numSiniestro, String fechaSiniestro, String numPoliza, String cobertura,
            String afectado, String nomAsegurado, String regimen, String telefonoPrincipal, String telefonoSec,
            String correo, String marca, String tipo, String modelo, String numSerie, String ciudad,
            String fechaDecreto, String taller) {
        Conexion conect = new Conexion();
        PreparedStatement ps;
        ResultSet rs;
        String respuesta = "nada";
        try {
            String id = null;
            String sql = "insert into infosiniestro(numSiniestro,fechaSiniestro,poliza,cobertura,afectado,regimenFiscal,ciudad,ubicacionTaller,fechaDecreto,fechaCarga)"
                    + " values('" + numSiniestro + "','" + fechaSiniestro + "','" + numPoliza + "','" + cobertura
                    + "','" + afectado + "','" + regimen + "','" + ciudad + "','" + taller + "','" + fechaDecreto
                    + "',now())";
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            ps.executeUpdate();
            conect.Desconectar();

            sql = "select idRegistro from infosiniestro where numSiniestro ='" + numSiniestro + "'";
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            rs = ps.executeQuery();

            while (rs.next()) {
                id = rs.getString("idRegistro");
            }
            conect.Desconectar();
            sql = "insert into infocliente(asegurado,telefonoPrincipal,telefonosecundario,correo,fkIdRegistro)"
                    + " values('" + nomAsegurado + "','" + telefonoPrincipal + "','" + telefonoSec + "','" + correo
                    + "','" + id + "')";
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            ps.executeUpdate();
            conect.Desconectar();
            sql = "insert into infoauto(marca,tipo,modelo,numSerie,infoauto.fkIdRegistro) values('" + marca
                    + "','" + modelo + "','" + tipo + "','" + numSerie + "','" + id + "')";
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            ps.executeUpdate();
            conect.Desconectar();
            sql = "insert into documentosaprobados(fkIdRegistroDocsAprobados)values('" + id + "')";
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            ps.executeUpdate();
            conect.Desconectar();
            sql = "insert into estadoproceso(fkIdRegistroEstadoProceso,estacionProceso,estatusOperativo)values('" + id
                    + "','Nuevo','Nuevo')";
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            ps.executeUpdate();
            conect.Desconectar();
            sql = "insert into fechasseguimiento(fkidRegistro,fechaSeguimiento)values('" + id + "',now())";
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            ps.executeUpdate();
            conect.Desconectar();
            sql = "insert into insertarregistros(fkIdRegistroInsertar)values('" + id + "')";
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            ps.executeUpdate();
            conect.Desconectar();
            sql = "insert into seguimiento(fkIdRegistroSeguimiento)values('" + id + "')";
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            ps.executeUpdate();
            conect.Desconectar();
            respuesta = "ejecucion con exito";
        } catch (SQLException e) {
            // TODO: handle exception
            respuesta = "Error al guardar";
        }
        return respuesta;
    }
}
