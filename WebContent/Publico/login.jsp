<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<title>BRP - Login</title>
<jsp:include page="/comunes/headers.html" />
<link href="login.css" rel="stylesheet">

</head>
<body>


	<div class="container">


		<nav class="navbar navbar-dark bg-dark justify-content-center mb-3">
		<span class="navbar-brand mb-0 h1"> <img
			src="/BancoRP/comunes/icono.svg" alt="Logo" width="30" height="30"
			class="d-inline-block align-text-top bg-dark"> Banco Roque
			Perez
		</span> </nav>



		<div class="container d-flex justify-content-center">
			<div class="card w-50">
				<div class="card-header">Ingrese sus credenciales</div>

				<div class="card-body">
					<form class="form-login">

						<div class="form-group">
							<label for="usuario">Usuario</label> <input type="text"
								class="form-control" id="usuario">
						</div>

						<div class="form-group">
							<label for="password">Password</label> <input type="password"
								class="form-control" id="password">
							<!-- Checkbox para mostrar/ocultar contraseña -->
							<div class="form-check mt-2">
								<input type="checkbox" class="form-check-input"
									id="showPassword" onclick="togglePassword()"> <label
									class="form-check-label" for="showPassword">Mostrar
									contraseña</label>

							</div>
							<div class="d-grid gap-2 col-6 mx-auto btn-login">
								<button type="submit" class="btn btn-primary">Login</button>
							</div>
					</form>
				</div>
			</div>
		</div>

	</div>

	<script>
        // Función para mostrar/ocultar la contraseña
        function togglePassword() {
            var passwordField = document.getElementById("password");
            if (passwordField.type === "password") {
                passwordField.type = "text";
            } else {
                passwordField.type = "password";
            }
        }
    </script>

</body>
</html>