<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Perfil de Usuario | Trivia Web</title>
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

    <!-- Cuerpo principal del perfil de usuario -->
    <main>
        <section class="user-profile">
            <h1>Perfil de Usuario</h1>

            <!-- Mostrar datos del usuario -->
            <section class="user-details">
                <h2>Datos Personales</h2>
                <p><strong>Nombre:</strong><%--  <%= user.getNombre() %>--%></p>
                <p><strong>Correo Electrónico:</strong> <%--  <%= user.getEmail() %>--%></p>
                <p><strong>Rol:</strong> <%-- <%= user.getRol() %>--%></p>
                <p><strong>Estado:</strong> <%-- <%= user.getEstado() %>--%></p>
                <p><strong>Fecha de Creación:</strong> <%-- <%= user.getFechaCreacion() %>--%></p>
            </section>

            <!-- Historial de Trivias -->
            <section class="trivia-history">
                <h2>Historial de Trivias</h2>
                
                <%-- 
                
                <% 
                    if ("estudiante".equals(user.getRol())) {
                        // Si el usuario es estudiante, mostrar el historial de intentos
                        List<Intento> intentos = intentoDao.obtenerIntentosPorEstudiante(user.getId());
                %>
                    <table>
                        <thead>
                            <tr>
                                <th>Trivia</th>
                                <th>Puntaje</th>
                                <th>Fecha del Intento</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% 
                                for (Intento intento : intentos) {
                                    Trivia trivia = intento.getTrivia();
                            %>
                                <tr>
                                    <td><%= trivia.getTitulo() %></td>
                                    <td><%= intento.getPuntaje() %></td>
                                    <td><%= intento.getFecha() %></td>
                                </tr>
                            <% 
                                }
                            %>
                        </tbody>
                    </table>
                <% 
                    } else if ("docente".equals(user.getRol())) {
                        // Si el usuario es docente, mostrar el historial de trivias creadas
                        List<Trivia> trivias = triviaDao.obtenerTriviasPorDocente(user.getId());
                %>
                    <table>
                        <thead>
                            <tr>
                                <th>Título de la Trivia</th>
                                <th>Descripción</th>
                                <th>Fecha de Creación</th>
                                <th>Tiempo Límite</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% 
                                for (Trivia trivia : trivias) {
                            %>
                                <tr>
                                    <td><%= trivia.getTitulo() %></td>
                                    <td><%= trivia.getDescripcion() %></td>
                                    <td><%= trivia.getFechaCreacion() %></td>
                                    <td><%= trivia.getTiempoLimite() %> minutos</td>
                                </tr>
                            <% 
                                }
                            %>
                        </tbody>
                    </table>
                <% 
                    }
                %>
                
                
                --%>
                
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
