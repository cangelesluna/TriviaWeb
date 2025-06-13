package com.triviaweb.controller;
/*

import com.triviaweb.dao.TriviaDAO;
import com.triviaweb.model.Trivia;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet("/CreateTriviaServlet")

*/


public class CreateTriviaServlet /*
 extends HttpServlet*/
 {

/*

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String titulo = request.getParameter("titulo");
        String descripcion = request.getParameter("descripcion");
        int tiempoLimite = Integer.parseInt(request.getParameter("tiempo_limite"));
        int docenteId = (int) request.getSession().getAttribute("docenteId");  // Obtener el ID del docente desde la sesión

        // Insertar la trivia en la base de datos
        Trivia nuevaTrivia = new Trivia(titulo, descripcion, tiempoLimite, docenteId);
        TriviaDAO triviaDao = new TriviaDAO(); // Asegúrate de tener un DAO para manejar la base de datos
        triviaDao.insertarTrivia(nuevaTrivia);

        // Redirigir al panel del docente
        response.sendRedirect("teacherPanel.jsp");
    }
    
    */
}

