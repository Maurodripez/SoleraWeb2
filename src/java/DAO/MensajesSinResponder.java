package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import Modelo.Conexion;
import Modelo.Siniestros;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class MensajesSinResponder {
    Conexion conect = new Conexion();
    PreparedStatement ps;
    ResultSet rs;

    public int getMensajes(int mayor, int menor) {
        int cantidad = 0;
        String sql = "select respondido,fkmensgSeguimientos from mensajesseguimientos"
                + " where datediff(now(), fechaMensaje)>='" + mayor + "' and datediff(now(), fechaMensaje)<'"
                + menor + "' and respondido ='no' group by fkmensgSeguimientos";
        try {
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                cantidad += 1;
            }
            conect.Desconectar();
        } catch (SQLException e) {
            // TODO: handle exception
        }
        return cantidad;
    }

    public List<Siniestros> getMensajes(String mayor, String menor) {
        List<Siniestros> lista = new ArrayList<>();
        String sql = "select fkmensgSeguimientos, numSiniestro, asegurado, poliza, estatusCliente,datediff(now(),fechaMensaje)"
                + " as 'diasT',fechaMensaje from mensajesseguimientos,infosiniestro,infocliente"
                + " where respondido='no' and datediff(now(),fechaMensaje)>='" + mayor + "'"
                + " and datediff(now(),fechaMensaje)<'" + menor + "' group by fkmensgSeguimientos";
        try {
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Siniestros sin = new Siniestros();
                sin.setIdRegistro(rs.getString("fkmensgSeguimientos"));
                sin.setNumSiniestro(rs.getString("numSiniestro"));
                sin.setAsegurado(rs.getString("asegurado"));
                sin.setPoliza(rs.getString("poliza"));
                sin.setEstatusCliente(rs.getString("estatusCliente"));
                sin.setDiasTranscurridos(rs.getString("diasT"));
                sin.setFechaPrimerEnvioDoc(rs.getString("fechaMensaje"));
                lista.add(sin);
            }
        } catch (Exception e) {
            // TODO: handle exception
        }
        return lista;

    }
}
