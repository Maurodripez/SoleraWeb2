package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Modelo.Conexion;
import Modelo.usuariosIntegracion;

public class ObtenerUsuariosIntegracion {
    public List<usuariosIntegracion> getUsuarios() {
        List<usuariosIntegracion> lista = new ArrayList<>();
        try {
            Conexion conect = new Conexion();
            PreparedStatement ps;
            ResultSet rs;
            String sql = "select nombreReal from usuarios where privilegios != 'root'";
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                usuariosIntegracion uIntegracion = new usuariosIntegracion();
                uIntegracion.setUsuarios(rs.getString("nombreReal"));
                lista.add(uIntegracion);
            }

        } catch (Exception e) {
            // TODO: handle exception
        }
        return lista;
    }
}
