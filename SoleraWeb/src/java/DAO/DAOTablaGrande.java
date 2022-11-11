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
        sql = "select numSiniestro, poliza, afectado, tipoDeCaso, cobertura, fechaSiniestro, estado, ciudad, region, "
                + " ubicacionTaller, regimenFiscal, estatusCliente, comentariosCliente, fechaCarga, usuarioCarga, "
                + " estatusSeguimientoSin, usuarioAsignadoSin, fechaAsignacion, fechaSeguimiento, "
                + " comentarios, marca, tipo, modelo, numSerie, valorIndemnizacion, valorComercial, "
                + " placas, telefonoPrincipal, telefonosecundario, contacto, correo, asegurado, correoContacto, telContacto "
                + " from infosiniestro as isin, fechasseguimiento as fs, infoauto as ia, infocliente as ic where idRegistro = fs.fkidRegistro "
                + " and idRegistro=ia.fkIdRegistro and idRegistro=ic.fkIdRegistro";
        try {
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                ModeloTablaGrande mtGrande = new ModeloTablaGrande();
                mtGrande.setNumSiniestro(rs.getString("numSiniestro"));
                mtGrande.setPoliza(rs.getString("poliza"));
                mtGrande.setAfectado(rs.getString("afectado"));
                mtGrande.setTipoDeCaso(rs.getString("tipoDeCaso"));
                mtGrande.setCobertura(rs.getString("cobertura"));
                mtGrande.setFechaSiniestro(rs.getString("fechaSiniestro"));
                mtGrande.setEstado(rs.getString("estado"));
                mtGrande.setCiudad(rs.getString("ciudad"));
                mtGrande.setRegion(rs.getString("region"));
                mtGrande.setUbicacionTaller(rs.getString("ubicacionTaller"));
                mtGrande.setRegimenFiscal(rs.getString("regimenFiscal"));
                mtGrande.setEstatusCliente(rs.getString("estatusCliente"));
                mtGrande.setComentariosCliente(rs.getString("comentariosCliente"));
                mtGrande.setFechaCarga(rs.getString("fechaCarga"));
                mtGrande.setUsuarioCarga(rs.getString("usuarioCarga"));
                mtGrande.setEstatusSeguimientoSin(rs.getString("estatusSeguimientoSin"));
                mtGrande.setUsuarioAsignadoSin(rs.getString("usuarioAsignadoSin"));
                mtGrande.setFechaAsignacion(rs.getString("fechaAsignacion"));
                mtGrande.setFechaSeguimiento(rs.getString("fechaSeguimiento"));
                mtGrande.setComentarios(rs.getString("comentarios"));
                mtGrande.setMarca(rs.getString("marca"));
                mtGrande.setTipo(rs.getString("tipo"));
                mtGrande.setModelo(rs.getString("modelo"));
                mtGrande.setNumSerie(rs.getString("numSerie"));
                mtGrande.setValorIndemnizacion(rs.getString("valorIndemnizacion"));
                mtGrande.setValorComercial(rs.getString("valorComercial"));
                mtGrande.setPlacas(rs.getString("placas"));
                mtGrande.setTelefonoPrincipal(rs.getString("telefonoPrincipal"));
                mtGrande.setTelefonosecundario(rs.getString("telefonosecundario"));
                mtGrande.setContacto(rs.getString("contacto"));
                mtGrande.setCorreo(rs.getString("correo"));
                mtGrande.setAsegurado(rs.getString("asegurado"));
                mtGrande.setCorreoContacto(rs.getString("correoContacto"));
                mtGrande.setContacto(rs.getString("telContacto"));
                lista.add(mtGrande);
            }
        } catch (Exception e) {
            // TODO: handle exception
        }
        return lista;
    }
}
