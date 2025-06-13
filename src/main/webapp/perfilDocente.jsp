<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<%
    String nombre = "Marta Delgado";
    String correo = "marta.delgado@rimplay.edu";
    String rol = "Docente";
    int triviasCreadas = 12;
    int totalEstudiantes = 85;
    int promedioPuntaje = 78;
%>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <title>Perfil del Docente</title>
    <link rel="stylesheet" href="/AppWeb/css/perfildocente.css">

</head>
<body>

<header>
  <h1>Perfil del Docente</h1>
</header>

<div class="container">
  <div class="perfil-box">
      <img src="img/docente.png" alt="Foto del docente">
    <div class="info">
      <h2><%= nombre %></h2>
      <p>📧 <%= correo %></p>
      <p>🎓 Rol: <strong><%= rol %></strong></p>
      <a href="#" class="btn-editar">Editar perfil</a>
    </div>
  </div>

  <div class="stats">
    <div class="stat-box">
      <h3><%= triviasCreadas %></h3>
      <span>Trivias creadas</span>
    </div>
    <div class="stat-box">
      <h3><%= totalEstudiantes %></h3>
      <span>Estudiantes asignados</span>
    </div>
    <div class="stat-box">
      <h3><%= promedioPuntaje %>%</h3>
      <span>Promedio general</span>
    </div>
  </div>
</div>

<footer>
  © 2025 RimPlay · Panel de gestión de docentes
</footer>

</body>
</html>
