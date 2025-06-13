<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<%
    // Simulación de una trivia actual con datos hardcoded
    String triviaTitulo = "Cultura General";
    int preguntaActual = 1;
    int totalPreguntas = 5;
    String preguntaTexto = "¿Cuál es la capital de Australia?";
    List<String> opciones = Arrays.asList("Sídney", "Melbourne", "Canberra", "Perth");
%>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <title><%= triviaTitulo %> - Resolviendo</title>
  <link rel="stylesheet" href="/AppWeb/css/triviaactiva.css">

</head>
<body>

<header>
  <h2>Resolviendo: <%= triviaTitulo %></h2>
</header>

<div class="container">
  <div class="pregunta-encabezado">
    Pregunta <%= preguntaActual %> de <%= totalPreguntas %>
  </div>

  <div class="pregunta">
    <%= preguntaTexto %>
  </div>

  <form action="resolverTrivia.jsp" method="post">
    <% for (String opcion : opciones) { %>
      <button type="submit" class="opcion" name="respuesta" value="<%= opcion %>">
        <%= opcion %>
      </button>
    <% } %>
  </form>

  <div class="botones">
    <button class="btn-siguiente">Siguiente</button>
  </div>

  <div class="contador">
    Pregunta <%= preguntaActual %> de <%= totalPreguntas %> — ¡Ánimo!
  </div>
</div>

</body>
</html>
