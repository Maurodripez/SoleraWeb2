package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Modelo.Conexion;
import Modelo.ModeloAnalisisUsuario;

public class AnalisisUsuarios {
    public String getAnalisis() {
        Conexion conect = new Conexion();
        String r = "0";
        PreparedStatement ps;
        ResultSet rs;
        String sql;
        List<ModeloAnalisisUsuario> lista = new ArrayList<>();
        String totalMov = "";
        try {
            sql = "SELECT WEEKDAY (now()) AS dia";
            String dia = "";
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                dia = rs.getString("dia");
            }
            conect.Desconectar();
            switch (dia) {
                case "0":
                    break;
                case "1":
                    break;
                case "2":
                    break;
                case "3":
                    break;
                case "4":
                    break;
                case "5":
                    sql = "select count(usuario) as totalMov from seguimientoprincipal where usuario='Teresa Medina' and week(fechaseguimiento)=WEEKOFYEAR(NOW())";
                    conect.conectar();
                    ps = conect.conexion.prepareStatement(sql);
                    rs = ps.executeQuery();
                    while (rs.next()) {
                        totalMov = rs.getString("totalMov");
                    }
                    conect.Desconectar();
                    sql = "select count(usuario) as dia from seguimientoprincipal where usuario='Teresa Medina' and fechaseguimiento=curdate() - interval 5 day";
                    conect.conectar();
                    ps = conect.conexion.prepareStatement(sql);
                    rs = ps.executeQuery();
                    while (rs.next()) {
                        ModeloAnalisisUsuario maUsuario = new ModeloAnalisisUsuario();
                        maUsuario.setLunes(rs.getString("dia"));
                        r = rs.getString("dia");
                    }
                    break;
                case "6":
                    break;
            }
            conect.Desconectar();
        } catch (Exception e) {
            // TODO: handle exception
        }
        return r;
    }
}
