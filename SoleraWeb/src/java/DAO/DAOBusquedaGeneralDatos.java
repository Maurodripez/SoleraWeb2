package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import Modelo.Conexion;

public class DAOBusquedaGeneralDatos {
    public List<ModeloBusquedaDatos> getBusquedaGeneral(String filtro) {
        List<ModeloBusquedaDatos> lista = new ArrayList();
        Conexion conect = new Conexion();
        PreparedStatement ps;
        ResultSet rs;
        String sql;
        try {
            sql=;
        } catch (Exception e) {
            // TODO: handle exception
        }
        return lista;
    }
}
