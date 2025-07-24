<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<html>
<head>
   <meta charset="UTF-8">
   <link rel="icon" type="image/png" href="img/quiz-app-logo.png">
   <title>Trivia-App - Puntaje</title>
   <%@include file="component/allcss.jsp"%>
   <style type="text/css">
      <!-- Add any custom CSS for your score page here -->
   </style>
</head>
<body>
   <div class="container-fluid" style="width: 100%; height: 100vh;">
      <%@include file="component/navbar.jsp" %>
      <h2 class="text-center mt-5 mb-5">Tu Puntaje de Trivia</h2>

      <div class="container text-center">
         <div class="row">
            <div class="col-md-6 offset-md-3">
               <div class="card my-card">
                  <div class="card-body">
                     <h5 class="card-title">Felicitaciones!</h5>
                     <p class="card-text">Tu puntuación actual es: <strong>${score}</strong></p>
                     <a href="resultList" class="btn btn-primary">Vaya a su página de resultados ! </a> 
                     <a href="index.jsp" class="btn btn-primary">Regresar a Inicio</a>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
   <%@include file="component/footer.jsp" %>
</body>
</html>
