package com.triviaweb.model;

import java.util.Date;

public class Estudiante extends Usuario {

    private String matricula; // Matrícula del estudiante (única)
    private String programaEstudio; // Programa de estudio del estudiante
    private int semestre; // Semestre en el que se encuentra el estudiante

    // Constructor por defecto
    public Estudiante() {
        super();  // Llamada al constructor de la clase base Usuario
    }

    // Constructor con todos los atributos (incluyendo los heredados)
    public Estudiante(Long id, String nombre, String email, String contraseña, String rol, String estado, Date fechaCreacion, String matricula, String programaEstudio, int semestre) {
        super(id, nombre, email, contraseña, rol, estado, fechaCreacion);  // Llamada al constructor de la clase base Usuario
        this.matricula = matricula;
        this.programaEstudio = programaEstudio;
        this.semestre = semestre;
    }

    // Getters y Setters
    public String getMatricula() {
        return matricula;
    }

    public void setMatricula(String matricula) {
        this.matricula = matricula;
    }

    public String getProgramaEstudio() {
        return programaEstudio;
    }

    public void setProgramaEstudio(String programaEstudio) {
        this.programaEstudio = programaEstudio;
    }

    public int getSemestre() {
        return semestre;
    }

    public void setSemestre(int semestre) {
        this.semestre = semestre;
    }

    // Método toString para representar el objeto Estudiante de forma legible
    @Override
    public String toString() {
        return "Estudiante [id=" + getId() + ", nombre=" + getNombre() + ", email=" + getEmail() + ", rol=" + getRol() + ", estado=" + getEstado()
                + ", fechaCreacion=" + getFechaCreacion() + ", matricula=" + matricula + ", programaEstudio=" + programaEstudio + ", semestre=" + semestre + "]";
    }
}
