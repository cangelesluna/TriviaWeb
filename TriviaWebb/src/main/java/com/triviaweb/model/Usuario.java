package com.triviaweb.model;

import java.util.Date;

public class Usuario {

    private Long id;
    private String nombre;
    private String email;
    private String contraseña;
    private String rol; // 'estudiante', 'docente', 'administrador'
    private String estado; // 'activo', 'inactivo'
    private Date fechaCreacion;

    // Constructor por defecto
    public Usuario() {
    }

    // Constructor con todos los atributos
    public Usuario(Long id, String nombre, String email, String contraseña, String rol, String estado, Date fechaCreacion) {
        this.id = id;
        this.nombre = nombre;
        this.email = email;
        this.contraseña = contraseña;
        this.rol = rol;
        this.estado = estado;
        this.fechaCreacion = fechaCreacion;
    }

    // Getters y Setters
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getContraseña() {
        return contraseña;
    }

    public void setContraseña(String contraseña) {
        this.contraseña = contraseña;
    }

    public String getRol() {
        return rol;
    }

    public void setRol(String rol) {
        this.rol = rol;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public Date getFechaCreacion() {
        return fechaCreacion;
    }

    public void setFechaCreacion(Date fechaCreacion) {
        this.fechaCreacion = fechaCreacion;
    }

    // Método toString para representar el objeto de forma legible
    @Override
    public String toString() {
        return "Usuario [id=" + id + ", nombre=" + nombre + ", email=" + email + ", rol=" + rol + ", estado=" + estado
                + ", fechaCreacion=" + fechaCreacion + "]";
    }
}
