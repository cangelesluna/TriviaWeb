<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Resultados de la Trivia | Trivia Web</title>
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

    <!-- Cuerpo principal de los resultados de la trivia -->
    <main>
        <section class="trivia-results">
            <h1>Resultados de la Trivia</h1>

            <!-- Mostrar las respuestas correctas e incorrectas -->
            <section class="answers-results">
                <h2>Respuestas Correctas e Incorrectas</h2>
                <table>
                    <thead>
                        <tr>
                            <th>Pregunta</th>
                            <th>Respuesta Dada</th>
                            <th>Respuesta Correcta</th>
                            <th>Resultado</th>
                        </tr>
                    </thead>
                    <tbody>
                    
                    <%-- 
                    
                        <% 
                            // Aquí deberías obtener las respuestas y los resultados del intento del estudiante
                            // asumiendo que tienes el intento_id disponible en la sesión
                            int intentoId = (int) request.getSession().getAttribute("intentoId"); // Suponiendo que lo guardas en la sesión
                            List<RespuestaEstudiante> respuestas = respuestaDao.obtenerRespuestasPorIntento(intentoId);

                            for (RespuestaEstudiante respuesta : respuestas) {
                                String resultado = respuesta.isEsCorrecta() ? "Correcta" : "Incorrecta";
                        %>
                            <tr>
                                <td><%= respuesta.getPregunta().getEnunciado() %></td>
                                <td><%= respuesta.getRespuesta() %></td>
                                <td><%= respuesta.getPregunta().getRespuestaCorrecta() %></td>
                                <td><%= resultado %></td>
                            </tr>
                        <% 
                            }
                        %>
                        
                        
                        --%>
                        
                    </tbody>
                </table>
            </section>

            <!-- Mostrar la fecha del intento -->
            <section class="attempt-date">
                <h2>Fecha del Intento</h2>
                <p><%-- <%= intentoDao.obtenerFechaIntento(intentoId) %>--%></p>
            </section>

            <!-- Opciones para volver a intentar o ir a otra trivia -->
            <section class="retry-options">
                <button onclick="window.location.href='activeTrivia.jsp?id=<%--<%= triviaId %>--%>'">Volver a Intentar</button>
                <button onclick="window.location.href='home.jsp'">Ir a otra Trivia</button>
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
