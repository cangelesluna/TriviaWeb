# Trivia Web Application

## Descripción

Este proyecto es una **aplicación web de trivia** que permite a los usuarios participar en cuestionarios sobre diferentes temas, ver los resultados de sus respuestas y consultar los puntajes más altos. Los usuarios pueden registrarse, iniciar sesión, participar en cuestionarios, ver su puntaje y explorar las clasificaciones de los mejores jugadores.

## Características

- **Registro y autenticación de usuarios**: Los usuarios pueden registrarse en el sistema, iniciar sesión y acceder a los cuestionarios.
- **Participación en cuestionarios**: Los usuarios pueden seleccionar cuestionarios de diferentes temas, responder preguntas y obtener resultados.
- **Visualización de resultados y clasificación**: Los resultados de los cuestionarios se almacenan y se muestran a los usuarios, con la posibilidad de consultar la tabla de clasificación con los mejores puntajes.
- **Interfaz amigable**: La aplicación tiene una interfaz intuitiva con barra de navegación, pie de página y una estructura responsiva para dispositivos móviles.

## Tecnologías Utilizadas

- **Java EE**: Utiliza **Servlets** para manejar la lógica de negocio y **JSP** (JavaServer Pages) para la interfaz de usuario.
- **JDBC**: Para interactuar con la base de datos y realizar operaciones CRUD (crear, leer, actualizar y eliminar) sobre los datos de los usuarios y resultados.
- **Apache Tomcat**: Servidor web para desplegar la aplicación.
- **HTML, CSS y JavaScript**: Para el diseño de la interfaz y la interactividad en las páginas.

## Estructura del Proyecto

### Clases Java

1. **`DBConnection.java`**: Clase que gestiona la conexión con la base de datos utilizando JDBC.
2. **`User.java`**: Clase que representa la entidad de un usuario.
3. **`Result.java`**: Clase que representa la entidad de un resultado de cuestionario.
4. **`UserDao.java`**: Clase DAO para gestionar operaciones relacionadas con los usuarios en la base de datos.
5. **`ResultDao.java`**: Clase DAO para gestionar operaciones relacionadas con los resultados en la base de datos.
6. **`QuizHandler.java`**: Clase que maneja la carga de preguntas desde archivos CSV y la preparación de los cuestionarios.
7. **`UserLogin.java`**: Servlet encargado de manejar el inicio de sesión de los usuarios.
8. **`UserSignUp.java`**: Servlet encargado de manejar el registro de nuevos usuarios.
9. **`QuizRequest.java`**: Servlet que maneja la solicitud para un cuestionario específico.
10. **`QuizResponse.java`**: Servlet que maneja las respuestas de un cuestionario.
11. **`LeaderBoard.java`**: Clase que gestiona la visualización de los puntajes más altos.
12. **`Logout.java`**: Servlet que maneja el cierre de sesión de los usuarios.

### Archivos JSP

1. **`index.jsp`**: Página de inicio con enlaces a las secciones principales de la aplicación.
2. **`login.jsp`**: Página de inicio de sesión de usuarios.
3. **`signup.jsp`**: Página de registro de nuevos usuarios.
4. **`quiz.jsp`**: Página donde los usuarios pueden responder a las preguntas del cuestionario.
5. **`result.jsp`**: Página que muestra los resultados después de que el usuario complete un cuestionario.
6. **`leaderboard.jsp`**: Página que muestra la tabla de clasificación con los mejores puntajes.
7. **`profile.jsp`**: Página que muestra el perfil del usuario.
8. **`error.jsp`**: Página que muestra mensajes de error si algo sale mal.
9. **`about.jsp`**: Página con información sobre la aplicación.
10. **`footer.jsp`**: Pie de página de la aplicación.
11. **`navbar.jsp`**: Barra de navegación que aparece en todas las páginas.

### Archivos CSS y JavaScript

1. **`allcss.jsp`**: Archivos CSS que definen el estilo global de la aplicación.
2. **`footer.jsp` y `navbar.jsp`**: Contienen el HTML para la barra de navegación y el pie de página que se incluyen en todas las páginas.

## Requisitos

- **Java 8 o superior**
- **Apache Tomcat 9.0 o superior**
- **MySQL o cualquier base de datos compatible con JDBC**

## Instalación

### 1. Clona el repositorio

```bash
git clone https://github.com/tuusuario/TriviaWebApp.git
cd TriviaWebApp


## 2. Configura la base de datos

1. Crea una base de datos MySQL con las tablas necesarias para almacenar los usuarios y resultados de los cuestionarios. Puedes usar el siguiente esquema como guía:

```sql
CREATE DATABASE trivia_db;

USE trivia_db;

CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    user_name VARCHAR(100),
    user_email VARCHAR(100) UNIQUE,
    user_password VARCHAR(255)
);

CREATE TABLE results (
    result_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    quiz_name VARCHAR(100),
    score INT,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);
