<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<%@page isELIgnored="false"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
    <link rel="icon" type="image/png" href="img/quiz-app-logo.png">
<title>Iniciar Sesion</title>

<%@include file="component/allcss.jsp"%>
<style type="text/css">
.my-card {
	box-shadow: 0px 0px 10px 1px ;
}

.form-card-color{
		background:#6699ff;
	}
</style>


</head>
<body class="app-background">
	

	<%@include file="component/navbar.jsp" %>


	<div class="container p-5"  style="height:80vh">
		<div class="row">
			<div class="col-md-4 offset-md-4">
				<div class="card my-card">
					<div class="card-header text-center text-white form-card-color">
						
						<p class="fs-4 text-center text-white mt-2">
							<i class="fa-solid fa-award"></i> Iniciar Sesion
						</p>
					</div>
					
					<div class="card-body">
					
						<c:if test="${not empty successMsg }">
							<p class="text-center text-success fs-5">${successMsg}</p>
							<c:remove var="successMsg" scope="session" />
						</c:if>

						<!-- error message -->
						<c:if test="${not empty errorMsg }">
							<p class="text-center text-danger fs-5">${errorMsg}</p>
							<c:remove var="errorMsg" scope="session" />
						</c:if>
						<!-- end of message -->



						
						<form action="userLogin" method="post">
							<div class="mb-3">
								<label class="form-label">Correo electronico</label> <input
									name="email" type="email" placeholder="Ingresar correo electronico"
									class="form-control">
								<div id="emailHelp" class="form-text">Nunca compartiremos tu correo electrónico con nadie más.</div>
							</div>
							<div class="mb-3">
								<label class="form-label">Contraseña</label> <input
									name="password" type="password" placeholder="Ingresar contraseña"
									class="form-control">
							</div>

							<button type="submit"
								class="btn col-md-12 text-white form-card-color">Acceder</button>
						</form>
						<br>¿No tienes una cuenta? <a href="signup.jsp"
							class="text-decoration-none">crear cuenta</a>
						
					</div>
				</div>
			</div>
		</div>
	</div>


		<footer><%@include file="component/footer.jsp" %></footer>

</body>
		

</html>