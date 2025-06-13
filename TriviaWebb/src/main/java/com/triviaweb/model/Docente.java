package com.triviaweb.model;

import java.util.Date;

public class Docente extends Usuario {

    private String codigoDocente; // Código único del docente
    private String departamento;  // Departamento al que pertenece el docente
    private String tituloAcademico; // Título académico del docente

    // Constructor por defecto
    public Docente() {
        super();  // Llamada al constructor de la clase base Usuario
    }

    // Constructor con todos los atributos (incluyendo los heredados de Usuario)
    public Docente(Long id, String nombre, String email, String contraseña, String rol, String estado, Date fechaCreacion, String codigoDocente, String departamento, String tituloAcademico) {
        super(id, nombre, email, contraseña, rol, estado, fechaCreacion);  // Llamada al constructor de la clase base Usuario
        this.codigoDocente = codigoDocente;
        this.departamento = departamento;
        this.tituloAcademico = tituloAcademico;
    }

    // Getters y Setters
    public String getCodigoDocente() {
        return codigoDocente;
    }

    public void setCodigoDocente(String codigoDocente) {
        this.codigoDocente = codigoDocente;
    }

    public String getDepartamento() {
        return departamento;
    }

    public void setDepartamento(String departamento) {
        this.departamento = departamento;
    }

    public String getTituloAcademico() {
        return tituloAcademico;
    }

    public void setTituloAcademico(String tituloAcademico) {
        this.tituloAcademico = tituloAcademico;
    }

    // Método toString para representar el objeto Docente de forma legible
    @Override
    public String toString() {
        return "Docente [id=" + getId() + ", nombre=" + getNombre() + ", email=" + getEmail() + ", rol=" + getRol() + ", estado=" + getEstado()
                + ", fechaCreacion=" + getFechaCreacion() + ", codigoDocente=" + codigoDocente + ", departamento=" + departamento + ", tituloAcademico=" + tituloAcademico + "]";
    }
}
