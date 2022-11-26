package Modelo;

public class ModeloGuardarImagen {
    private String nombreImagen;
    private String fechaCarga;
    private String nombreOriginal;
    private String idImagen;
    private String fkImagen;

    public String getFkImagen() {
        return this.fkImagen;
    }

    public void setFkImagen(String fkImagen) {
        this.fkImagen = fkImagen;
    }

    public String getIdImagen() {
        return this.idImagen;
    }

    public void setIdImagen(String idImagen) {
        this.idImagen = idImagen;
    }

    public String getNombreOriginal() {
        return this.nombreOriginal;
    }

    public void setNombreOriginal(String nombreOriginal) {
        this.nombreOriginal = nombreOriginal;
    }

    public String getFechaCarga() {
        return this.fechaCarga;
    }

    public void setFechaCarga(String fechaCarga) {
        this.fechaCarga = fechaCarga;
    }

    public String getNombreImagen() {
        return this.nombreImagen;
    }

    public void setNombreImagen(String nombreImagen) {
        this.nombreImagen = nombreImagen;
    }

}
