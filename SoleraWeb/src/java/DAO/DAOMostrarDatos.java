package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import Modelo.Conexion;
import Modelo.ModeloBusquedaDatos;

public class DAOMostrarDatos {
    Conexion conect = new Conexion();
    PreparedStatement ps;
    public String respuesta;

    public List<ModeloBusquedaDatos> obtenerDatos(String fechaCarga, String estacion, String estatus, String subEstatus,
            String fechaSeguimiento, String region, String estado, String cobertura) {
        List<ModeloBusquedaDatos> lista = new ArrayList<>();

        ModeloBusquedaDatos mbDatos = new ModeloBusquedaDatos();
        String sql = " select idRegistro, numSiniestro, poliza, marca, tipo, modelo, numSerie, estado, iSin.fechaCarga as fechaCarga, estacionProceso, "
                + "  estatusOperativo, subEstatusProceso from infosiniestro as iSin right join infoauto as ia on iSin.idRegistro = ia.fkIdRegistro "
                + " right join fechasseguimiento as fs on iSin.idRegistro=fs.fkidRegistro right join estadoproceso as ep on iSin.idRegistro = ep.fkIdRegistroEstadoProceso "
                + "  where fechacarga like '%" + fechaCarga
                + "%' or estatusoperativo like '%" + estatus + "%' or subestatusproceso like '%" + subEstatus + "%' "
                + " or fechaSeguimiento like '%" + fechaSeguimiento + "%' or estacionProceso like '%" + estacion
                + "%' or region like '%" + region + "%' or estado like '%" + estado + "%' or  cobertura like '%"
                + cobertura + "%'";
        try {
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                mbDatos.setIdRegistro(rs.getInt("idRegistro"));
                mbDatos.setNumSiniestro(rs.getString("numSiniestro"));
                mbDatos.setPoliza(rs.getString("poliza"));
                mbDatos.setMarca(rs.getString("marca"));
                mbDatos.setTipo(rs.getString("tipo"));
                mbDatos.setModelo(rs.getString("modelo"));
                mbDatos.setNumSerie(rs.getString("numSerie"));
                mbDatos.setEstado(rs.getString("estado"));
                mbDatos.setFechaCarga(rs.getString("fechaCarga"));
                mbDatos.setEstacionProceso(rs.getString("estacionProceso"));
                mbDatos.setEstatusOperativo(rs.getString("estatusOperativo"));
                mbDatos.setSubEstatusProceso(rs.getString("subEstatusProceso"));
                lista.add(mbDatos);

            }
            respuesta = "busqueda correcta";
        } catch (Exception e) {
            // TODO: handle exception
            respuesta = "busqueda incorrecta";
        }
        return lista;

    }
}
