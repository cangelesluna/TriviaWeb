# 📘 Documentación del Desarrollador  
## Proyecto: IMPLEMENTACIÓN DE UNA HERRAMIENTA INTERACTIVA PARA FOMENTAR LA PARTICIPACIÓN ESTUDIANTIL

---

## 📋 Índice

- [1. Introducción](#1-introducción)
- [2. Requisitos del sistema](#2-requisitos-del-sistema)
  - [2.1 Requisitos funcionales](#21-requisitos-funcionales)
  - [2.2 Requisitos no funcionales](#22-requisitos-no-funcionales)
- [3. Análisis](#3-análisis)
  - [3.1 Casos de uso](#31-casos-de-uso)
  - [3.2 Diagrama de casos de uso](#32-diagrama-de-casos-de-uso)
  - [3.3 Modelo BPMN](#33-modelo-bpmn)
- [4. Diseño del sistema](#4-diseño-del-sistema)
  - [4.1 Prototipos UX/UI](#41-prototipos-uxui)
  - [4.2 Modelo entidad-relación](#42-modelo-entidad-relación)
  - [4.3 Modelo de base de datos lógico y físico](#43-modelo-de-base-de-datos-lógico-y-físico)
  - [4.4 Diagrama de clases (opcional)](#44-diagrama-de-clases-opcional)
- [5. Base de datos](#5-base-de-datos)
  - [5.1 Código SQL de creación](#51-código-sql-de-creación)
  - [5.2 Scripts adicionales (triggers, views, procedures)](#52-scripts-adicionales-triggers-views-procedures)
- [6. Desarrollo](#6-desarrollo)
  - [6.1 Estructura del proyecto](#61-estructura-del-proyecto)
  - [6.2 Tecnologías utilizadas](#62-tecnologías-utilizadas)
  - [6.3 Configuraciones importantes](#63-configuraciones-importantes)
- [7. Entregables y archivos adjuntos](#7-entregables-y-archivos-adjuntos)
- [8. Conclusiones y recomendaciones](#8-conclusiones-y-recomendaciones)

---

## 1. Introducción

Descripción general del sistema, objetivos del proyecto, público objetivo y alcance.

---

## 2. Requisitos del sistema

### 2.1 Requisitos funcionales
#### 📦 RF1: Registro y Autenticación de Usuarios
<details>
  <summary>Ver requisitos</summary>

- RF1.1: El sistema debe permitir el registro de usuarios (docentes y estudiantes) con una dirección de email válida y una contraseña de mínimo 8 caracteres.
- RF1.2: El sistema debe permitir a los usuarios iniciar sesión con email y contraseña registrados.
- RF1.3: El sistema debe permitir la recuperación de contraseña mediante envío de enlace de restablecimiento al correo electrónico del usuario.

</details>

#### 🎯 RF2: Gestión de Trivias (Docente)
<details>
  <summary>Ver requisitos</summary>

- RF2.1: El sistema debe permitir al docente crear una trivia ingresando un título (mínimo 5 caracteres) y una descripción (opcional).
- RF2.2: El sistema debe permitir listar todas las trivias creadas por el docente actual, mostrando al menos título, número de preguntas y fecha de creación.
- RF2.3: El sistema debe permitir editar el título y descripción de una trivia existente.
- RF2.4: El sistema debe permitir eliminar trivias creadas por el docente actual.

</details>

#### 📊 RF3: Gestión de Preguntas (Docente)
<details>
  <summary>Ver requisitos</summary>

- RF3.1: El sistema debe permitir al docente agregar preguntas de opción múltiple a una trivia, especificando el enunciado, al menos 2 opciones, y una opción correcta.
- RF3.2: El sistema debe permitir al docente agregar preguntas de tipo verdadero/falso.
- RF3.3: El sistema debe permitir al docente editar el enunciado, las opciones y la respuesta correcta de una pregunta existente.
- RF3.4: El sistema debe permitir eliminar preguntas de una trivia.

</details>

#### 🧮 RF4: Interacción del Estudiante
<details>
  <summary>Ver requisitos</summary>

- RF4.1: El sistema debe permitir a un estudiante registrado ver la lista de trivias disponibles para su cuenta, incluyendo título y estado (completada/no completada).
- RF4.2: El sistema debe permitir que un estudiante seleccione una trivia y responda todas las preguntas en una sola sesión.
- RF4.3: El sistema debe almacenar el intento del estudiante, incluyendo sus respuestas, la trivia respondida y la fecha del intento.

</details>

#### 🛠️ RF5: Visualización de Resultados
<details>
  <summary>Ver requisitos</summary>

- RF5.1: Al finalizar una trivia, el sistema debe mostrar al estudiante un resumen con su puntaje total (porcentaje de aciertos), número de respuestas correctas/incorrectas y las respuestas correctas de cada pregunta.
- RF5.2: El sistema debe permitir al docente consultar un historial de intentos de cada trivia, filtrando por estudiante y fecha, mostrando para cada intento: nombre del estudiante, fecha del intento y puntaje obtenido.

</details>

### 2.2 Requisitos no funcionales
#### 📦 RNF1: Seguridad
<details>
  <summary>Ver requisitos</summary>

- RNF1.1: Las contraseñas de todos los usuarios deben almacenarse cifradas con el algoritmo BCrypt.
- RNF1.2: El sistema debe implementar protección contra ataques comunes: CSRF, XSS y SQL Injection (verificable mediante pruebas de penetración).
- RNF1.3: Solo los usuarios autenticados pueden acceder a funcionalidades privadas del sistema (verificable mediante pruebas de roles).

</details>

#### 🎯 RNF2: Rendimiento
<details>
  <summary>Ver requisitos</summary>

- RNF2.1: El sistema debe ser capaz de manejar al menos 100 usuarios activos simultáneamente sin pérdida de funcionalidad.
- RNF2.2: El tiempo de carga de una trivia (preguntas + opciones) no debe superar los 2 segundos bajo carga normal (medido con herramientas de pruebas de rendimiento como JMeter o Apache Benchmark).

</details>

#### 📊 RNF3: Usabilidad
<details>
  <summary>Ver requisitos</summary>

- RNF3.1: La interfaz del sistema debe permitir a un usuario nuevo completar el registro y responder una trivia en menos de 5 minutos sin ayuda externa (verificable mediante pruebas de usabilidad).
- RNF3.2: El sistema debe ser accesible desde dispositivos móviles y de escritorio, utilizando diseño responsive (verificable con herramientas como Chrome DevTools)

</details>

#### 🧮 RNF4: Disponibilidad
<details>
  <summary>Ver requisitos</summary>

- RNF4.1: El sistema debe estar disponible al menos el 99% del tiempo mensual (medido por el proveedor de hosting, como Render).
- RNF4.2: El sistema debe mostrar un mensaje de error amigable en caso de fallas de conexión o errores del servidor.

</details>



## 3. Análisis

### 3.1 Casos de uso
<details>
  <summary>Ver casos</summary>

#### Módulo 1 : Autenticación Y Gestión De Usuarios

- **CU01 - Registrarse**
  - **Actor**: Docente / Estudiante / Administrador
  - **Flujo principal**: 1. Accede al formulario de registro.
                         2. Ingresa nombre, correo, contraseña y rol.
                         3. El sistema valida que el correo no esté registrado.
                         4. El sistema cifra la contraseña (BCrypt) y registra al usuario.
                         5. Se redirige al login.

  - **Flujos alternativos**: 3a. Si el correo ya existe, se muestra un mensaje de error.
  - **Precondiciones**: El usuario no debe estar registrado.
  - **Postcondiciones**:  La cuenta se crea y el usuario puede iniciar sesión.

- **CU02 - Iniciar Sesión**
  - **Actor**: Todos los usuarios
  - **Flujo principal**: 1. Accede al login.
                         2. Ingresa correo y contraseña.
                         3. El sistema valida credenciales y redirige según el rol.
                      
  - **Flujos alternativos**: 3a. Si las credenciales no coinciden, muestra error.
  - **Precondiciones**: El usuario debe estar registrado.
  - **Postcondiciones**:  Acceso concedido al sistema.

- **CU03- Cerrar Sesión**
  - **Actor**: Todos los usuarios
  - **Flujo principal**: 1. Clic en “Cerrar sesión”.
                         2. El sistema invalida la sesión.
                         3. Redirige al login.
                    
   - **Precondiciones**:  Usuario autenticado.
  - **Postcondiciones**:  Sesión cerrada correctamente.

- **CU04 - Recuperar contraseña**
  - **Actor**: Todos los usuarios
  - **Flujo principal**: 1. Accede a "¿Olvidaste tu contraseña?".
                         2. Ingresa su correo.
                         3. El sistema envía enlace de recuperación.
                         4. Define una nueva contraseña.
                     
  - **Flujos alternativos**: 2a. Si el correo no está registrado, se muestra error.
  - **Precondiciones**: Correo registrado.
  - **Postcondiciones**:  Contraseña actualizada.

#### Módulo 2 : Gestión de Trivias (Docente)

- **CU05 - Ver Dashboard de trivias propias**
  - **Actor**: Docente
  - **Flujo principal**: 1. Accede al panel de trivias.
                         2. El sistema muestra sus trivias activas.
                       
  - **Flujos alternativos**: Si no hay trivias, se muestra un mensaje vacío.
  - **Precondiciones**: Autenticado como docente.
  - **Postcondiciones**:  Trivias listadas en el panel.

- **CU06 - Crear nueva trivia**
  - **Actor**: Docente
  - **Flujo principal**: 1. Accede a “Crear trivia”.
                         2. Llena título, descripción y tiempo.
                         3. El sistema guarda la trivia.
                
  - **Flujos alternativos**: Si falta un campo obligatorio, muestra error.
  - **Precondiciones**: Sesión activa.
  - **Postcondiciones**:  Trivia registrada.

- **CU01 - Registrarse**
  - **Actor**: ...
  - **Flujo principal**: 1. ...
                         2. ..
                         3. ...
                         4. ...
                         5. ..

  - **Flujos alternativos**: ..
  - **Precondiciones**: ..
  - **Postcondiciones**:  ...

- **CU01 - Registrarse**
  - **Actor**: ...
  - **Flujo principal**: 1. ...
                         2. ..
                         3. ...
                         4. ...
                         5. ..

  - **Flujos alternativos**: ..
  - **Precondiciones**: ..
  - **Postcondiciones**:  ...


- **CU01 - Registrarse**
  - **Actor**: ...
  - **Flujo principal**: 1. ...
                         2. ..
                         3. ...
                         4. ...
                         5. ..

  - **Flujos alternativos**: ..
  - **Precondiciones**: ..
  - **Postcondiciones**:  ...


- **CU01 - Registrarse**
  - **Actor**: ...
  - **Flujo principal**: 1. ...
                         2. ..
                         3. ...
                         4. ...
                         5. ..

  - **Flujos alternativos**: ..
  - **Precondiciones**: ..
  - **Postcondiciones**:  ...


- **CU01 - Registrarse**
  - **Actor**: ...
  - **Flujo principal**: 1. ...
                         2. ..
                         3. ...
                         4. ...
                         5. ..

  - **Flujos alternativos**: ..
  - **Precondiciones**: ..
  - **Postcondiciones**:  ...


- **CU01 - Registrarse**
  - **Actor**: ...
  - **Flujo principal**: 1. ...
                         2. ..
                         3. ...
                         4. ...
                         5. ..

  - **Flujos alternativos**: ..
  - **Precondiciones**: ..
  - **Postcondiciones**:  ...


- **CU01 - Registrarse**
  - **Actor**: ...
  - **Flujo principal**: 1. ...
                         2. ..
                         3. ...
                         4. ...
                         5. ..

  - **Flujos alternativos**: ..
  - **Precondiciones**: ..
  - **Postcondiciones**:  ...


- **CU01 - Registrarse**
  - **Actor**: ...
  - **Flujo principal**: 1. ...
                         2. ..
                         3. ...
                         4. ...
                         5. ..

  - **Flujos alternativos**: ..
  - **Precondiciones**: ..
  - **Postcondiciones**:  ...


- **CU01 - Registrarse**
  - **Actor**: ...
  - **Flujo principal**: 1. ...
                         2. ..
                         3. ...
                         4. ...
                         5. ..

  - **Flujos alternativos**: ..
  - **Precondiciones**: ..
  - **Postcondiciones**:  ...


- **CU01 - Registrarse**
  - **Actor**: ...
  - **Flujo principal**: 1. ...
                         2. ..
                         3. ...
                         4. ...
                         5. ..

  - **Flujos alternativos**: ..
  - **Precondiciones**: ..
  - **Postcondiciones**:  ...













</details>

### 3.2 Diagrama de casos de uso  
📎 Adjuntar imagen:  
![Diagrama de casos de uso](./imagenes/diagrama_casos_uso.png)

### 3.3 Modelo BPMN  
📎 Adjuntar imagen:  
![Modelo BPMN](./imagenes/modelo_bpmn.png)

---

## 4. Diseño del sistema

### 4.1 Prototipos UX/UI  
📎 Adjuntar enlaces o imágenes:  
- [Figma - vista docente](https://www.figma.com/...)  
- ![Prototipo estudiante](./imagenes/prototipo_estudiante.png)

### 4.2 Modelo entidad-relación  
📎 Adjuntar imagen:  
![Modelo ER](./imagenes/modelo_entidad_relacion.png)

### 4.3 Modelo de base de datos lógico y físico  
📎 Adjuntar PDF o imagen  
- [📄 Modelo lógico](./documentos/modelo_logico.pdf)  
- [📄 Modelo físico](./documentos/modelo_fisico.pdf)

### 4.4 Diagrama de clases (opcional)  
📎 Adjuntar imagen si aplica.

---

## 5. Base de datos

### 5.1 Código SQL de creación  
```sql
CREATE TABLE usuarios (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(100),
  rol ENUM('docente', 'estudiante')
);
-- Más tablas...
