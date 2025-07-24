package quizUtill;


import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.IOException;
import java.nio.file.DirectoryStream;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.ArrayList;
import java.util.List;

public class QuizHandler {

    public static String getAllQuestions(String quizName) {
        String quiz = "";

        // Cargar el archivo CSV desde los recursos
        InputStream inputStream = QuizHandler.class.getClassLoader().getResourceAsStream("quizUtill/" + quizName);

        if (inputStream == null) {
            System.out.println("Archivo no encontrado: " + quizName);
            throw new RuntimeException("Archivo no encontrado: " + quizName);
        }

        try (BufferedReader reader = new BufferedReader(new InputStreamReader(inputStream))) {
            StringBuilder tempQuiz = new StringBuilder();
            String line;
            reader.readLine(); // Omitir la primera línea si es necesario
            while ((line = reader.readLine()) != null) {
                tempQuiz.append(line).append("\n");
            }
            quiz = tempQuiz.toString();
        } catch (IOException e) {
            e.printStackTrace();
            throw new RuntimeException(e);
        }

        return quiz;
    }

    public static List<List<String>> listofQuestions(String quizName) {
        List<List<String>> question = new ArrayList<>();

        for (String s : getAllQuestions(quizName).split("\n")) {
            question.add(List.of(s.split(",")));
        }
        return question;
    }

    public static List<String> answers(String quizName) {
        List<String> answers = new ArrayList<>();
        List<List<String>> listofQuestions = listofQuestions(quizName);
        for (List<String> s : listofQuestions) {
            answers.add(s.get(6)); // Asumiendo que la respuesta está en la posición 6
        }
        return answers;
    }
}