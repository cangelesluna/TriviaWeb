<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Crear Trivia | Trivia Web</title>
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
                <li><a href="home.jsp#informacion">Información</a></li>
                <li><a href="home.jsp#jugar-trivia">Jugar Trivia</a></li>
                <li><a href="login.jsp">Iniciar Sesión</a></li>
                <li><a href="register.jsp">Registrar</a></li>
            </ul>
        </nav>
    </header>

    <!-- Cuerpo principal de la página para crear una trivia -->
    <main>
        <section class="create-trivia-form">
            <h1>Crear una Nueva Trivia</h1>
            <form action="CreateTriviaServlet" method="POST">
                <!-- Datos de la trivia -->
                <div class="form-group">
                    <label for="titulo">Título de la Trivia</label>
                    <input type="text" id="titulo" name="titulo" placeholder="Ingresa el título de la trivia" required>
                </div>

                <div class="form-group">
                    <label for="descripcion">Descripción de la Trivia</label>
                    <textarea id="descripcion" name="descripcion" placeholder="Ingresa una descripción para la trivia" required></textarea>
                </div>

                <div class="form-group">
                    <label for="tiempo_limite">Tiempo Límite (en minutos)</label>
                    <input type="number" id="tiempo_limite" name="tiempo_limite" placeholder="Ingresa el tiempo límite para la trivia" min="1" required>
                </div>

                <!-- Datos de las preguntas -->
                <h2>Preguntas</h2>

                <div id="questions-container">
                    <div class="question-section">
                        <div class="form-group">
                            <label for="question_1">Pregunta 1</label>
                            <textarea id="question_1" name="questions[0][question]" placeholder="Ingresa la pregunta" required></textarea>
                        </div>

                        <div class="form-group">
                            <label for="question_type_1">Tipo de Pregunta</label>
                            <select id="question_type_1" name="questions[0][type]" required>
                                <option value="opcion_multiple">Opción Múltiple</option>
                                <option value="verdadero_falso">Verdadero/Falso</option>
                                <option value="respuesta_corta">Respuesta Corta</option>
                            </select>
                        </div>

                        <div class="form-group" id="options_1">
                            <label for="options_1">Opciones (separadas por coma)</label>
                            <input type="text" id="options_1" name="questions[0][options]" placeholder="Ingresa las opciones (solo para opción múltiple)" disabled>
                        </div>

                        <div class="form-group">
                            <label for="correct_answer_1">Respuesta Correcta</label>
                            <input type="text" id="correct_answer_1" name="questions[0][correct_answer]" placeholder="Ingresa la respuesta correcta" required>
                        </div>
                    </div>
                </div>

                <button type="button" id="add_question_button">Agregar otra pregunta</button>

                <div class="form-group">
                <a href="activeTrivia.jsp">
  					<button type="button">Crear Trivia</button>
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

    <script>
        // Lógica para agregar nuevas preguntas
        document.getElementById("add_question_button").addEventListener("click", function() {
            let questionIndex = document.querySelectorAll('.question-section').length;
            let newQuestionSection = document.createElement('div');
            newQuestionSection.classList.add('question-section');

            newQuestionSection.innerHTML = `
                <div class="form-group">
                    <label for="question_${questionIndex + 1}">Pregunta ${questionIndex + 1}</label>
                    <textarea id="question_${questionIndex + 1}" name="questions[${questionIndex}][question]" placeholder="Ingresa la pregunta" required></textarea>
                </div>

                <div class="form-group">
                    <label for="question_type_${questionIndex + 1}">Tipo de Pregunta</label>
                    <select id="question_type_${questionIndex + 1}" name="questions[${questionIndex}][type]" required>
                        <option value="opcion_multiple">Opción Múltiple</option>
                        <option value="verdadero_falso">Verdadero/Falso</option>
                        <option value="respuesta_corta">Respuesta Corta</option>
                    </select>
                </div>

                <div class="form-group" id="options_${questionIndex + 1}">
                    <label for="options_${questionIndex + 1}">Opciones (separadas por coma)</label>
                    <input type="text" id="options_${questionIndex + 1}" name="questions[${questionIndex}][options]" placeholder="Ingresa las opciones (solo para opción múltiple)" disabled>
                </div>

                <div class="form-group">
                    <label for="correct_answer_${questionIndex + 1}">Respuesta Correcta</label>
                    <input type="text" id="correct_answer_${questionIndex + 1}" name="questions[${questionIndex}][correct_answer]" placeholder="Ingresa la respuesta correcta" required>
                </div>
            `;

            // Agregar la nueva pregunta al contenedor
            document.getElementById('questions-container').appendChild(newQuestionSection);
        });

        // Lógica para habilitar o deshabilitar las opciones dependiendo del tipo de pregunta
        document.addEventListener("change", function(event) {
            if (event.target.id && event.target.id.includes('question_type_')) {
                let questionIndex = event.target.id.split('_')[2];
                let optionsInput = document.getElementById(`options_${questionIndex}`);
                if (event.target.value === 'opcion_multiple') {
                    optionsInput.querySelector('input').disabled = false;
                } else {
                    optionsInput.querySelector('input').disabled = true;
                }
            }
        });
    </script>
</body>
</html>
