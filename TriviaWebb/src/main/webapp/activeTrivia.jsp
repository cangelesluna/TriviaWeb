<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Trivia Activa | Trivia Web</title>
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

    <!-- Cuerpo principal de la trivia activa -->
    <main>
        <section class="active-trivia">
            <h1>Trivia Activa</h1>

            <!-- Preguntas de la trivia -->
            
            <%-- 
            <form action="SubmitAnswersServlet" method="POST">
                <input type="hidden" name="trivia_id" value="<%= trivia.getId() %>">
                <% 
                    // Mostrar las preguntas de la trivia
                    List<Pregunta> preguntas = triviaDao.obtenerPreguntasPorTrivia(trivia.getId());
                    for (int i = 0; i < preguntas.size(); i++) {
                        Pregunta pregunta = preguntas.get(i);
                %>
                    <div class="question">
                        <h3><%= pregunta.getEnunciado() %></h3>

                        <% 
                            if (pregunta.getTipo().equals("opcion_multiple")) {
                        %>
                            <div class="options">
                                <label><input type="radio" name="respuesta_<%= i %>" value="<%= pregunta.getOpciones()[0] %>"> <%= pregunta.getOpciones()[0] %></label><br>
                                <label><input type="radio" name="respuesta_<%= i %>" value="<%= pregunta.getOpciones()[1] %>"> <%= pregunta.getOpciones()[1] %></label><br>
                                <label><input type="radio" name="respuesta_<%= i %>" value="<%= pregunta.getOpciones()[2] %>"> <%= pregunta.getOpciones()[2] %></label><br>
                            </div>
                        <% 
                            } else if (pregunta.getTipo().equals("verdadero_falso")) {
                        %>
                            <div class="options">
                                <label><input type="radio" name="respuesta_<%= i %>" value="Verdadero"> Verdadero</label><br>
                                <label><input type="radio" name="respuesta_<%= i %>" value="Falso"> Falso</label><br>
                            </div>
                        <% 
                            } else if (pregunta.getTipo().equals("respuesta_corta")) {
                        %>
                            <div class="options">
                                <input type="text" name="respuesta_<%= i %>" placeholder="Escribe tu respuesta" required>
                            </div>
                        <% 
                            }
                        %>
                    </div>
                <% 
                    }
                %>
                
                --%>

                <!-- Enviar respuestas -->
                <div class="submit-button">
                <a href="historicalResults.jsp">
  					<button type="button">Enviar Respuestas</button>
				</a>
                
                    
                </div>
            </form>

            <!-- Tabla de puntajes más altos -->
            <section class="high-scores">
                <h2>Puntajes Más Altos</h2>
                <table>
                    <thead>
                        <tr>
                            <th>Estudiante</th>
                            <th>Puntaje</th>
                        </tr>
                    </thead>
                    <tbody>
                    
                    <%-- 
                        <% 
                            // Obtener los puntajes más altos para la trivia
                            List<Puntaje> puntajesAltos = puntajeDao.obtenerPuntajesMasAltos(trivia.getId());
                            for (Puntaje puntaje : puntajesAltos) {
                        %>
                            <tr>
                                <td><%= puntaje.getEstudiante().getNombre() %></td>
                                <td><%= puntaje.getPuntaje() %></td>
                            </tr>
                        <% 
                            }
                        %>
                        
                        --%>
                    </tbody>
                </table>
            </section>

            <!-- Opción para compartir la trivia -->
            <section class="share-trivia">
                <h2>Comparte esta Trivia</h2>
                <p>¡Invita a tus amigos a jugar esta trivia! Copia y comparte el siguiente enlace:</p>
                <input type="text" value="<%= request.getRequestURL().toString() %>" readonly>
                <button onclick="navigator.clipboard.writeText(document.querySelector('input').value)">Copiar enlace</button>
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
