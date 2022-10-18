package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Modelo.Conexion;
import Modelo.ModeloImagenesCliente;

public class DAOImagenesCliente {
    public List<ModeloImagenesCliente> getImagenes(String id) {
        List<ModeloImagenesCliente> lista = new ArrayList<>();
        Conexion conect = new Conexion();
        PreparedStatement ps;
        ResultSet rs;
        try {
            String sql = "select rutaImagen, nombreImagen,nombreOriginal from imagenes where fkImagen = '" + id + "'";
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                ModeloImagenesCliente miCliente = new ModeloImagenesCliente();
                miCliente.setNombre(rs.getString("nombreImagen"));
                miCliente.setNombreOriginal(rs.getString("nombreOriginal"));
                miCliente.setRuta(rs.getString("rutaImagen"));
                lista.add(miCliente);
            }
        } catch (Exception e) {
            // TODO: handle exception
        }
        return lista;
    }
}
