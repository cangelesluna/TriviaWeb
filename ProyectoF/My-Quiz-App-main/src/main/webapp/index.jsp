<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%@page isELIgnored="false"%>

<html>
<head>
   <meta charset="UTF-8">
    <link rel="icon" type="image/png" href="img/quiz-app-logo.png">
   <title>My-Quiz-App</title>
  
   <%@include file="component/allcss.jsp"%>
   <style type="text/css">
	
	
	<!-- customs css for the card  -->
	.my-card {
  	box-shadow: 0px 0px 10px 1px;
  	background: linear-gradient(to bottom, #3498DB, #E74C3C);
  	border: none; 
  	color: white; 
		}

	
	
	.my-card:hover .card-img-top {
 		 transform: scale(1.05); 
		}

	.my-card .card-text {
  	color: black;
	}
	
	.my-card .card-img-top {
  transition: transform 0.3s ease-in-out; 
}
	<!-- customs css for the card-->
	
	
}
</style>
</head>
<body >
   <div class="container-fluid" style="width: 100%; height: 100vh;"  >
      <%@include file="component/navbar.jsp" %>
      <h2 class="text-center mt-5 mb-5">	Bienvenido a la trivia </h2>

      <div class="container text-center">
         
         <div class="row">
            <div class="col-md-6 col-lg-4 mb-3">
               <a href="/my-quiz-app/QuizRequest?quizName=science.csv" style="text-decoration: none; color: inherit;">
                  <div class="card my-card" >
                     <img src="https://cdn.pixabay.com/photo/2010/12/01/space-shuttle-774_1280.jpg" class="card-img-top rounded border border-light shadow" alt="...">
                     <div class="card-body">
                        <p class="card-text">¡Sumérgete en las maravillas del <b>Cuestionario de Ciencias</b>! Pon a prueba tus conocimientos y vive la emoción del descubrimiento científico. ¿Listo para el desafío?</p>
                     </div>
                  </div>
               </a>
            </div>
            <div class="col-md-6 col-lg-4 mb-3">
               <a href="/my-quiz-app/QuizRequest?quizName=art.csv" style="text-decoration: none; color: inherit;">
                  <div class="card my-card">
                     <img src="https://cdn.pixabay.com/photo/2017/01/24/01/13/quiz-2004350_1280.png" class="card-img-top rounded border border-light shadow" alt="...">
                     <div class="card-body">
                        <p class="card-text">¡Embárcate en un viaje creativo con nuestro<b> Cuestionario de arte!</b> Sumérgete en diversas formas de arte, desde pinturas hasta esculturas, y explora la belleza de la expresión artística.</p>
                     </div>
                  </div>
               </a>
            </div>
            <div class="col-md-6 col-lg-4 mb-3">
               <a href="/my-quiz-app/QuizRequest?quizName=computer.csv" style="text-decoration: none; color: inherit;">
                  <div class="card my-card">
                     <img src="https://cdn.pixabay.com/photo/2020/10/21/18/07/laptop-5673901_1280.jpg" class="card-img-top rounded border border-light shadow" alt="...">
                     <div class="card-body">
                        <p class="card-text">¡Explora el mundo de la tecnología con nuestro <b>Cuestionario informático!</b> Pon a prueba tus conocimientos en programación, hardware y tendencias digitales.</p>
                     </div>
                  </div>
               </a>
            </div>
         </div>
      </div>
      
   </div>
   <%@include file="component/footer.jsp" %>
</body>
</html>
