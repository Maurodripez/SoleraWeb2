
package Modelo;

public class Siniestros {

    private int idRegistro;
    private String numSiniestro;
    private String poliza;
    private String estatusCliente;
    private String asegurado;
    private String fechaPrimerEnvioDoc;
    private int diasTranscurridos;
    private int size;

	public int getSize() {
		return this.size;
	}

	public void setSize(int size) {
		this.size = size;
	}


    public int getIdRegistro() {
        return idRegistro;
    }

    public void setIdRegistro(int idRegistro) {
        this.idRegistro = idRegistro;
    }

    public String getNumSiniestro() {
        return numSiniestro;
    }

    public void setNumSiniestro(String numSiniestro) {
        this.numSiniestro = numSiniestro;
    }

    public String getPoliza() {
        return poliza;
    }

    public void setPoliza(String poliza) {
        this.poliza = poliza;
    }

    public String getEstatusCliente() {
        return estatusCliente;
    }

    public void setEstatusCliente(String estatusCliente) {
        this.estatusCliente = estatusCliente;
    }

    public String getAsegurado() {
        return asegurado;
    }

    public void setAsegurado(String asegurado) {
        this.asegurado = asegurado;
    }

    public String getFechaPrimerEnvioDoc() {
        return fechaPrimerEnvioDoc;
    }

    public void setFechaPrimerEnvioDoc(String fechaPrimerEnvioDoc) {
        this.fechaPrimerEnvioDoc = fechaPrimerEnvioDoc;
    }

    public int getDiasTranscurridos() {
        return diasTranscurridos;
    }

    public void setDiasTranscurridos(int diasTranscurridos) {
        this.diasTranscurridos = diasTranscurridos;
    }

}
