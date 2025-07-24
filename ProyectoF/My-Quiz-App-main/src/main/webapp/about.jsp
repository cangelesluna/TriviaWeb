<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <link rel="icon" type="image/png" href="img/quiz-app-logo.png">
    <title>About Us</title>
    <%@include file="component/allcss.jsp"%>
    <style type="text/css">
        .container-fluid {
            width: 100%;
            padding: 0;
            margin: 0;
        }

        .about-section {
           
            color: white;
            padding: 50px 0;
            text-align: center;
        }

        .about-heading {
            font-size: 2rem;
            font-weight: bold;
            margin-bottom: 30px;
        }

        .about-content {
            font-size: 1.2rem;
            line-height: 1.6;
        }
    </style>
</head>
<body>
    <div class="container-fluid"  style="height:100vh">
        <%@include file="component/navbar.jsp" %>
        
        <div class="about-section">
            <div class="container">
                <h2 class="about-heading">Acerca de Nosotros</h2>
                <p class="about-content">
                   ¡Bienvenido a la app de cuestionarios! Nos dedicamos a brindar una experiencia atractiva y educativa a través de nuestros cuestionarios.
Nuestra misión es hacer que el aprendizaje sea divertido e interactivo. Ya seas estudiante, profesional o simplemente alguien que busca ampliar sus conocimientos, nuestros cuestionarios abarcan una amplia gama de temas que se adaptan a tus intereses.
                </p>
                <p class="about-content">
                    Explora nuestros cuestionarios, desafíate y disfruta del aprendizaje continuo. ¡Gracias por formar parte de la comunidad de Trivia App!
                </p>
                <p class="about-content">
                    En Trivia App, creemos en el poder del conocimiento para transformar vidas. Nuestro equipo de expertos crea cuestionarios que no solo son informativos, sino también entretenidos. Nos esforzamos por crear una plataforma donde se fomente la curiosidad y cada pregunta despierte el deseo de aprender más.
                </p>
                <p class="about-content">
                    Acompáñenos en esta aventura intelectual. Sumérjase en la diversidad de temas, desde ciencia y tecnología hasta arte y literatura. ¡Embárquese juntos en la búsqueda del conocimiento!
                </p>
                <p class="about-content">
    				¡Saludos! Soy Cesar Angeles, un apasionado desarrollador Java que contribuye al desarrollo de Trivia App.
Con una sólida base en programación Java, aporto una vasta experiencia técnica a nuestro dinámico equipo.
Mis habilidades se extienden al desarrollo de soluciones eficientes y escalables, garantizando una experiencia de usuario fluida.
Además de mi dominio de Java, exploro activamente tecnologías innovadoras para mantenerme a la vanguardia del desarrollo de software. ¡Acompáñame en esta emocionante aventura mientras exploramos juntos el mundo de los cuestionarios y el conocimiento!
				</p>
                
            </div>
        </div>

        
    </div>
    <%@include file="component/footer.jsp" %>
</body>
</html>
