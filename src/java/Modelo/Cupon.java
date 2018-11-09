/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

/**
 *
 * @author zoekt
 */
public class Cupon{

    private String fechaEmision;
    private String fechaValidez;
    private int numeroCupon;
    private String nombreApellidos;
    private String rut;
    private String direccion;
    private String mail;
    private String numeroTelefono;

    public Cupon(String fechaEmision, String fechaValidez, int numeroCupon, String nombreApellidos, String rut, String direccion, String mail, String numeroTelefono) {
        this.fechaEmision = fechaEmision;
        this.fechaValidez = fechaValidez;
        this.numeroCupon = numeroCupon;
        this.nombreApellidos = nombreApellidos;
        this.rut = rut;
        this.direccion = direccion;
        this.mail = mail;
        this.numeroTelefono = numeroTelefono;
    }

    public String getNumeroTelefono() {
        return numeroTelefono;
    }

    public void setNumeroTelefono(String numeroTelefono) {
        this.numeroTelefono = numeroTelefono;
    }

    public String getFechaEmision() {
        return fechaEmision;
    }

    public void setFechaEmision(String fechaEmision) {
        this.fechaEmision = fechaEmision;
    }

    public String getFechaValidez() {
        return fechaValidez;
    }

    public void setFechaValidez(String fechaValidez) {
        this.fechaValidez = fechaValidez;
    }

    public int getNumeroCupon() {
        return numeroCupon;
    }

    public void setNumeroCupon(int numeroCupon) {
        this.numeroCupon = numeroCupon;
    }

    public String getNombreApellidos() {
        return nombreApellidos;
    }

    public void setNombreApellidos(String nombreApellidos) {
        this.nombreApellidos = nombreApellidos;
    }

    public String getRut() {
        return rut;
    }

    public void setRut(String rut) {
        this.rut = rut;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }
    
    
}
