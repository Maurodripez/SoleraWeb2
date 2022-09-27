package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;

import Modelo.Conexion;

public class TablaDocumentosDAO {
    public int contador;
    public int contador2;
    public int controlTablasResultados = 0;
    public boolean primeraConsulta = true;
    public int idRegistro;
    public int diasTranscurridos;
    public int getDiasTranscurridos;

    public String fecha;
    public String numeroSiniestro;
    public String poliza;
    public String asegurado;
    public String estatus;
    Conexion conect = new Conexion();
    public PreparedStatement ps = null;
    public ResultSet rs;
    public String sql = "select iSin.idregistro as 'Id Registro', iSin.idRegistro as 'Numero Registro',"
            + " iSin.numSiniestro as 'Numero Siniestro', ia.nomAseguradoPropietario as 'Asegurado', iSin.poliza as 'Poliza', iSin.estatusCliente as 'Estatus Cliente',"
            + " datediff(CURDATE(), fseguimiento.fechaPrimerEnvioDoc) AS 'Dias Transcurridos',"
            + " fseguimiento.fechaPrimerEnvioDoc as 'Fecha Envio' from infosiniestro as iSin, fechasseguimiento as fSeguimiento, infoauto as ia"
            + " where iSin.idRegistro= fSeguimiento.fkidRegistro and iSin.idRegistro = ia.fkidRegistro group by iSin.idregistro desc";

    public void RetornarValores() {
        try {
            conect.conectar();
            ps = conect.conexion.prepareStatement(sql);
            //rs = ps.executeQuery(sql);
            /*while (rs.next()) {
                if (controlTablasResultados == contador2) {
                    System.out.print(contador2);
                    idRegistro = rs.getInt("Id Registro");
                    diasTranscurridos = rs.getInt("Dias Transcurridos");
                    fecha = rs.getString("Fecha Envio");
                    poliza = rs.getString("Poliza");
                    asegurado = rs.getString("Asegurado");
                    estatus = rs.getString("Estatus Cliente");
                    numeroSiniestro = rs.getString("Numero Siniestro");
                    FechaEnvio(fecha);
                    Poliza(poliza);
                    Asegurado(asegurado);
                    Estatus(estatus);
                    NumeroSiniestro(numeroSiniestro);
                    setContador(contador);
                    setDiasTranscurridos(diasTranscurridos);
                    controlTablasResultados += 1;
                    contador2+=1;
                }
                contador += 1;
            }*/

        } catch (Exception e) {
            // TODO: handle exception
        }

    }

    public int getDiasTranscurridos() {
        return diasTranscurridos;
    }

    public int setDiasTranscurridos(int diasTranscurridos) {
        return this.diasTranscurridos;
    }

    public Object getContador() {
        return this.contador;
    }

    public int setContador(Object contador) {
        return this.contador;
    }

    public String setNumeroSiniestro(String numeroSiniestro) {
        return this.numeroSiniestro;
    }

    public String getNumeroSiniestro() {
        return this.numeroSiniestro;
    }

    public String setFechaEnvio(String fecha) {
        return this.fecha;
    }

    public String getFechaEnvio() {
        return this.fecha;
    }

    public String setPoliza(String poliza) {
        return this.poliza;
    }

    public String getPoliza() {
        return this.poliza;
    }

    public String setAsegurado(String asegurado) {
        return this.asegurado;
    }

    public String getAsegurado() {
        return this.asegurado;
    }

    public String setEstatus(String estatus) {
        return this.estatus;
    }

    public String getEstatus() {
        return this.estatus;
    }
}

