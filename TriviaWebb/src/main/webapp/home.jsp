<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home | Trivia Web</title>
      <link rel="stylesheet" href="css/estilos.css">
  
    <script src="js/scripts.js" defer></script>
</head>
<body>
    <!-- Barra de navegación -->
    <header class="navbar">
        <div class="logo">
            <img src="img/logo.png" alt="RimPlay" >
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

    <!-- Cuerpo principal de la página -->
    <main>
        <!-- Sección de bienvenida y botones de acción -->
        <section class="hero">
            <h1>Bienvenido a Trivia Web</h1>
            <p>¡Crea y juega trivias dinámicas para aprender mientras te diviertes!</p>
            <div class="cta-buttonsh">
                <button onclick="window.location.href='register.jsp'">Registrarse Gratis</button>
                <button onclick="window.location.href='#jugar-trivia'">Explorar Nuevas Trivias</button>
            </div>
            <div class="intro-video">
                <h2>¿Cómo se juega?</h2>
                <p>Ve el video de demostración para aprender a jugar.</p>
                <video controls>
                    <source src="video/demo-trivia.mp4" type="video/mp4">
                    Tu navegador no soporta este formato de video.
                </video>
            </div>
        </section>

        <!-- Sección de funciones clave -->
        <section class="features">
            <h2>Funciones Clave</h2>
            <div class="feature-cards">
                <div class="feature-card">
                    <img src="img/icon1.png" alt="Icono de Trivia">
                    <h3>Trivia Divertida</h3>
                    <p>Disfruta de trivias educativas y dinámicas.</p>
                </div>
                <div class="feature-card">
                    <img src="img/icon2.png" alt="Icono de Preguntas">
                    <h3>Desafíos</h3>
                    <p>Compite con amigos o con jugadores de todo el mundo.</p>
                </div>
                <div class="feature-card">
                    <img src="img/icon3.png" alt="Icono de Puntajes">
                    <h3>Ranking</h3>
                    <p>Ve tu puntuación y mejora tu rendimiento.</p>
                </div>
            </div>
        </section>

        <!-- Sección de ¿Cómo se juega? -->
        <section class="how-to-play">
            <h2>¿Cómo se juega?</h2>
            <p>Descubre cómo puedes jugar, crear trivias y desafiar a tus amigos.</p>
            <button onclick="window.location.href='#informacion'">Ver más</button>
        </section>

        <!-- Sección de Testimonios -->
        <section class="testimonials">
            <h2>Testimonios</h2>
            <div class="testimonial-cards">
                <div class="testimonial-card">
                    <p>"¡Una forma divertida de aprender!"</p>
                    <h4>Juan Pérez</h4>
                    <p>Estudiante</p>
                </div>
                <div class="testimonial-card">
                    <p>"Me encantan las trivias interactivas. ¡Genial para el aprendizaje!"</p>
                    <h4>Ana Gómez</h4>
                    <p>Docente</p>
                </div>
            </div>
        </section>

        <!-- Sección de Preguntas Frecuentes -->
        <section class="faq">
            <h2>Preguntas Frecuentes</h2>
            <div class="faq-item">
                <h3>¿Cómo puedo crear una trivia?</h3>
                <p>Para crear una trivia, simplemente accede al panel de docente y selecciona "Crear trivia".</p>
            </div>
            <div class="faq-item">
                <h3>¿Cuánto tiempo dura una trivia?</h3>
                <p>Cada trivia tiene un tiempo límite configurable por el docente.</p>
            </div>
        </section>
    </main>

    <!-- Pie de página -->
    <footer class="footer">
        <div class="footer-links">
            <a href="#terminos-servicio">Términos de servicio</a>
            <a href="#centro-ayuda">Centro de ayuda</a>
            <a href="#politica-privacidad">Política de privacidad</a>
            <a href="#contacto">Contacto</a>
        </div>
        <div class="footer-social">
            <a href="https://twitter.com" target="_blank">Twitter</a>
            <a href="https://facebook.com" target="_blank">Facebook</a>
            <a href="https://instagram.com" target="_blank">Instagram</a>
        </div>
    </footer>
</body>
</html>
