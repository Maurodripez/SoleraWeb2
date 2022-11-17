package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Modelo.Conexion;
import Modelo.ModeloGrandeAnalisis;

public class AnalisisUsuarios {
    public String getAnalisis() {
        String r2 = "";
        Conexion conect = new Conexion();
        PreparedStatement ps;
        ResultSet rs;
        String sql;
        String usuario = "";
        try {
            sql = "SELECT nombreReal FROM solera.usuarios where privilegios='operador'";
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                usuario = usuario + rs.getString("nombreReal") + "//--__";
            }
            String[] partes = usuario.split("//--__");
            int tamano = partes.length;
            conect.Desconectar();
            sql = "SELECT WEEKDAY (now()) AS dia";
            String dia = "";
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                dia = rs.getString("dia");
            }
            conect.Desconectar();
            for (int i = 0; i < tamano; i++) {
                switch (dia) {
                    case "0":
                        r2 = r2 + partes[i] + "-_/";
                        sql = "select count(usuario) as totalMov from seguimientoprincipal where usuario='" + partes[i]
                                + "' and week(fechaseguimiento)=WEEKOFYEAR(NOW()- interval 0 week)";
                        conect.conectar();
                        ps = conect.conexion.prepareStatement(sql);
                        rs = ps.executeQuery();
                        while (rs.next()) {
                            r2 = r2 + rs.getString("totalMov") + "-_/";

                        }
                        conect.Desconectar();
                        sql = "select count(usuario) as dia from seguimientoprincipal where usuario='" + partes[i]
                                + "' and fechaseguimiento=curdate() - interval 0 day";
                        conect.conectar();
                        ps = conect.conexion.prepareStatement(sql);
                        rs = ps.executeQuery();
                        while (rs.next()) {
                            r2 = r2 + rs.getString("dia") + "-_/";
                        }
                        conect.Desconectar();
                        r2 = r2 + "0-_/";
                        r2 = r2 + "0-_/";
                        r2 = r2 + "0-_/";
                        r2 = r2 + "0-_/";
                        r2 = r2 + "0-_/";
                        sql = "select count(usuario) as dia from seguimientoprincipal where usuario='" + partes[i]
                                + "' and fechaseguimiento=curdate() - interval 1 day";
                        conect.conectar();
                        ps = conect.conexion.prepareStatement(sql);
                        rs = ps.executeQuery();
                        while (rs.next()) {
                            r2 = r2 + rs.getString("dia") + "/-_";
                        }
                        conect.Desconectar();
                        break;
                    case "1":
                        r2 = r2 + partes[i] + "-_/";
                        sql = "select count(usuario) as totalMov from seguimientoprincipal where usuario='" + partes[i]
                                + "' and week(fechaseguimiento)=WEEKOFYEAR(NOW()- interval 0 week)";
                        conect.conectar();
                        ps = conect.conexion.prepareStatement(sql);
                        rs = ps.executeQuery();
                        while (rs.next()) {
                            r2 = r2 + rs.getString("totalMov") + "-_/";

                        }
                        conect.Desconectar();
                        sql = "select count(usuario) as dia from seguimientoprincipal where usuario='" + partes[i]
                                + "' and fechaseguimiento=curdate() - interval 1 day";
                        conect.conectar();
                        ps = conect.conexion.prepareStatement(sql);
                        rs = ps.executeQuery();
                        while (rs.next()) {
                            r2 = r2 + rs.getString("dia") + "-_/";
                        }
                        conect.Desconectar();
                        sql = "select count(usuario) as dia from seguimientoprincipal where usuario='" + partes[i]
                                + "' and fechaseguimiento=curdate() - interval 0 day";
                        conect.conectar();
                        ps = conect.conexion.prepareStatement(sql);
                        rs = ps.executeQuery();
                        while (rs.next()) {
                            r2 = r2 + rs.getString("dia") + "-_/";
                        }
                        r2 = r2 + "0-_/";
                        r2 = r2 + "0-_/";
                        r2 = r2 + "0-_/";
                        r2 = r2 + "0-_/";
                        sql = "select count(usuario) as dia from seguimientoprincipal where usuario='" + partes[i]
                                + "' and fechaseguimiento=curdate() - interval 2 day";
                        conect.conectar();
                        ps = conect.conexion.prepareStatement(sql);
                        rs = ps.executeQuery();
                        while (rs.next()) {
                            r2 = r2 + rs.getString("dia") + "/-_";
                        }
                        conect.Desconectar();
                        break;
                    case "2":
                        r2 = r2 + partes[i] + "-_/";
                        sql = "select count(usuario) as totalMov from seguimientoprincipal where usuario='" + partes[i]
                                + "' and week(fechaseguimiento)=WEEKOFYEAR(NOW()- interval 0 week)";
                        conect.conectar();
                        ps = conect.conexion.prepareStatement(sql);
                        rs = ps.executeQuery();
                        while (rs.next()) {
                            r2 = r2 + rs.getString("totalMov") + "-_/";

                        }
                        conect.Desconectar();
                        sql = "select count(usuario) as dia from seguimientoprincipal where usuario='" + partes[i]
                                + "' and fechaseguimiento=curdate() - interval 2 day";
                        conect.conectar();
                        ps = conect.conexion.prepareStatement(sql);
                        rs = ps.executeQuery();
                        while (rs.next()) {
                            r2 = r2 + rs.getString("dia") + "-_/";
                        }
                        conect.Desconectar();
                        sql = "select count(usuario) as dia from seguimientoprincipal where usuario='" + partes[i]
                                + "' and fechaseguimiento=curdate() - interval 1 day";
                        conect.conectar();
                        ps = conect.conexion.prepareStatement(sql);
                        rs = ps.executeQuery();
                        while (rs.next()) {
                            r2 = r2 + rs.getString("dia") + "-_/";
                        }
                        conect.Desconectar();
                        sql = "select count(usuario) as dia from seguimientoprincipal where usuario='" + partes[i]
                                + "' and fechaseguimiento=curdate() - interval 0 day";
                        conect.conectar();
                        ps = conect.conexion.prepareStatement(sql);
                        rs = ps.executeQuery();
                        while (rs.next()) {
                            r2 = r2 + rs.getString("dia") + "-_/";
                        }
                        r2 = r2 + "0-_/";
                        r2 = r2 + "0-_/";
                        r2 = r2 + "0-_/";
                        sql = "select count(usuario) as dia from seguimientoprincipal where usuario='" + partes[i]
                                + "' and fechaseguimiento=curdate() - interval 3 day";
                        conect.conectar();
                        ps = conect.conexion.prepareStatement(sql);
                        rs = ps.executeQuery();
                        while (rs.next()) {
                            r2 = r2 + rs.getString("dia") + "/-_";
                        }
                        conect.Desconectar();
                        break;
                    case "3":
                        r2 = r2 + partes[i] + "-_/";
                        sql = "select count(usuario) as totalMov from seguimientoprincipal where usuario='" + partes[i]
                                + "' and week(fechaseguimiento)=WEEKOFYEAR(NOW()- interval 0 week)";
                        conect.conectar();
                        ps = conect.conexion.prepareStatement(sql);
                        rs = ps.executeQuery();
                        while (rs.next()) {
                            r2 = r2 + rs.getString("totalMov") + "-_/";

                        }
                        conect.Desconectar();
                        sql = "select count(usuario) as dia from seguimientoprincipal where usuario='" + partes[i]
                                + "' and fechaseguimiento=curdate() - interval 3 day";
                        conect.conectar();
                        ps = conect.conexion.prepareStatement(sql);
                        rs = ps.executeQuery();
                        while (rs.next()) {
                            r2 = r2 + rs.getString("dia") + "-_/";
                        }
                        conect.Desconectar();
                        sql = "select count(usuario) as dia from seguimientoprincipal where usuario='" + partes[i]
                                + "' and fechaseguimiento=curdate() - interval 2 day";
                        conect.conectar();
                        ps = conect.conexion.prepareStatement(sql);
                        rs = ps.executeQuery();
                        while (rs.next()) {
                            r2 = r2 + rs.getString("dia") + "-_/";
                        }
                        conect.Desconectar();
                        sql = "select count(usuario) as dia from seguimientoprincipal where usuario='" + partes[i]
                                + "' and fechaseguimiento=curdate() - interval 1 day";
                        conect.conectar();
                        ps = conect.conexion.prepareStatement(sql);
                        rs = ps.executeQuery();
                        while (rs.next()) {
                            r2 = r2 + rs.getString("dia") + "-_/";
                        }
                        conect.Desconectar();
                        sql = "select count(usuario) as dia from seguimientoprincipal where usuario='" + partes[i]
                                + "' and fechaseguimiento=curdate() - interval 0 day";
                        conect.conectar();
                        ps = conect.conexion.prepareStatement(sql);
                        rs = ps.executeQuery();
                        while (rs.next()) {
                            r2 = r2 + rs.getString("dia") + "-_/";
                        }
                        conect.Desconectar();
                        r2 = r2 + "0-_/";
                        r2 = r2 + "0-_/";
                        sql = "select count(usuario) as dia from seguimientoprincipal where usuario='" + partes[i]
                                + "' and fechaseguimiento=curdate() - interval 4 day";
                        conect.conectar();
                        ps = conect.conexion.prepareStatement(sql);
                        rs = ps.executeQuery();
                        while (rs.next()) {
                            r2 = r2 + rs.getString("dia") + "/-_";
                        }
                        conect.Desconectar();
                        break;
                    case "4":
                        r2 = r2 + partes[i] + "-_/";
                        sql = "select count(usuario) as totalMov from seguimientoprincipal where usuario='" + partes[i]
                                + "' and week(fechaseguimiento)=WEEKOFYEAR(NOW()- interval 0 week)";
                        conect.conectar();
                        ps = conect.conexion.prepareStatement(sql);
                        rs = ps.executeQuery();
                        while (rs.next()) {
                            r2 = r2 + rs.getString("totalMov") + "-_/";

                        }
                        conect.Desconectar();
                        sql = "select count(usuario) as dia from seguimientoprincipal where usuario='" + partes[i]
                                + "' and fechaseguimiento=curdate() - interval 4 day";
                        conect.conectar();
                        ps = conect.conexion.prepareStatement(sql);
                        rs = ps.executeQuery();
                        while (rs.next()) {
                            r2 = r2 + rs.getString("dia") + "-_/";
                        }
                        conect.Desconectar();
                        sql = "select count(usuario) as dia from seguimientoprincipal where usuario='" + partes[i]
                                + "' and fechaseguimiento=curdate() - interval 3 day";
                        conect.conectar();
                        ps = conect.conexion.prepareStatement(sql);
                        rs = ps.executeQuery();
                        while (rs.next()) {
                            r2 = r2 + rs.getString("dia") + "-_/";
                        }
                        conect.Desconectar();
                        sql = "select count(usuario) as dia from seguimientoprincipal where usuario='" + partes[i]
                                + "' and fechaseguimiento=curdate() - interval 2 day";
                        conect.conectar();
                        ps = conect.conexion.prepareStatement(sql);
                        rs = ps.executeQuery();
                        while (rs.next()) {
                            r2 = r2 + rs.getString("dia") + "-_/";
                        }
                        conect.Desconectar();
                        sql = "select count(usuario) as dia from seguimientoprincipal where usuario='" + partes[i]
                                + "' and fechaseguimiento=curdate() - interval 1 day";
                        conect.conectar();
                        ps = conect.conexion.prepareStatement(sql);
                        rs = ps.executeQuery();
                        while (rs.next()) {
                            r2 = r2 + rs.getString("dia") + "-_/";
                        }
                        conect.Desconectar();
                        sql = "select count(usuario) as dia from seguimientoprincipal where usuario='" + partes[i]
                                + "' and fechaseguimiento=curdate() - interval 0 day";
                        conect.conectar();
                        ps = conect.conexion.prepareStatement(sql);
                        rs = ps.executeQuery();
                        while (rs.next()) {
                            r2 = r2 + rs.getString("dia") + "-_/";
                        }
                        conect.Desconectar();
                        r2 = r2 + "0-_/";
                        sql = "select count(usuario) as dia from seguimientoprincipal where usuario='" + partes[i]
                                + "' and fechaseguimiento=curdate() - interval 5 day";
                        conect.conectar();
                        ps = conect.conexion.prepareStatement(sql);
                        rs = ps.executeQuery();
                        while (rs.next()) {
                            r2 = r2 + rs.getString("dia") + "/-_";
                        }
                        conect.Desconectar();
                        break;
                    case "5":
                        r2 = r2 + partes[i] + "-_/";
                        sql = "select count(usuario) as totalMov from seguimientoprincipal where usuario='" + partes[i]
                                + "' and week(fechaseguimiento)=WEEKOFYEAR(NOW()- interval 0 week)";
                        conect.conectar();
                        ps = conect.conexion.prepareStatement(sql);
                        rs = ps.executeQuery();
                        while (rs.next()) {
                            r2 = r2 + rs.getString("totalMov") + "-_/";

                        }
                        conect.Desconectar();
                        sql = "select count(usuario) as dia from seguimientoprincipal where usuario='" + partes[i]
                                + "' and fechaseguimiento=curdate() - interval 5 day";
                        conect.conectar();
                        ps = conect.conexion.prepareStatement(sql);
                        rs = ps.executeQuery();
                        while (rs.next()) {
                            r2 = r2 + rs.getString("dia") + "-_/";
                        }
                        conect.Desconectar();
                        sql = "select count(usuario) as dia from seguimientoprincipal where usuario='" + partes[i]
                                + "' and fechaseguimiento=curdate() - interval 4 day";
                        conect.conectar();
                        ps = conect.conexion.prepareStatement(sql);
                        rs = ps.executeQuery();
                        while (rs.next()) {
                            r2 = r2 + rs.getString("dia") + "-_/";
                        }
                        conect.Desconectar();
                        sql = "select count(usuario) as dia from seguimientoprincipal where usuario='" + partes[i]
                                + "' and fechaseguimiento=curdate() - interval 3 day";
                        conect.conectar();
                        ps = conect.conexion.prepareStatement(sql);
                        rs = ps.executeQuery();
                        while (rs.next()) {
                            r2 = r2 + rs.getString("dia") + "-_/";
                        }
                        conect.Desconectar();
                        sql = "select count(usuario) as dia from seguimientoprincipal where usuario='" + partes[i]
                                + "' and fechaseguimiento=curdate() - interval 2 day";
                        conect.conectar();
                        ps = conect.conexion.prepareStatement(sql);
                        rs = ps.executeQuery();
                        while (rs.next()) {
                            r2 = r2 + rs.getString("dia") + "-_/";
                        }
                        conect.Desconectar();
                        sql = "select count(usuario) as dia from seguimientoprincipal where usuario='" + partes[i]
                                + "' and fechaseguimiento=curdate() - interval 1 day";
                        conect.conectar();
                        ps = conect.conexion.prepareStatement(sql);
                        rs = ps.executeQuery();
                        while (rs.next()) {
                            r2 = r2 + rs.getString("dia") + "-_/";
                        }
                        conect.Desconectar();
                        sql = "select count(usuario) as dia from seguimientoprincipal where usuario='" + partes[i]
                                + "' and fechaseguimiento=curdate() - interval 0 day";
                        conect.conectar();
                        ps = conect.conexion.prepareStatement(sql);
                        rs = ps.executeQuery();
                        while (rs.next()) {
                            r2 = r2 + rs.getString("dia") + "-_/";
                        }
                        conect.Desconectar();
                        sql = "select count(usuario) as dia from seguimientoprincipal where usuario='" + partes[i]
                                + "' and fechaseguimiento=curdate() - interval 6 day";
                        conect.conectar();
                        ps = conect.conexion.prepareStatement(sql);
                        rs = ps.executeQuery();
                        while (rs.next()) {
                            r2 = r2 + rs.getString("dia") + "/-_";
                        }
                        conect.Desconectar();
                        break;
                    case "6":
                        r2 = r2 + partes[i] + "-_/";
                        sql = "select count(usuario) as totalMov from seguimientoprincipal where usuario='" + partes[i]
                                + "' and week(fechaseguimiento)=WEEKOFYEAR(NOW()- interval 0 week)";
                        conect.conectar();
                        ps = conect.conexion.prepareStatement(sql);
                        rs = ps.executeQuery();
                        while (rs.next()) {
                            r2 = r2 + rs.getString("totalMov") + "-_/";

                        }
                        conect.Desconectar();
                        sql = "select count(usuario) as dia from seguimientoprincipal where usuario='" + partes[i]
                                + "' and fechaseguimiento=curdate() - interval 6 day";
                        conect.conectar();
                        ps = conect.conexion.prepareStatement(sql);
                        rs = ps.executeQuery();
                        while (rs.next()) {
                            r2 = r2 + rs.getString("dia") + "-_/";
                        }
                        conect.Desconectar();
                        sql = "select count(usuario) as dia from seguimientoprincipal where usuario='" + partes[i]
                                + "' and fechaseguimiento=curdate() - interval 5 day";
                        conect.conectar();
                        ps = conect.conexion.prepareStatement(sql);
                        rs = ps.executeQuery();
                        while (rs.next()) {
                            r2 = r2 + rs.getString("dia") + "-_/";
                        }
                        conect.Desconectar();
                        sql = "select count(usuario) as dia from seguimientoprincipal where usuario='" + partes[i]
                                + "' and fechaseguimiento=curdate() - interval 4 day";
                        conect.conectar();
                        ps = conect.conexion.prepareStatement(sql);
                        rs = ps.executeQuery();
                        while (rs.next()) {
                            r2 = r2 + rs.getString("dia") + "-_/";
                        }
                        conect.Desconectar();
                        sql = "select count(usuario) as dia from seguimientoprincipal where usuario='" + partes[i]
                                + "' and fechaseguimiento=curdate() - interval 3 day";
                        conect.conectar();
                        ps = conect.conexion.prepareStatement(sql);
                        rs = ps.executeQuery();
                        while (rs.next()) {
                            r2 = r2 + rs.getString("dia") + "-_/";
                        }
                        conect.Desconectar();
                        sql = "select count(usuario) as dia from seguimientoprincipal where usuario='" + partes[i]
                                + "' and fechaseguimiento=curdate() - interval 2 day";
                        conect.conectar();
                        ps = conect.conexion.prepareStatement(sql);
                        rs = ps.executeQuery();
                        while (rs.next()) {
                            r2 = r2 + rs.getString("dia") + "-_/";
                        }
                        conect.Desconectar();
                        sql = "select count(usuario) as dia from seguimientoprincipal where usuario='" + partes[i]
                                + "' and fechaseguimiento=curdate() - interval 1 day";
                        conect.conectar();
                        ps = conect.conexion.prepareStatement(sql);
                        rs = ps.executeQuery();
                        while (rs.next()) {
                            r2 = r2 + rs.getString("dia") + "-_/";
                        }
                        conect.Desconectar();
                        sql = "select count(usuario) as dia from seguimientoprincipal where usuario='" + partes[i]
                                + "' and fechaseguimiento=curdate() - interval 7 day";
                        conect.conectar();
                        ps = conect.conexion.prepareStatement(sql);
                        rs = ps.executeQuery();
                        while (rs.next()) {
                            r2 = r2 + rs.getString("dia") + "/-_";
                        }
                        conect.Desconectar();
                        break;
                }
            }
        } catch (Exception e) {
            // TODO: handle exception
        }
        return r2;
    }

    public String getAnalisisintervalo(String fechaInicio, String fechaTermino) {
        String r = "0";
        String r2 = "";
        Conexion conect = new Conexion();
        PreparedStatement ps;
        ResultSet rs;
        String sql;
        String usuario = "";
        try {
            sql = "SELECT nombreReal FROM solera.usuarios where privilegios='operador'";
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                usuario = usuario + rs.getString("nombreReal") + "//--__";
            }
            r = "1";
            String[] partes = usuario.split("//--__");
            int tamano = partes.length;
            conect.Desconectar();
            for (int i = 0; i < tamano; i++) {
                r2 = r2 + partes[i] + "-_/";
                sql = "select count(usuario) as cantidad,usuario from seguimientoprincipal"
                        + " where DAYNAME(fechaseguimiento)='lunes' and fechaseguimiento >'" + fechaInicio
                        + "' and fechaseguimiento<='" + fechaTermino
                        + "'"
                        + " and usuario='" + partes[i] + "'";
                conect.conectar();
                ps = conect.conexion.prepareStatement(sql);
                rs = ps.executeQuery();
                while (rs.next()) {
                    r2 = r2 + rs.getString("cantidad") + "-_/";
                }
                r = "2";
                conect.Desconectar();
                sql = "select count(usuario) as cantidad,usuario from seguimientoprincipal"
                        + " where DAYNAME(fechaseguimiento)='martes' and fechaseguimiento >'" + fechaInicio
                        + "' and fechaseguimiento<='" + fechaTermino
                        + "'"
                        + " and usuario='" + partes[i] + "'";
                conect.conectar();
                ps = conect.conexion.prepareStatement(sql);
                rs = ps.executeQuery();
                while (rs.next()) {
                    r2 = r2 + rs.getString("cantidad") + "-_/";
                }
                r = "3";
                conect.Desconectar();
                sql = "select count(usuario) as cantidad,usuario from seguimientoprincipal"
                        + " where DAYNAME(fechaseguimiento)='miercoles' and fechaseguimiento >'" + fechaInicio
                        + "' and fechaseguimiento<='" + fechaTermino
                        + "'"
                        + " and usuario='" + partes[i] + "'";
                conect.conectar();
                ps = conect.conexion.prepareStatement(sql);
                rs = ps.executeQuery();
                while (rs.next()) {
                    r2 = r2 + rs.getString("cantidad") + "-_/";
                }
                r = "4";
                conect.Desconectar();
                sql = "select count(usuario) as cantidad,usuario from seguimientoprincipal"
                        + " where DAYNAME(fechaseguimiento)='jueves' and fechaseguimiento >'" + fechaInicio
                        + "' and fechaseguimiento<='" + fechaTermino
                        + "'"
                        + " and usuario='" + partes[i] + "'";
                conect.conectar();
                ps = conect.conexion.prepareStatement(sql);
                rs = ps.executeQuery();
                while (rs.next()) {
                    r2 = r2 + rs.getString("cantidad") + "-_/";
                }
                r = "5";
                conect.Desconectar();
                sql = "select count(usuario) as cantidad,usuario from seguimientoprincipal"
                        + " where DAYNAME(fechaseguimiento)='viernes' and fechaseguimiento >'" + fechaInicio
                        + "' and fechaseguimiento<='" + fechaTermino
                        + "'"
                        + " and usuario='" + partes[i] + "'";
                conect.conectar();
                ps = conect.conexion.prepareStatement(sql);
                rs = ps.executeQuery();
                while (rs.next()) {
                    r2 = r2 + rs.getString("cantidad") + "-_/";
                }
                r = "6";
                conect.Desconectar();
                sql = "select count(usuario) as cantidad,usuario from seguimientoprincipal"
                        + " where DAYNAME(fechaseguimiento)='sabado' and fechaseguimiento >'" + fechaInicio
                        + "' and fechaseguimiento<='" + fechaTermino
                        + "'"
                        + " and usuario='" + partes[i] + "'";
                conect.conectar();
                ps = conect.conexion.prepareStatement(sql);
                rs = ps.executeQuery();
                while (rs.next()) {
                    r2 = r2 + rs.getString("cantidad") + "-_/";
                }
                r = "7";
                conect.Desconectar();
                sql = "select count(usuario) as cantidad,usuario from seguimientoprincipal"
                        + " where DAYNAME(fechaseguimiento)='domingo' and fechaseguimiento >'" + fechaInicio
                        + "' and fechaseguimiento<='" + fechaTermino
                        + "'"
                        + " and usuario='" + partes[i] + "'";
                conect.conectar();
                ps = conect.conexion.prepareStatement(sql);
                rs = ps.executeQuery();
                while (rs.next()) {
                    r2 = r2 + rs.getString("cantidad") + "-_/";
                }
                r = "8";
                conect.Desconectar();
                sql = "select count(usuario) as cantidad from seguimientoprincipal "
                        + " where fechaseguimiento >'" + fechaInicio + "' and fechaseguimiento<='" + fechaTermino + "'"
                        + " and usuario='" + partes[i] + "'";
                conect.conectar();
                ps = conect.conexion.prepareStatement(sql);
                rs = ps.executeQuery();
                while (rs.next()) {
                    r2 = r2 + rs.getString("cantidad") + "/-_";
                }
                r = "9";
                conect.Desconectar();
            }
        } catch (Exception e) {
            // TODO: handle exception
        }
        return r2;
    }

    public List<ModeloGrandeAnalisis> getAnalisisGrande(String fechaInicio, String fechaTermino) {
        List<ModeloGrandeAnalisis> lista = new ArrayList<>();
        String r = "0";
        try {
            Conexion conect = new Conexion();
            PreparedStatement ps;
            ResultSet rs;
            String sql;
            sql = "select usuario, fechaseguimiento, estatusSeguimiento, comentarios, numSiniestro,poliza,asegurado,marca,tipo,modelo,numSerie,estado,region"
                    + " from infosiniestro as isin,infocliente as ic,infoauto as ia,seguimientoprincipal as sp "
                    + " where idRegistro=ic.fkIdRegistro and idRegistro=ia.fkIdRegistro and idRegistro=sp.fkIdRegistroSegPrincipal "
                    + " and fechaseguimiento>'2022-10-12' and fechaseguimiento<='2022-11-10'";
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            rs = ps.executeQuery();
            r = "1";
            while (rs.next()) {
                ModeloGrandeAnalisis mgAnalisis = new ModeloGrandeAnalisis();
                mgAnalisis.setUsuario(rs.getString("usuario"));
                mgAnalisis.setFechaseguimiento(rs.getString("fechaseguimiento"));
                mgAnalisis.setEstatusSeguimiento(rs.getString("estatusSeguimiento"));
                mgAnalisis.setComentarios(rs.getString("comentarios"));
                mgAnalisis.setNumSiniestro(rs.getString("numSiniestro"));
                mgAnalisis.setPoliza(rs.getString("poliza"));
                mgAnalisis.setAsegurado(rs.getString("asegurado"));
                mgAnalisis.setMarca(rs.getString("marca"));
                mgAnalisis.setTipo(rs.getString("tipo"));
                mgAnalisis.setModelo(rs.getString("modelo"));
                mgAnalisis.setNumSerie(rs.getString("numSerie"));
                mgAnalisis.setEstado(rs.getString("estado"));
                mgAnalisis.setRegion(rs.getString("region"));
                lista.add(mgAnalisis);
                r = "2";
            }
        } catch (Exception e) {
            // TODO: handle exception
        }
        return lista;

    }
}
