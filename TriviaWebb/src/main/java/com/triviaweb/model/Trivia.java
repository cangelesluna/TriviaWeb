package com.triviaweb.model;

import java.util.Date;
import java.util.List;

public class Trivia {

    private Long id;               // Identificador único de la trivia
    private String titulo;         // Título de la trivia
    private String descripcion;    // Descripción de la trivia
    private Date fechaCreacion;    // Fecha de creación de la trivia
    private int tiempoLimite;      // Tiempo límite para resolver la trivia (en minutos)
    private Docente docente;       // Docente que creó la trivia
    private List<Pregunta> preguntas; // Lista de preguntas asociadas a esta trivia

    // Constructor por defecto
    public Trivia() {
    }

    // Constructor con todos los atributos
    public Trivia(Long id, String titulo, String descripcion, Date fechaCreacion, int tiempoLimite, Docente docente, List<Pregunta> preguntas) {
        this.id = id;
        this.titulo = titulo;
        this.descripcion = descripcion;
        this.fechaCreacion = fechaCreacion;
        this.tiempoLimite = tiempoLimite;
        this.docente = docente;
        this.preguntas = preguntas;
    }

    // Getters y Setters
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public Date getFechaCreacion() {
        return fechaCreacion;
    }

    public void setFechaCreacion(Date fechaCreacion) {
        this.fechaCreacion = fechaCreacion;
    }

    public int getTiempoLimite() {
        return tiempoLimite;
    }

    public void setTiempoLimite(int tiempoLimite) {
        this.tiempoLimite = tiempoLimite;
    }

    public Docente getDocente() {
        return docente;
    }

    public void setDocente(Docente docente) {
        this.docente = docente;
    }

    public List<Pregunta> getPreguntas() {
        return preguntas;
    }

    public void setPreguntas(List<Pregunta> preguntas) {
        this.preguntas = preguntas;
    }
/*
    // Método toString para representar el objeto Trivia de forma legible
    @Override
    public String toString() {
        return "Trivia [id=" + id + ", titulo=" + titulo + ", descripcion=" + descripcion + ", fechaCreacion=" + fechaCreacion + ", tiempoLimite=" + tiempoLimite + ", docente=" + docente.getNombre() + "]";
    }
    */
}
