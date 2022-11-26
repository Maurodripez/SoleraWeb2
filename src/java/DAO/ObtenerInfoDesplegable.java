package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Modelo.Conexion;
import Modelo.ModeloInfoSiniestro;

public class ObtenerInfoDesplegable {
    Conexion conect = new Conexion();
    PreparedStatement ps;

    public List<ModeloInfoSiniestro> getTodoRegistro(String idAMostrar) throws SQLException {
        List<ModeloInfoSiniestro> lista = new ArrayList<>();
        conect.conectar();
        String sql = "select * from infosiniestro, infocliente, infoauto where idRegistro='" + idAMostrar
                + "' and infocliente.fkIdRegistro ='" + idAMostrar + "' and infoauto.fkIdRegistro='" + idAMostrar + "'";
        ps = conect.conexion.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();
        ModeloInfoSiniestro miSiniestro;
        while (rs.next()) {
            miSiniestro = new ModeloInfoSiniestro();
            miSiniestro.setFechaCarga(rs.getString("fechaCarga"));
            miSiniestro.setNumSiniestro(rs.getString("numSiniestro"));
            miSiniestro.setPoliza(rs.getString("poliza"));
            miSiniestro.setAfectado(rs.getString("afectado"));
            miSiniestro.setTipoDeCaso(rs.getString("tipoDeCaso"));
            miSiniestro.setCobertura(rs.getString("cobertura"));
            miSiniestro.setFechaSiniestro(rs.getString("fechaSiniestro"));
            miSiniestro.setDatosAudatex(rs.getString("datosAudatex"));
            miSiniestro.setEstado(rs.getString("estado"));
            miSiniestro.setCiudad(rs.getString("ciudad"));
            miSiniestro.setRegion(rs.getString("region"));
            miSiniestro.setUbicacionTaller(rs.getString("ubicacionTaller"));
            miSiniestro.setFinanciado(rs.getString("financiado"));
            miSiniestro.setRegimenFiscal(rs.getString("regimenFiscal"));
            miSiniestro.setPasswordExterno(rs.getString("passwordExterno"));
            miSiniestro.setEstatusCliente(rs.getString("estatusSeguimientoSin"));
            miSiniestro.setComentariosCliente(rs.getString("comentariosCliente"));
            //////////////// inicia datos del carro///////////////////
            miSiniestro.setMarca(rs.getString("marca"));
            miSiniestro.setTipo(rs.getString("tipo"));
            miSiniestro.setAñO(rs.getString("modelo"));
            miSiniestro.setPlacas(rs.getString("placas"));
            miSiniestro.setNumSerie(rs.getString("numSerie"));
            miSiniestro.setValIndemnizacion(rs.getString("valorIndemnizacion"));
            miSiniestro.setValComercial(rs.getString("valorComercial"));
            ////////////////// inician datos Asegurado///////////////////////////
            miSiniestro.setAsegurado(rs.getString("Asegurado"));
            miSiniestro.setCorreo(rs.getString("correo"));
            miSiniestro.setTelPrincipal(rs.getString("telefonoPrincipal"));
            miSiniestro.setTelSecundario(rs.getString("telefonosecundario"));
            miSiniestro.setContacto(rs.getString("contacto"));
            miSiniestro.setCorreoContacto(rs.getString("correoContacto"));
            miSiniestro.setTelContacto(rs.getString("telContacto"));
            lista.add(miSiniestro);

        }
        // conect.Desconectar();
        return lista;
    }
}
