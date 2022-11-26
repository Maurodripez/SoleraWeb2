package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Modelo.Conexion;
import Modelo.ModeloTablaGrande;

public class DAOTablaGrande {
    Conexion conect = new Conexion();
    PreparedStatement ps;
    ResultSet rs;
    String sql;

    public List<ModeloTablaGrande> getTabla() {
        List<ModeloTablaGrande> lista = new ArrayList<>();
        sql = " select isin.numSiniestro, poliza, estado, ciudad, region, estatusCliente,"
                + " estatusSeguimiento, usuario, sp.fechaseguimiento, sp.comentarios, marca, tipo, modelo, numSerie, asegurado"
                + " from infosiniestro as isin, fechasseguimiento as fs, infoauto as ia, infocliente as ic, seguimientoprincipal as sp "
                + " where idRegistro = fs.fkidRegistro and idRegistro=ia.fkIdRegistro and sp.fkIdRegistroSegPrincipal=idRegistro "
                + " and idRegistro=ic.fkIdRegistro";
        try {
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                ModeloTablaGrande mtGrande = new ModeloTablaGrande();
                mtGrande.setNumSiniestro(rs.getString("numSiniestro"));
                mtGrande.setPoliza(rs.getString("poliza"));
                mtGrande.setEstado(rs.getString("estado"));
                mtGrande.setCiudad(rs.getString("ciudad"));
                mtGrande.setRegion(rs.getString("region"));
                mtGrande.setEstatusSeguimientoSin(rs.getString("estatusSeguimiento"));
                mtGrande.setUsuarioAsignadoSin(rs.getString("usuario"));
                mtGrande.setFechaSeguimiento(rs.getString("fechaseguimiento"));
                mtGrande.setComentarios(rs.getString("comentarios"));
                mtGrande.setMarca(rs.getString("marca"));
                mtGrande.setTipo(rs.getString("tipo"));
                mtGrande.setModelo(rs.getString("modelo"));
                mtGrande.setNumSerie(rs.getString("numSerie"));
                mtGrande.setAsegurado(rs.getString("asegurado"));
                lista.add(mtGrande);
            }
        } catch (Exception e) {
            // TODO: handle exception
        }
        return lista;
    }
}
