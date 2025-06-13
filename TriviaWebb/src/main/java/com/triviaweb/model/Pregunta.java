package com.triviaweb.model;

import java.util.List;

public class Pregunta {

    private Long id;               // Identificador único de la pregunta
    private String enunciado;      // El enunciado o texto de la pregunta
    private String tipo;           // Tipo de la pregunta: 'opcion_multiple', 'verdadero_falso', 'respuesta_corta'
    private List<String> opciones; // Opciones de respuesta (solo para preguntas de opción múltiple)
    private String respuestaCorrecta; // Respuesta correcta
    private Trivia trivia;         // Trivia a la que pertenece esta pregunta

    // Constructor por defecto
    public Pregunta() {
    }

    // Constructor con todos los atributos
    public Pregunta(Long id, String enunciado, String tipo, List<String> opciones, String respuestaCorrecta, Trivia trivia) {
        this.id = id;
        this.enunciado = enunciado;
        this.tipo = tipo;
        this.opciones = opciones;
        this.respuestaCorrecta = respuestaCorrecta;
        this.trivia = trivia;
    }

    // Getters y Setters
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getEnunciado() {
        return enunciado;
    }

    public void setEnunciado(String enunciado) {
        this.enunciado = enunciado;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public List<String> getOpciones() {
        return opciones;
    }

    public void setOpciones(List<String> opciones) {
        this.opciones = opciones;
    }

    public String getRespuestaCorrecta() {
        return respuestaCorrecta;
    }

    public void setRespuestaCorrecta(String respuestaCorrecta) {
        this.respuestaCorrecta = respuestaCorrecta;
    }

    public Trivia getTrivia() {
        return trivia;
    }

    public void setTrivia(Trivia trivia) {
        this.trivia = trivia;
    }
/*
    // Método toString para representar la pregunta de forma legible
    @Override
    public String toString() {
        return "Pregunta [id=" + id + ", enunciado=" + enunciado + ", tipo=" + tipo + ", opciones=" + opciones + ", respuestaCorrecta=" + respuestaCorrecta + "]";
    }
    */
}
