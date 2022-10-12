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

    public void todosDias() throws SQLException {
        sql = "select if(datediff(curdate(), fechaCarga)>=0 and datediff(curdate(), fechaCarga)<3,'yes','no') as diferencia from infosiniestro";
        conect.conectar();
        ps = conect.conexion.prepareStatement(sql);
        rs = ps.executeQuery();
        while (rs.next()) {
            if ("yes".equals(rs.getString("diferencia"))) {
                contador0a2 += 1;
            }
        }
        conect.Desconectar();
        sql = "select if(datediff(curdate(), fechaCarga)>=3 and datediff(curdate(), fechaCarga)<6,'yes','no') as diferencia from infosiniestro";
        conect.conectar();
        ps = conect.conexion.prepareStatement(sql);
        rs = ps.executeQuery();
        while (rs.next()) {
            if ("yes".equals(rs.getString("diferencia"))) {
                contador3a5 += 1;
            }
        }
        conect.Desconectar();
        sql = "select if(datediff(curdate(), fechaCarga)>=6 and datediff(curdate(), fechaCarga)<15,'yes','no') as diferencia from infosiniestro";
        conect.conectar();
        ps = conect.conexion.prepareStatement(sql);
        rs = ps.executeQuery();
        while (rs.next()) {
            if ("yes".equals(rs.getString("diferencia"))) {
                contador6a14 += 1;
            }
        }
        conect.Desconectar();
        sql = "select if(datediff(curdate(), fechaCarga)>=15,'yes','no') as diferencia from infosiniestro";
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
}
