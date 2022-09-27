package DAO;

import java.sql.PreparedStatement;
import java.util.List;

import Modelo.Conexion;
import Modelo.ModeloBusquedaDatos;

public class DAOMostrarDatos {
    Conexion conect = new Conexion();
    PreparedStatement ps;
    public List<ModeloBusquedaDatos> obtenerDatos(String fechaCarga, String estacion, String estatus, String subEstatus,
            String fechaSeguimiento, String region, String estado, String cobertura) {
                conect.conectar();
                String sql = ""
                return null;

    }
}
