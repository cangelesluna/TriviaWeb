<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Registro - RimPlay</title>
  <link rel="stylesheet" href="/AppWeb/css/estilos.css">
</head>
<body>

  <div class="form-container">
    <h2>Regístrate con una cuenta básica</h2>

    <button class="google-btn">
      <img src="img/google-icon.png" alt="Google" style="height:16px; vertical-align:middle; margin-right:10px;">
      Sign in with Google
    </button>

    <form action="procesarRegistro.jsp" method="post">
      <div class="form-group">
        <input type="email" name="email" placeholder="Dirección de correo electrónico" required>
      </div>

      <div class="form-group">
        <input type="password" name="password" placeholder="Contraseña" required>
      </div>

      <div class="form-group">
        <input type="password" name="confirmar" placeholder="Confirmar contraseña" required>
      </div>

      <div class="form-group">
        <label for="pais">Ubicación</label>
        <select name="pais" required>
          <option value="PE">🇵🇪 Perú</option>
          <option value="MX">🇲🇽 México</option>
          <option value="AR">🇦🇷 Argentina</option>
          <option value="CO">🇨🇴 Colombia</option>
        </select>
      </div>

      <div class="checkbox">
        <input type="checkbox" name="terminos" required>
        <label>Acepto los <a href="#">Términos de uso</a> y la <a href="#">Política de privacidad</a></label>
      </div>

      <button type="submit" class="btn-submit">Registrarse</button>
    </form>

    <div class="note">
      Para comparar los tipos de cuenta, lee los <a href="#">Planes de precios</a><br>
      Si tu centro educativo ha adquirido Rimplay, usa tu clave de invitación.
    </div>
  </div>

</body>
</html>


