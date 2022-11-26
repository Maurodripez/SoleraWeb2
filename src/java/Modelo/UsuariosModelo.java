/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

/**
 *
 * @author Mauricio
 */
public class UsuariosModelo {
    private String usuario;
    private String contrasena;
    private String privilegios;

    public String getPrivilegios() {
        return privilegios;
    }

    public void setPrivilegios(String privilegios) {
        this.privilegios = privilegios;
    }

    public UsuariosModelo() {

    }

    public UsuariosModelo(String usuario, String contrasena, String privilegios) {
        this.usuario = usuario;
        this.contrasena = contrasena;
        this.privilegios = privilegios;
    }

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getContrasena() {
        return contrasena;
    }

    public void setContrasena(String contrasena) {
        this.contrasena = contrasena;
    }
}
