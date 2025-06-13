<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <title>Trivias Disponibles</title>
  <link rel="stylesheet" href="/AppWeb/css/triviadisponible.css">

</head>
<body>

<header>
  <h1>Trivias disponibles para ti</h1>
</header>

<div class="container">

  <div class="trivia-list">
    <!-- Trivia 1 -->
    <div class="trivia-card">
      <h3>Cultura General</h3>
      <div class="meta">
        <span class="badge">Fácil</span>
        <span class="badge">10 preguntas</span><br>
        Creado por: <strong>Profe Marta</strong>
      </div>
      <button onclick="location.href='resolverTrivia.jsp?id=1'">Comenzar</button>
    </div>

    <!-- Trivia 2 -->
    <div class="trivia-card">
      <h3>Matemática Básica</h3>
      <div class="meta">
        <span class="badge">Intermedio</span>
        <span class="badge">15 preguntas</span><br>
        Creado por: <strong>Profe Luis</strong>
      </div>
      <button onclick="location.href='resolverTrivia.jsp?id=2'">Comenzar</button>
    </div>

    <!-- Trivia 3 -->
    <div class="trivia-card">
      <h3>Historia del Perú</h3>
      <div class="meta">
        <span class="badge">Difícil</span>
        <span class="badge">12 preguntas</span><br>
        Creado por: <strong>Profe Ana</strong>
      </div>
      <button onclick="location.href='resolverTrivia.jsp?id=3'">Comenzar</button>
    </div>

    <!-- Agrega más trivias aquí -->
  </div>

</div>

</body>
</html>
