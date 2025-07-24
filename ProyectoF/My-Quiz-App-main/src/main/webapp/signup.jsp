<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!-- for jstl tag -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- end of jstl tag -->

<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Signup</title>


    <%@include file="component/allcss.jsp"%>
    <style type="text/css">
        .my-card {
            box-shadow: 0px 0px 10px 1px ;
        }

        .form-card-color {
            background: #ff6669;
        }
    </style>


</head>
<body class="app-background">
    <!-- navbar -->
    <%@include file="component/navbar.jsp" %>

    <!-- User Signup -->
    <div class="container p-5"  style="height:100vh">
        <div class="row">
            <div class="col-md-4 offset-md-4">
                <div class="card my-card">
                    <div class="card-header text-center text-white form-card-color">
                        <p class="fs-4 text-center text-white mt-2">
                            <i class="fa-solid fa-award"></i> Registrar Usuario
                        </p>
                    </div>

                    <div class="card-body">
                        <!-- Boostrap form -->
                        <form action="UserSignUp" method="post">
                            <div class="mb-3">
                                <label class="form-label">Nombre Completo</label>
                                <input name="user_name" type="text" placeholder="Ingresar nombre completo" class="form-control">
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Correo electronico</label>
                                <input name="user_email" type="email" placeholder="Escribir correo" class="form-control">
                                <div id="emailHelp" class="form-text">Nunca compartiremos su correo electrónico con nadie más.</div>
                            </div>
                            <div class="mb-3">
                                <label class="form-label">Contraseña</label>
                                <input name="user_password" type="password" placeholder="Escribir contraseña" class="form-control">
                            </div>

                            <button type="submit" class="btn col-md-12 text-white form-card-color">Registrarse</button>
                        </form>
                        <!-- End of Boostrap form -->

                        <br>¿Ya tienes una cuenta? <a href="login.jsp" class="text-decoration-none">Iniciar Sesion</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- End of User Signup -->

    <!-- Footer -->
    <footer><%@include file="component/footer.jsp" %></footer>

</body>
</html>
