package DAO;

import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;

import Modelo.Conexion;
import Modelo.ModeloInfoCartas;

import java.sql.ResultSet;

public class DAOInfoCartas {
    Conexion conect = new Conexion();
    PreparedStatement ps = null;
    ResultSet rs = null;
    public int r = 0;

    public List<ModeloInfoCartas> getEstacion() {
        List<ModeloInfoCartas> lista = new ArrayList<>();
        try {
            ModeloInfoCartas miCartas;
            conect.conectar();
            String sql = "select count(estacionProceso) as conteo, estacionProceso as Estacion,"
                    + " fkIdRegistroEstadoProceso as Id from estadoproceso group by Estacion";
            ps = conect.conexion.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                miCartas = new ModeloInfoCartas();
                miCartas.setConteo(rs.getString("conteo"));
                r += rs.getInt("conteo");
                miCartas.setEstaciones(rs.getString("Estacion"));
                lista.add(miCartas);
            }
        } catch (Exception e) {
            // TODO: handle exception
        }
        return lista;
    }
}
