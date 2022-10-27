package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import Modelo.Conexion;
import java.sql.SQLException;

public class DiasEsperandoRespuesta {
    Conexion conect = new Conexion();
    public int dias0a2 = 0;
    public int dias3a5 = 0;
    public int dias6a14 = 0;
    public int diasMas15 = 0;

    public int Dias0a2() {
        String sql = "select count(datediff(CURDATE(), fseguimiento.fechaPrimerEnvioDoc)) AS 'Dias Transcurridos'"
                + " from fechasseguimiento as fSeguimiento where datediff(CURDATE(), fseguimiento.fechaPrimerEnvioDoc)<3";
        PreparedStatement ps;
        ResultSet rs;
        try {
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                dias0a2 = rs.getInt("Dias Transcurridos");
            }
        } catch (SQLException e) {
            // TODO: handle exception
        }
        return dias0a2;
    }

    public int Dias3a5() {
        String sql = "select count(datediff(CURDATE(), fseguimiento.fechaPrimerEnvioDoc)) AS 'Dias Transcurridos'"
                + " from fechasseguimiento as fSeguimiento where datediff(CURDATE(), fseguimiento.fechaPrimerEnvioDoc)>2 "
                + "and datediff(CURDATE(), fseguimiento.fechaPrimerEnvioDoc)<6";
        PreparedStatement ps;
        ResultSet rs;
        try {
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                dias3a5 = rs.getInt("Dias Transcurridos");
            }
        } catch (SQLException e) {
            // TODO: handle exception
        }
        return dias3a5;
    }

    public int Dias6a14() {
        String sql = "select count(datediff(CURDATE(), fseguimiento.fechaPrimerEnvioDoc)) AS 'Dias Transcurridos'"
                + " from fechasseguimiento as fSeguimiento where datediff(CURDATE(), fseguimiento.fechaPrimerEnvioDoc)>5 "
                + "and datediff(CURDATE(), fseguimiento.fechaPrimerEnvioDoc)<15";
        PreparedStatement ps;
        ResultSet rs;
        try {
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                dias6a14 = rs.getInt("Dias Transcurridos");
            }
        } catch (SQLException e) {
            // TODO: handle exception
        }
        return dias6a14;
    }

    public int DiasMas15() {
        String sql = "select count(datediff(CURDATE(), fseguimiento.fechaPrimerEnvioDoc)) AS 'Dias Transcurridos'"
                + " from fechasseguimiento as fSeguimiento where datediff(CURDATE(), fseguimiento.fechaPrimerEnvioDoc)>15";
        PreparedStatement ps;
        ResultSet rs;
        try {
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                diasMas15 = rs.getInt("Dias Transcurridos");
            }
        } catch (SQLException e) {
            // TODO: handle exception
        }
        return diasMas15;
    }
}
