package com.triviaweb.dao;

import com.triviaweb.model.Trivia;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class TriviaDAO {

    // Método para insertar una nueva trivia
    public void insertarTrivia(Trivia trivia) {
        String sql = "INSERT INTO trivias (titulo, descripcion, tiempo_limite, docente_id) VALUES (?, ?, ?, ?)";

        try (Connection connection = Database.getConnection();
             PreparedStatement statement = connection.prepareStatement(sql)) {

            statement.setString(1, trivia.getTitulo());
            statement.setString(2, trivia.getDescripcion());
            statement.setInt(3, trivia.getTiempoLimite());
            statement.setInt(4, trivia.getDocenteId());

            statement.executeUpdate();  // Ejecutar la inserción

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}
