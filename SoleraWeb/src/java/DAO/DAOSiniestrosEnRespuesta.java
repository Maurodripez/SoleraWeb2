package DAO;

import java.sql.ResultSet;

import Modelo.Conexion;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DAOSiniestrosEnRespuesta {

    Conexion conect = new Conexion();
    PreparedStatement ps;
    ResultSet rs;
    String sql;
    public int contador0a2 = 0;
    public int contador3a5 = 0;
    public int contador6a14 = 0;
    public int contadormas15 = 0;
    public String terminados = "";
    public String seguimiento = "";
    public String incorrectos = "";
    public void todosDias() throws SQLException {
        sql = "select if(datediff(curdate(), fechaSeguimiento)>=0 and datediff(curdate(), fechaSeguimiento)<3,'yes','no') as diferencia from fechasseguimiento";
        conect.conectar();
        ps = conect.conexion.prepareStatement(sql);
        rs = ps.executeQuery();
        while (rs.next()) {
            if ("yes".equals(rs.getString("diferencia"))) {
                contador0a2 += 1;
            }
        }
        conect.Desconectar();
        sql = "select if(datediff(curdate(), fechaSeguimiento)>=3 and datediff(curdate(), fechaSeguimiento)<6,'yes','no') as diferencia from fechasseguimiento";
        conect.conectar();
        ps = conect.conexion.prepareStatement(sql);
        rs = ps.executeQuery();
        while (rs.next()) {
            if ("yes".equals(rs.getString("diferencia"))) {
                contador3a5 += 1;
            }
        }
        conect.Desconectar();
        sql = "select if(datediff(curdate(), fechaSeguimiento)>=6 and datediff(curdate(), fechaSeguimiento)<15,'yes','no') as diferencia from fechasseguimiento";
        conect.conectar();
        ps = conect.conexion.prepareStatement(sql);
        rs = ps.executeQuery();
        while (rs.next()) {
            if ("yes".equals(rs.getString("diferencia"))) {
                contador6a14 += 1;
            }
        }
        conect.Desconectar();
        sql = "select if(datediff(curdate(), fechaSeguimiento)>=15 and datediff(curdate(), fechaSeguimiento)<45,'yes','no') as diferencia from fechasseguimiento";
        conect.conectar();
        ps = conect.conexion.prepareStatement(sql);
        rs = ps.executeQuery();
        while (rs.next()) {
            if ("yes".equals(rs.getString("diferencia"))) {
                contadormas15 += 1;
            }
        }
        conect.Desconectar();
    }

    public String getPorEstatus(String mayor, String menor) {
        String r = "";
        try {
            // terminados
            sql = "select count(estatusSeguimientoSin) as contador from fechasseguimiento as fs, infosiniestro where fs.fkidRegistro=idRegistro"
                    + " and (estatusSeguimientoSin='TOTAL DE DOCUMENTOS' or estatusSeguimientoSin='TERMINADO POR PROCESO COMPLETO' or estatusSeguimientoSin='TERMINADO ENTREGA ORIGINALES EN OFICINA'"
                    + " or estatusSeguimientoSin='CONCLUIDO POR OTRAS VIAS (BARRA, OFICINA, BROKER)')"
                    + " and (datediff(CURDATE(), fechaSeguimiento)>='" + mayor
                    + "' and datediff(CURDATE(), fechaSeguimiento)<'" + menor + "')";
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                terminados = rs.getString("contador");
            }
            conect.Desconectar();
            // seguimiento
            sql = "select count(estatusSeguimientoSin) as contador from fechasseguimiento as fs, infosiniestro where fs.fkidRegistro=idRegistro"
                    + " and (estatusSeguimientoSin='CASO REABIERTO' or estatusSeguimientoSin='CON CONTACTO SIN DOCUMENTOS' "
                    + " or estatusSeguimientoSin='DE 1 A 3 DOCUMENTOS' or estatusSeguimientoSin='DE 4 A 6 DOCUMENTOS' or estatusSeguimientoSin='DE 7 A 10 DOCUMENTOS'"
                    + " or estatusSeguimientoSin='NUEVO' or estatusSeguimientoSin='SIN CONTACTO')"
                    + " and (datediff(CURDATE(), fechaSeguimiento)>='" + mayor
                    + "' and datediff(CURDATE(), fechaSeguimiento)<'" + menor + "')";
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                seguimiento = rs.getString("contador");
            }
            conect.Desconectar();
            // terminados
            sql = "select count(estatusSeguimientoSin) as contador from fechasseguimiento as fs, infosiniestro where fs.fkidRegistro=idRegistro"
                    + " and (estatusSeguimientoSin='CANCELADO POR ASEGURADORA (DESVIO INTERNO, INVESTIGACION, POLIZA NO PAGADA)'"
                    + " or estatusSeguimientoSin='CON CONTACTO SIN COOPERACION DEL CLIENTE' "
                    + " or estatusSeguimientoSin='DATOS INCORRECTOS' or estatusSeguimientoSin='SIN CONTACTO EN 30 DIAS')"
                    + " and (datediff(CURDATE(), fechaSeguimiento)>='" + mayor
                    + "' and datediff(CURDATE(), fechaSeguimiento)<'" + menor + "')";
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                incorrectos = rs.getString("contador");
            }
            conect.Desconectar();
        } catch (Exception e) {
            // TODO: handle exception
        }
        return r;
    }
}
