/*

// Lógica para cambiar el formulario de acuerdo al rol seleccionado (Estudiante/Docente)
document.getElementById('rol').addEventListener('change', function() {
    var rol = this.value;
    var estudianteFields = document.getElementById('estudiante-fields');
    var docenteFields = document.getElementById('docente-fields');

    if (rol === 'estudiante') {
        estudianteFields.style.display = 'block';
        docenteFields.style.display = 'none';
    } else if (rol === 'docente') {
        docenteFields.style.display = 'block';
        estudianteFields.style.display = 'none';
    }
});

// Lógica para agregar una nueva pregunta en la página de creación de trivia
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

// Función para copiar el enlace de la trivia en la página de activeTrivia.jsp
document.querySelector('.share-trivia button').addEventListener('click', function() {
    var triviaUrl = document.querySelector('.share-trivia input').value;
    navigator.clipboard.writeText(triviaUrl).then(function() {
        alert('Enlace copiado al portapapeles!');
    }).catch(function(err) {
        alert('Error al copiar el enlace: ', err);
    });
});

// Lógica para la validación de los formularios de login y registro (simple validación)
document.getElementById('login-form')?.addEventListener('submit', function(event) {
    var email = document.getElementById('email').value;
    var password = document.getElementById('password').value;

    if (!email || !password) {
        alert("Por favor, ingresa todos los campos.");
        event.preventDefault(); // Evita el envío del formulario
    }
});

document.getElementById('register-form')?.addEventListener('submit', function(event) {
    var nombre = document.getElementById('nombre').value;
    var email = document.getElementById('email').value;
    var password = document.getElementById('password').value;

    if (!nombre || !email || !password) {
        alert("Por favor, ingresa todos los campos.");
        event.preventDefault(); // Evita el envío del formulario
    }
});

// Lógica para mostrar u ocultar las preguntas adicionales en la página de creación de trivia
document.getElementById("question_type_1")?.addEventListener("change", function(event) {
    let questionIndex = 1;
    let optionsInput = document.getElementById(`options_${questionIndex}`);
    if (event.target.value === 'opcion_multiple') {
        optionsInput.querySelector('input').disabled = false;
    } else {
        optionsInput.querySelector('input').disabled = true;
    }
});

*/
