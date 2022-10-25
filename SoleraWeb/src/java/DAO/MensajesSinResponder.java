package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import Modelo.Conexion;
import Modelo.ModeloMsgSinResponder;

import java.sql.SQLException;

public class MensajesSinResponder {
    public int getMensajes(int mayor, int menor) {
        int cantidad = 0;
        Conexion conect = new Conexion();
        PreparedStatement ps;
        ResultSet rs;
        String sql = "select respondido,fkmensgSeguimientos from mensajesseguimientos"
                + " where datediff(CURDATE(), fechaMensaje)>='" + mayor + "' and datediff(CURDATE(), fechaMensaje)<'"
                + menor + "' and respondido ='no' group by fkmensgSeguimientos";
        try {
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                cantidad += 1;
            }
        } catch (SQLException e) {
            // TODO: handle exception
        }
        return cantidad;
    }
}
