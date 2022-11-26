package Modelo;

public class ModeloGraficas {
    private String estatus;
    private String conteo;

    public String getEstatus() {
        return this.estatus;
    }

    public void setEstatus(String estatus) {
        this.estatus = estatus;
    }

    public String getConteo() {
        return this.conteo;
    }

    public void setConteo(String conteo) {
        this.conteo = conteo;
    }

    // AsignadosEntregados
    private int asignados;
    private int entregados;

    public int getAsignados() {
        return this.asignados;
    }

    public void setAsignados(int asignados) {
        this.asignados = asignados;
    }

    public int getEntregados() {
        return this.entregados;
    }

    public void setEntregados(int entregados) {
        this.entregados = entregados;
    }

    // AsignadosEntregados
    private String mes;
    private String yesNo;

    public String getMes() {
        return this.mes;
    }

    public void setMes(String mes) {
        this.mes = mes;
    }

    public String getYesNo() {
        return this.yesNo;
    }

    public void setYesNo(String yesNo) {
        this.yesNo = yesNo;
    }

    // folios por fechas//
    private String idRegistro;
    private String fechaCarga;

    public String getIdRegistro() {
        return this.idRegistro;
    }

    public void setIdRegistro(String idRegistro) {
        this.idRegistro = idRegistro;
    }

    public String getFechaCarga() {
        return this.fechaCarga;
    }

    public void setFechaCarga(String fechaCarga) {
        this.fechaCarga = fechaCarga;
    }

    // gfrafioca por regiones//
    private String contRegiones;
    private String regiones;

    public String getContRegiones() {
        return this.contRegiones;
    }

    public void setContRegiones(String contRegiones) {
        this.contRegiones = contRegiones;
    }

    public String getRegiones() {
        return this.regiones;
    }

    public void setRegiones(String regiones) {
        this.regiones = regiones;
    }

    // Grafica documentos//
    private String conteoDocs;
    private String nombreDocs;
    private int conteoTotal;

    public int getConteoTotal() {
        return this.conteoTotal;
    }

    public void setConteoTotal(int conteoTotal) {
        this.conteoTotal = conteoTotal;
    }

    public String getConteoDocs() {
        return this.conteoDocs;
    }

    public void setConteoDocs(String conteoDocs) {
        this.conteoDocs = conteoDocs;
    }

    public String getNombreDocs() {
        return this.nombreDocs;
    }

    public void setNombreDocs(String nombreDocs) {
        this.nombreDocs = nombreDocs;
    }

}
