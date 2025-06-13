package com.triviaweb.model;

import java.util.Date;

public class Administrador extends Usuario {

    private String nivelAcceso; // Nivel de acceso del administrador, como 'superusuario', 'administrador', etc.
    private String descripcion; // Descripción adicional sobre el administrador

    // Constructor por defecto
    public Administrador() {
        super();  // Llamamos al constructor de la clase base Usuario
    }

    // Constructor con todos los atributos (incluyendo los heredados)
    public Administrador(Long id, String nombre, String email, String contraseña, String rol, String estado, Date fechaCreacion, String nivelAcceso, String descripcion) {
        super(id, nombre, email, contraseña, rol, estado, fechaCreacion);  // Llamamos al constructor de la clase base Usuario
        this.nivelAcceso = nivelAcceso;
        this.descripcion = descripcion;
    }

    // Getters y Setters
    public String getNivelAcceso() {
        return nivelAcceso;
    }

    public void setNivelAcceso(String nivelAcceso) {
        this.nivelAcceso = nivelAcceso;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    // Método toString para representar el objeto Administrador de forma legible
    @Override
    public String toString() {
        return "Administrador [id=" + getId() + ", nombre=" + getNombre() + ", email=" + getEmail() + ", rol=" + getRol() + ", estado=" + getEstado() 
               + ", fechaCreacion=" + getFechaCreacion() + ", nivelAcceso=" + nivelAcceso + ", descripcion=" + descripcion + "]";
    }
}
