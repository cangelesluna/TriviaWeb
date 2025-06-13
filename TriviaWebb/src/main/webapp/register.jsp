<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registrar | Trivia Web</title>
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

    <!-- Cuerpo principal de la página de registro -->
    <main>
        <section class="register-form">
            <h1>Registrarse</h1>
            <form action="RegisterServlet" method="POST">
                <div class="form-group">
                    <label for="nombre">Nombre Completo</label>
                    <input type="text" id="nombre" name="nombre" placeholder="Ingresa tu nombre completo" required>
                </div>

                <div class="form-group">
                    <label for="email">Correo Electrónico</label>
                    <input type="email" id="email" name="email" placeholder="Ingresa tu correo electrónico" required>
                </div>

                <div class="form-group">
                    <label for="password">Contraseña</label>
                    <input type="password" id="password" name="password" placeholder="Ingresa tu contraseña" required>
                </div>

                <div class="form-group">
                    <label for="rol">Rol</label>
                    <select id="rol" name="rol" required>
                        <option value="estudiante">Estudiante</option>
                        <option value="docente">Docente</option>
                    </select>
                </div>

                <!-- Sección para los estudiantes -->
                <div id="estudiante-fields" class="role-specific-fields">
                    <div class="form-group">
                        <label for="matricula">Matrícula</label>
                        <input type="text" id="matricula" name="matricula" placeholder="Ingresa tu matrícula">
                    </div>
                    <div class="form-group">
                        <label for="programa_estudio">Programa de Estudio</label>
                        <input type="text" id="programa_estudio" name="programa_estudio" placeholder="Ingresa tu programa de estudio">
                    </div>
                    <div class="form-group">
                        <label for="semestre">Semestre</label>
                        <input type="number" id="semestre" name="semestre" placeholder="Ingresa tu semestre" min="1" max="10">
                    </div>
                </div>

                <!-- Sección para los docentes -->
                <div id="docente-fields" class="role-specific-fields" style="display: none;">
                    <div class="form-group">
                        <label for="codigo_docente">Código Docente</label>
                        <input type="text" id="codigo_docente" name="codigo_docente" placeholder="Ingresa tu código docente">
                    </div>
                    <div class="form-group">
                        <label for="departamento">Departamento</label>
                        <input type="text" id="departamento" name="departamento" placeholder="Ingresa tu departamento">
                    </div>
                    <div class="form-group">
                        <label for="titulo_academico">Título Académico</label>
                        <input type="text" id="titulo_academico" name="titulo_academico" placeholder="Ingresa tu título académico">
                    </div>
                </div>

                <div class="form-group">
                
                  <a href="login.jsp">
  							 <button type="submit">Registrar</button>
						</a>
                   
                </div>
            </form>
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
