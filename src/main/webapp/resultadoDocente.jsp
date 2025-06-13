<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.*" %>
<%
    // Datos simulados
    class Resultado {
        String estudiante;
        String trivia;
        int puntaje;
        String fecha;
        public Resultado(String est, String triv, int p, String f) {
            estudiante = est; trivia = triv; puntaje = p; fecha = f;
        }
    }

    List<Resultado> lista = new ArrayList<>();
    lista.add(new Resultado("Laura Gómez", "Cultura General", 80, "28/05/2025"));
    lista.add(new Resultado("Carlos Ríos", "Matemáticas", 65, "28/05/2025"));
    lista.add(new Resultado("Ana Salas", "Historia del Perú", 100, "27/05/2025"));
    lista.add(new Resultado("David Quispe", "Ortografía", 50, "26/05/2025"));
    lista.add(new Resultado("Jimena Rojas", "Cultura General", 90, "25/05/2025"));
%>

<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <title>Resultados históricos - Docente</title>
  <link rel="stylesheet" href="/AppWeb/css/resultadodocente.css">
 
</head>
<body>

<header>
  <h1>Panel Docente: Resultados históricos de estudiantes</h1>
</header>

<div class="container">

  <!-- Filtros simulados -->
  <div class="filtro-busqueda">
    <form action="resultadosHistoricos.jsp" method="get">
      <label>Filtrar por estudiante:</label>
      <input type="text" name="nombre" placeholder="Ej: Laura">
      <label>Trivia:</label>
      <select name="trivia">
        <option value="">Todas</option>
        <option value="Cultura General">Cultura General</option>
        <option value="Matemáticas">Matemáticas</option>
        <option value="Ortografía">Ortografía</option>
      </select>
      <button type="submit">Buscar</button>
    </form>
  </div>

  <table class="tabla-resultados">
    <thead>
      <tr>
        <th>Estudiante</th>
        <th>Trivia</th>
        <th>Fecha</th>
        <th>Puntaje</th>
        <th>Acción</th>
      </tr>
    </thead>
    <tbody>
      <% for (Resultado r : lista) {
          int porcentaje = r.puntaje;
      %>
        <tr>
          <td><%= r.estudiante %></td>
          <td><%= r.trivia %></td>
          <td><%= r.fecha %></td>
          <td>
            <div class="puntaje-bar">
              <div class="puntaje-bar-inner" style="width:<%= porcentaje %>%;">
                <%= porcentaje %>%
              </div>
            </div>
          </td>
          <td><a href="resultadoTrivia.jsp?estudiante=<%= r.estudiante %>&trivia=<%= r.trivia %>" class="ver-detalle">Ver detalle</a></td>
        </tr>
      <% } %>
    </tbody>
  </table>

</div>

<footer>
  © 2025 RimPlay · Panel de monitoreo para docentes
</footer>

</body>
</html>
