<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Panel del Docente | Trivia Web</title>
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
                <li><a href="home.jsp">Inicio</a></li>
                <li><a href="teacherPanel.jsp">Jugar Trivia</a></li>
                <li><a href="login.jsp">Iniciar Sesión</a></li>
                <li><a href="register.jsp">Registrar</a></li>
            </ul>
        </nav>
    </header>

    <!-- Cuerpo principal del panel docente -->
    <main>
        <section class="teacher-panel">
            <h1>Panel del Docente</h1>

            <!-- Crear una nueva trivia -->
            <section class="create-trivia">
                <h2>Crear Nueva Trivia</h2>
                <form action="CreateTriviaServlet" method="POST">
                    <div class="form-group">
                        <label for="titulo">Título de la Trivia</label>
                        <input type="text" id="titulo" name="titulo" placeholder="Ingresa el título de la trivia" required>
                    </div>
                    
                    <div class="form-group">
                        <label for="descripcion">Descripción</label>
                        <textarea id="descripcion" name="descripcion" placeholder="Ingresa una descripción de la trivia" required></textarea>
                    </div>
                    
                    <div class="form-group">
                        <label for="tiempo_limite">Tiempo Límite (en minutos)</label>
                        <input type="number" id="tiempo_limite" name="tiempo_limite" placeholder="Ingresa el tiempo límite" min="1" required>
                    </div>

                    <div class="form-group">
                        <a href="createTrivia.jsp">
  							<button type="button">Crear Trivia</button>
						</a>

                    </div>
                </form>
            </section>

            <!-- Lista de trivias creadas por el docente -->
            <section class="teacher-trivias">
                <h2>Mis Trivias</h2>
                <table>
                    <thead>
                        <tr>
                            <th>Título</th>
                            <th>Descripción</th>
                            <th>Tiempo Límite (minutos)</th>
                            <th>Fecha de Creación</th>
                            <th>Acciones</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- Aquí se mostrarán las trivias creadas por el docente -->
                        
                        <%-- 
                        <% 
                            // Aquí deberías obtener las trivias del docente desde la base de datos
                            // usando un SELECT filtrado por docente_id
                            List<Trivia> trivias = triviaDao.obtenerTriviasPorDocente(docenteId); // Suponiendo que tienes un objeto docenteId
                            for (Trivia trivia : trivias) {
                        %>
                            <tr>
                                <td><%= trivia.getTitulo() %></td>
                                <td><%= trivia.getDescripcion() %></td>
                                <td><%= trivia.getTiempoLimite() %></td>
                                <td><%= trivia.getFechaCreacion() %></td>
                                <td>
                                    <a href="viewTrivia.jsp?id=<%= trivia.getId() %>">Ver</a> |
                                    <a href="editTrivia.jsp?id=<%= trivia.getId() %>">Editar</a> |
                                    <a href="deleteTrivia.jsp?id=<%= trivia.getId() %>">Eliminar</a>
                                </td>
                            </tr>
                        <% } %>
                        
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
