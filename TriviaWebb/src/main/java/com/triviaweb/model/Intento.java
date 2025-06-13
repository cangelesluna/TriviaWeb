package com.triviaweb.model;

import java.util.Date;

public class Intento {

    private Long id;               // Identificador único del intento
    private Date fecha;            // Fecha y hora en la que se realizó el intento
    private double puntaje;        // Puntaje obtenido por el estudiante
    private Estudiante estudiante; // Estudiante que realizó el intento
    private Trivia trivia;         // Trivia que fue resuelta
    private String estado;         // Estado del intento: 'completado', 'en progreso', etc.

    // Constructor por defecto
    public Intento() {
    }

    // Constructor con todos los atributos
    public Intento(Long id, Date fecha, double puntaje, Estudiante estudiante, Trivia trivia, String estado) {
        this.id = id;
        this.fecha = fecha;
        this.puntaje = puntaje;
        this.estudiante = estudiante;
        this.trivia = trivia;
        this.estado = estado;
    }

    // Getters y Setters
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public double getPuntaje() {
        return puntaje;
    }

    public void setPuntaje(double puntaje) {
        this.puntaje = puntaje;
    }

    public Estudiante getEstudiante() {
        return estudiante;
    }

    public void setEstudiante(Estudiante estudiante) {
        this.estudiante = estudiante;
    }

    public Trivia getTrivia() {
        return trivia;
    }

    public void setTrivia(Trivia trivia) {
        this.trivia = trivia;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }
/*
    // Método toString para representar el objeto Intento de forma legible
    @Override
    public String toString() {
        return "Intento [id=" + id + ", fecha=" + fecha + ", puntaje=" + puntaje + ", estudiante=" + estudiante.getNombre()
                + ", trivia=" + trivia.getTitulo() + ", estado=" + estado + "]";
    }*/
}
