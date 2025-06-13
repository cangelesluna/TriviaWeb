<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<%
    String nombre = "Alex Johnson";
    String correo = "alex.johnson@rimplay.edu";
    String curso = "4° Secundaria";
    int completadas = 7;
    int total = 10;
    int promedio = 74;
    String ultimaTrivia = "Ortografía avanzada";
    String ultimaFecha = "27/05/2025";
    int ultimaPuntaje = 80;
%>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <title>Perfil del Estudiante</title>
  <link rel="stylesheet" href="/AppWeb/css/perfilestudiante.css">
 
</head>
<body>

<header>
  <h1>Perfil del Estudiante</h1>
</header>

<div class="container">
  <div class="perfil">
    <img src="img/docente.png" alt="Foto estudiante">
    <div class="perfil-info">
      <h2><%= nombre %></h2>
      <p>📧 <%= correo %></p>
      <p>📚 Curso: <strong><%= curso %></strong></p>
    </div>
  </div>

  <div class="progreso-box">
    <h3>📈 Progreso general</h3>
    <p><%= completadas %> de <%= total %> trivias completadas</p>
    <div class="barra">
      <div class="barra-inner" style="width: <%= (completadas * 100 / total) %>%;">
        <%= (completadas * 100 / total) %>%
      </div>
    </div>
    <p>Puntaje promedio: <strong><%= promedio %>%</strong></p>
  </div>

  <div class="ultimos">
    <h3>🕒 Última trivia resuelta</h3>
    <p><strong><%= ultimaTrivia %></strong> – <%= ultimaFecha %></p>
    <p>Puntaje obtenido: <strong><%= ultimaPuntaje %>%</strong></p>
  </div>
</div>

<footer>
  © 2025 RimPlay · Vista de estudiante personalizada
</footer>

</body>
</html>
