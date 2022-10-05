package DAO;

import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;

import Modelo.Conexion;
import java.sql.ResultSet;

public class DAOInfoCartas {
    Conexion conect = new Conexion();
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<String> getEstacion() {
        List lista = new ArrayList<>();
        try {
            conect.conectar();
            String sql = "select count(estacionProceso) as conteo, estacionProceso as Estacion,"
                    + " fkIdRegistroEstadoProceso as Id from estadoproceso group by estacionProceso";
            ps = conect.conexion.prepareStatement(sql);
        } catch (Exception e) {
            // TODO: handle exception
        }
        return null;
    }
}
