package Modelo;

public class ModeloGuardarSeguimiento {
    private String comentSeguimiento;
    private String estatusSeguimiento;
    private String respSolera;
    private String persContactada;
    private String tipoPersona;
    private String tipoContacto;
    private String fechaSeguimiento;
    private String fechaPrimEnvDocs;
    private String fechaIntExp;
    private String fechaFactServ;
    private String fechaTermino;
    private String idRegistro;

    public ModeloGuardarSeguimiento() {

    }

    public ModeloGuardarSeguimiento(
            String estatusSeguimiento,
            String comentSeguimiento,
            String respSolera,
            String persContactada,
            String tipoPersona,
            String tipoContacto,
            String fechaSeguimiento,
            String fechaPrimEnvDocs,
            String fechaIntExp,
            String fechaFactServ,
            String fechaTermino,
            String idRegistro) {
        this.respSolera = respSolera;
        this.persContactada = persContactada;
        this.tipoPersona = tipoPersona;
        this.tipoContacto = tipoContacto;
        this.fechaSeguimiento = fechaSeguimiento;
        this.fechaPrimEnvDocs = fechaPrimEnvDocs;
        this.fechaIntExp = fechaIntExp;
        this.fechaFactServ = fechaFactServ;
        this.fechaTermino = fechaTermino;
        this.idRegistro = idRegistro;
        this.comentSeguimiento = comentSeguimiento;
        this.estatusSeguimiento = estatusSeguimiento;
    }

    public String getComentSeguimiento() {
        return this.comentSeguimiento;
    }

    public void setComentSeguimiento(String comentSeguimiento) {
        this.comentSeguimiento = comentSeguimiento;
    }

    public String getEstatusSeguimiento() {
        return this.estatusSeguimiento;
    }

    public void setEstatusSeguimiento(String estatusSeguimiento) {
        this.estatusSeguimiento = estatusSeguimiento;
    }

    public String getRespSolera() {
        return this.respSolera;
    }

    public void setRespSolera(String respSolera) {
        this.respSolera = respSolera;
    }

    public String getPersContactada() {
        return this.persContactada;
    }

    public void setPersContactada(String persContactada) {
        this.persContactada = persContactada;
    }

    public String getTipoPersona() {
        return this.tipoPersona;
    }

    public void setTipoPersona(String tipoPersona) {
        this.tipoPersona = tipoPersona;
    }

    public String getTipoContacto() {
        return this.tipoContacto;
    }

    public void setTipoContacto(String tipoContacto) {
        this.tipoContacto = tipoContacto;
    }

    public String getFechaSeguimiento() {
        return this.fechaSeguimiento;
    }

    public void setFechaSeguimiento(String fechaSeguimiento) {
        this.fechaSeguimiento = fechaSeguimiento;
    }

    public String getFechaPrimEnvDocs() {
        return this.fechaPrimEnvDocs;
    }

    public void setFechaPrimEnvDocs(String fechaPrimEnvDocs) {
        this.fechaPrimEnvDocs = fechaPrimEnvDocs;
    }

    public String getFechaIntExp() {
        return this.fechaIntExp;
    }

    public void setFechaIntExp(String fechaIntExp) {
        this.fechaIntExp = fechaIntExp;
    }

    public String getFechaFactServ() {
        return this.fechaFactServ;
    }

    public void setFechaFactServ(String fechaFactServ) {
        this.fechaFactServ = fechaFactServ;
    }

    public String getFechaTermino() {
        return this.fechaTermino;
    }

    public void setFechaTermino(String fechaTermino) {
        this.fechaTermino = fechaTermino;
    }

    public String getIdRegistro() {
        return this.idRegistro;
    }

    public void setIdRegistro(String idRegistro) {
        this.idRegistro = idRegistro;
    }

}
