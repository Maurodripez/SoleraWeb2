package DAO;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import Modelo.Conexion;
import Modelo.ModeloInfoSiniestro;

public class ActualizarDatoscliente {
    public String respuesta;
    ModeloInfoSiniestro miSiniestro = new ModeloInfoSiniestro();
    Conexion conect = new Conexion();
    PreparedStatement ps1 = null;
    PreparedStatement ps2 = null;
    PreparedStatement ps3 = null;

    public String GuardarExpediente(String fechaCarga, String numSiniestro, String numPoliza, String afectado,
            String tipoDeCaso, String cobertura, String fechaSiniestro, String datosAudatex, String estado,
            String ciudad, String region, String ubicacionTaller, String financiado, String regimenFiscal,
            String passwordExterno, String estatusCliente, String comentariosClientes, String marca, String tipo,
            String modelo, String placa, String numSerie, String valIndemnizacion, String valComercial,
            String asegurado,
            String correo, String telPrincipal, String telSecundario, String contacto, String correoContacto,
            String telContacto, String idEditable) {
        String sql = "update infosiniestro,infoauto,infocliente set fechaCarga=?, numSiniestro=?, poliza=?, afectado=?, "
                + "tipoDeCaso=?, cobertura=?, fechaSiniestro=?, datosAudatex=?, estado=?, "
                + "ciudad =?, region=?, ubicacionTaller=?, financiado =?, "
                + "regimenFiscal=?, passwordExterno=?, estatusCliente=?, comentariosCliente=?,  marca=?, tipo=?, modelo=?,"
                + " placas=?, numSerie=?, valorIndemnizacion=?, valorComercial=?, asegurado=?, correo=?, telefonoPrincipal=?, "
                + "telefonosecundario=?, contacto=?, correoContacto=?, telContacto=? where idRegistro=? and infoauto.fkIdRegistro=? and infocliente.fkIdRegistro=?";
        try {
            conect.conectar();
            respuesta = numPoliza;
            ps1 = conect.conexion.prepareStatement(sql);
            ps1.setString(1, String.valueOf(fechaCarga));
            ps1.setString(2, String.valueOf(numSiniestro));
            ps1.setString(3, String.valueOf(numPoliza));
            ps1.setString(4, String.valueOf(afectado));
            ps1.setString(5, String.valueOf(tipoDeCaso));
            ps1.setString(6, String.valueOf(cobertura));
            ps1.setString(7, String.valueOf(fechaSiniestro));
            ps1.setString(8, String.valueOf(datosAudatex));
            ps1.setString(9, String.valueOf(estado));
            ps1.setString(10, String.valueOf(ciudad));
            ps1.setString(11, String.valueOf(region));
            ps1.setString(12, String.valueOf(ubicacionTaller));
            ps1.setString(13, String.valueOf(financiado));
            ps1.setString(14, String.valueOf(regimenFiscal));
            ps1.setString(15, String.valueOf(passwordExterno));
            ps1.setString(16, String.valueOf(estatusCliente));
            ps1.setString(17, String.valueOf(comentariosClientes));

            ps1.setString(18, String.valueOf(marca));
            ps1.setString(19, String.valueOf(tipo));
            ps1.setString(20, String.valueOf(modelo));
            ps1.setString(21, String.valueOf(placa));
            ps1.setString(22, String.valueOf(numSerie));
            ps1.setString(23, String.valueOf(valIndemnizacion));
            ps1.setString(24, String.valueOf(valComercial));
            ps1.setString(25, String.valueOf(asegurado));
            ps1.setString(26, String.valueOf(correo));
            ps1.setString(27, String.valueOf(telPrincipal));
            ps1.setString(28, String.valueOf(telSecundario));
            ps1.setString(29, String.valueOf(contacto));
            ps1.setString(30, String.valueOf(correoContacto));
            ps1.setString(31, String.valueOf(telContacto));
            ps1.setString(32, String.valueOf(idEditable));
            ps1.setString(33, String.valueOf(idEditable));
            ps1.setString(34, String.valueOf(idEditable));
            ps1.execute();
            respuesta = idEditable;
        } catch (SQLException e) {
            System.err.println(e);
            respuesta = "incorrecto";
        }
        return respuesta;
    }
}
