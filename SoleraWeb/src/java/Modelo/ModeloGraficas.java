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

}
