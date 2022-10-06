package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Modelo.Conexion;
import Modelo.ModeloEstados;
import Modelo.ModeloGraficas;

public class DAOConsultasMapas {

    public int contadorPorcentaje = 0;
    Conexion conect = new Conexion();
    PreparedStatement ps;
    ResultSet rs;
    public String respuesta = "no entra";

    public List<ModeloEstados> getNumeroSiniestros() {
        // consulta para la obtencion de cantidad de siniestros por estado
        List<ModeloEstados> list = new ArrayList<>();
        try {
            conect.conectar();
            String sql = " select count(estado) as cantidad, estado from infosiniestro group by estado";
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
            String sql = "select count(estatusOperativo) as conteo, estatusOperativo"
                    + " from estadoproceso where estatusOperativo is not null group by estatusOperativo";
            ps = conect.conexion.prepareStatement(sql);
            rs = ps.executeQuery();
            ModeloGraficas mGraficas;
            while (rs.next()) {
                mGraficas = new ModeloGraficas();
                mGraficas.setConteo(rs.getString("conteo"));
                mGraficas.setEstatus(rs.getString("estatusOperativo"));
                lista.add(mGraficas);
                contadorPorcentaje += rs.getInt("conteo");
                respuesta = "sin problemas";
            }
        } catch (Exception e) {
            respuesta = "ejecucion incorrecta";
        }
        return lista;
    }
}
