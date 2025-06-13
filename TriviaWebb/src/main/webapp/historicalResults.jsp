<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resultados Históricos del Docente | Trivia Web</title>
    <link rel="stylesheet" href="css/estilos.css">
    <script src="js/scripts.js" defer></script>
</head>
<body>
    <!-- Barra de navegación -->
    <header class="navbar">
        <div class="logo">
            <img src="img/logo.png" alt="RimPlay">
        </div>
        <nav>
            <ul>
                <li><a href="home.jsp#informacion">Inicio</a></li>
                <li><a href="home.jsp#jugar-trivia">Jugar Trivia</a></li>
                <li><a href="login.jsp">Iniciar Sesión</a></li>
                <li><a href="register.jsp">Registrar</a></li>
            </ul>
        </nav>
    </header>

    <!-- Cuerpo principal de la página de resultados históricos -->
    <main>
        <section class="historical-results">
            <h1>Resultados Históricos de los Estudiantes</h1>

            <!-- Búsqueda por nombre de estudiante -->
            <section class="search-student">
                <h2>Buscar por Estudiante</h2>
                <form action="HistoricalResultsServlet" method="GET">
                    <div class="form-group">
                        <label for="search_name">Nombre del Estudiante</label>
                        <input type="text" id="search_name" name="search_name" placeholder="Ingresa el nombre del estudiante" required>
                    </div>
                    <div class="form-group">
                     <a href="userProfile.jsp">
  					<button type="button">Buscar</button>
				</a>
                        
                    </div>
                </form>
            </section>

            <!-- Mostrar los intentos de los estudiantes -->
            <section class="attempts-results">
                <h2>Intentos de los Estudiantes</h2>
                <table>
                    <thead>
                        <tr>
                            <th>Estudiante</th>
                            <th>Trivia</th>
                            <th>Puntaje</th>
                            <th>Fecha del Intento</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                    
                    <%--
                        <% 
                            // Aquí obtenemos los intentos de los estudiantes filtrados por docente_id
                            List<Intento> intentos = intentoDao.obtenerIntentosPorDocente(docenteId);
                            for (Intento intento : intentos) {
                                Estudiante estudiante = intento.getEstudiante();
                                Trivia trivia = intento.getTrivia();
                        %>
                            <tr>
                                <td><%= estudiante.getNombre() %></td>
                                <td><%= trivia.getTitulo() %></td>
                                <td><%= intento.getPuntaje() %></td>
                                <td><%= intento.getFecha() %></td>
                                <td>
                                    <a href="viewAttempt.jsp?id=<%= intento.getId() %>">Ver Detalles</a>
                                </td>
                            </tr>
                        <% 
                            }
                        %>
                        
                        --%>
                        
                        
                    </tbody>
                </table>
            </section>
        </section>
    </main>

    <!-- Pie de página -->
    <footer class="footer">
        <div class="footer-links">
            <a href="terms.jsp">Términos de servicio</a>
            <a href="help.jsp">Centro de ayuda</a>
            <a href="privacy.jsp">Política de privacidad</a>
            <a href="contact.jsp">Contacto</a>
        </div>
        <div class="footer-social">
            <a href="https://twitter.com" target="_blank">Twitter</a>
            <a href="https://facebook.com" target="_blank">Facebook</a>
            <a href="https://instagram.com" target="_blank">Instagram</a>
        </div>
    </footer>
</body>
</html>
