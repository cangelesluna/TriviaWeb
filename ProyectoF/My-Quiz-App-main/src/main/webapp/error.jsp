<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <link rel="icon" type="image/png" href="img/quiz-app-logo.png">
   <title>Error -Trivia App</title>
   
   <%@include file="component/allcss.jsp"%>
</head>
<body>
   <div class="container text-center" style="height:100vh">
      <%@include file="component/navbar.jsp" %>
      <h2 class="mb-4">¡Ups! Algo salió mal.</h2>
      <p class="mb-4"><%= request.getParameter("message") %></p>
      <a href="index.jsp" class="btn btn-primary">Regresar a Inicio</a>
   </div>
   <%@include file="component/footer.jsp" %>
</body>
</html>
