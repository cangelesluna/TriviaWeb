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
<details>
  <summary>Ver lista</summary>

- RF1: El docente puede crear trivias.
- RF2: El estudiante puede participar en las trivias activas.
- RF3: El sistema registra puntajes por estudiante.
- ...

</details>

### 2.2 Requisitos no funcionales
<details>
  <summary>Ver lista</summary>

- RNF1: La aplicación debe cargar en menos de 2 segundos.
- RNF2: El sistema debe permitir 50 conexiones concurrentes.
- ...

</details>

---

## 3. Análisis

### 3.1 Casos de uso
<details>
  <summary>Ver casos</summary>

- **CU01 - Crear Trivia**
  - **Actor**: Docente
  - **Flujo principal**: ...
  - **Flujos alternativos**: ...
  - **Precondiciones**: ...
  - **Postcondiciones**: ...

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
