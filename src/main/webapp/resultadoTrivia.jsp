<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<%
    // Datos simulados
    String triviaTitulo = "Cultura General";
    int totalPreguntas = 5;
    int correctas = 4;
    int incorrectas = 1;
    int puntaje = 80;

    // Lista de resultados simulados
    List<Map<String, String>> resultados = new ArrayList<>();

    String[][] datos = {
      {"¿Capital de Australia?", "Canberra", "Canberra", "✅"},
      {"¿Planeta más cercano al sol?", "Mercurio", "Venus", "❌"},
      {"¿Autor de Don Quijote?", "Cervantes", "Cervantes", "✅"},
      {"¿País con más población?", "China", "China", "✅"},
      {"¿Elemento H en la tabla?", "Hidrógeno", "Hidrógeno", "✅"}
    };

    for (String[] fila : datos) {
        Map<String, String> r = new HashMap<>();
        r.put("pregunta", fila[0]);
        r.put("correcta", fila[1]);
        r.put("respuesta", fila[2]);
        r.put("icono", fila[3]);
        resultados.add(r);
    }
%>

<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <title>Resultados - <%= triviaTitulo %></title>
  <link rel="stylesheet" href="/AppWeb/css/resultadotrivia.css">

</head>
<body>

<header>
  <h1>Resultados de la trivia: <%= triviaTitulo %></h1>
</header>

<div class="container">

  <div class="score-box">
    <h2>Tu puntaje</h2>
    <div class="score"><%= puntaje %>/100</div>
    <div class="summary">
      <p><strong><%= correctas %></strong> respuestas correctas</p>
      <p><strong><%= incorrectas %></strong> respuestas incorrectas</p>
    </div>
  </div>

  <div class="result-list">
    <% for (Map<String, String> r : resultados) { %>
      <div class="result-item">
        <div class="pregunta">
          <%= r.get("icono") %> <%= r.get("pregunta") %>
        </div>
        <div class="respuesta">
          <span>✅ Respuesta correcta: <strong><%= r.get("correcta") %></strong></span>
          <span>🧠 Tu respuesta: <strong><%= r.get("respuesta") %></strong></span>
        </div>
      </div>
    <% } %>
  </div>

  <div class="boton-volver">
    <a href="verTrivias.jsp">Volver al menú de trivias</a>
  </div>

</div>

<footer>
  © 2025 RimPlay · Resultados generados automáticamente
</footer>

</body>
</html>
