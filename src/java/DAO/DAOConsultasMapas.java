package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Modelo.Conexion;
import Modelo.ModeloEstados;
import Modelo.ModeloGraficas;
import java.sql.SQLException;

public class DAOConsultasMapas {

    public int contadorPorcentaje = 0;
    Conexion conect = new Conexion();
    PreparedStatement ps;
    ResultSet rs;
    public int entregados = 0;
    public int asignados = 0;
    public String respuesta = "no entra";

    public List<ModeloEstados> getNumeroSiniestros() {
        // consulta para la obtencion de cantidad de siniestros por estado
        List<ModeloEstados> list = new ArrayList<>();
        try {
            conect.conectar();
            String sql = " SELECT count(estado) as cantidad, estado FROM solera.infosiniestro "
            +" WHERE estado is not null and estado != 'N/D' and estado != 'ND' and estado != 'null' group by estado";
            ps = conect.conexion.prepareStatement(sql);
            rs = ps.executeQuery();
            ModeloEstados mEstados;
            while (rs.next()) {
                mEstados = new ModeloEstados();
                mEstados.setCantidad(String.valueOf(rs.getInt("cantidad")));
                mEstados.setEstados(rs.getString("estado"));
                list.add(mEstados);
            }
            respuesta = "correcto";
        } catch (Exception e) {

            respuesta = "consulta incorrecta";
        }
        return list;

    }

    public List<ModeloGraficas> getSeguimiento() {
        List<ModeloGraficas> lista = new ArrayList<>();
        try {
            conect.conectar();
            String sql = "select count(estatusSeguimientoSin) as conteo, estatusSeguimientoSin"
                    + " from infosiniestro where estatusSeguimientoSin is not null group by estatusSeguimientoSin";
            ps = conect.conexion.prepareStatement(sql);
            rs = ps.executeQuery();
            ModeloGraficas mGraficas;
            while (rs.next()) {
                mGraficas = new ModeloGraficas();
                mGraficas.setConteo(rs.getString("conteo"));
                mGraficas.setEstatus(rs.getString("estatusSeguimientoSin"));
                lista.add(mGraficas);
                contadorPorcentaje += rs.getInt("conteo");
                respuesta = "sin problemas";
            }
        } catch (Exception e) {
            respuesta = "ejecucion incorrecta";
        }
        return lista;
    }

    public List<ModeloGraficas> getAsignadosEntregados(String fechaBuscar) {
        List<ModeloGraficas> lista = new ArrayList<>();
        try {
            conect.conectar();
            String sql = "SELECT IF(estacionProceso='Terminado','yes','no') as yesNo, count(IF(estacionProceso='Terminado','yes','no'))"
                    + " as conteo, idRegistro, MONTHNAME(fechaCarga) AS Mes"
                    + " FROM infosiniestro, estadoproceso"
                    + " WHERE fechaCarga between '" + fechaBuscar
                    + "' and curdate() and idRegistro=fkIdRegistroEstadoProceso group by idRegistro";
            ps = conect.conexion.prepareStatement(sql);
            rs = ps.executeQuery();
            ModeloGraficas mGraficas;
            while (rs.next()) {
                mGraficas = new ModeloGraficas();
                mGraficas.setMes(rs.getString("Mes"));
                mGraficas.setYesNo(rs.getString("yesNo"));
                lista.add(mGraficas);
            }
            respuesta = "ejecucion con exito";
        } catch (Exception e) {
            // TODO: handle exception
            respuesta = "error, no entra";
        }
        return lista;
    }

    public List<ModeloGraficas> getFoliosFecha(String fechaBusqueda) {
        List<ModeloGraficas> lista = new ArrayList<>();
        try {
            conect.conectar();
            String sql = "select idRegistro, fechaCarga from infosiniestro where fechaCarga between '" + fechaBusqueda
                    + "' and curdate() ";
            ps = conect.conexion.prepareStatement(sql);
            rs = ps.executeQuery();
            ModeloGraficas mGraficas;
            while (rs.next()) {
                mGraficas = new ModeloGraficas();
                mGraficas.setIdRegistro(rs.getString("idregistro"));
                mGraficas.setFechaCarga(rs.getString("fechaCarga"));
                lista.add(mGraficas);
            }
        } catch (Exception e) {
            // TODO: handle exception
        }
        return lista;
    }

    public int dias0a2 = 0;
    public int dias3a5 = 0;
    public int dias6a14 = 0;
    public int diasMas15 = 0;

    public int Dias0a2() {
        String sql = "select count(datediff(CURDATE(), fechaCarga)) AS 'Dias Transcurridos'"
                + " from infosiniestro where datediff(CURDATE(), fechaCarga)<3";
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
        String sql = "select count(datediff(CURDATE(), fechaCarga)) AS 'Dias Transcurridos'"
                + " from infosiniestro where datediff(CURDATE(), fechaCarga)>2 "
                + "and datediff(CURDATE(), fechaCarga)<6";
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
        String sql = "select count(datediff(CURDATE(), fechaCarga)) AS 'Dias Transcurridos'"
                + " from infosiniestro where datediff(CURDATE(), fechaCarga)>5 "
                + "and datediff(CURDATE(),fechaCarga)<15";
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
        String sql = "select count(datediff(CURDATE(), fechaCarga)) AS 'Dias Transcurridos'"
                + " from infosiniestro where datediff(CURDATE(), fechaCarga)>14";
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

    public List<ModeloGraficas> getRegiones() {
        List<ModeloGraficas> lista = new ArrayList<>();
        String sql = "select count(idRegistro) as conteo, region from infosiniestro group by region";
        try {
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            rs = ps.executeQuery();
            ModeloGraficas mGraficas;
            while (rs.next()) {
                mGraficas = new ModeloGraficas();
                mGraficas.setContRegiones(rs.getString("conteo"));
                mGraficas.setRegiones(rs.getString("region"));
                lista.add(mGraficas);
            }
        } catch (Exception e) {
            // TODO: handle exception
        }
        return lista;
    }

    public List<ModeloGraficas> getDocumentos() {
        List<ModeloGraficas> lista = new ArrayList<>();
        String sql = "select count(nombreImagen) as conteo, nombreImagen from imagenes group by nombreImagen";
        try {
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            rs = ps.executeQuery();
            ModeloGraficas mGraficas;
            while (rs.next()) {
                mGraficas = new ModeloGraficas();
                mGraficas.setNombreDocs(rs.getString("nombreImagen"));
                mGraficas.setConteoDocs(rs.getString("conteo"));
                lista.add(mGraficas);
            }
        } catch (Exception e) {
            // TODO: handle exception
        }
        return lista;
    }
}
