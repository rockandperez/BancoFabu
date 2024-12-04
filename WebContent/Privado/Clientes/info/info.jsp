<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BRP - Información Personal</title>
<jsp:include page="/comunes/headers.html" />
</head>
<body>

	<jsp:include page="/Privado/Clientes/MenuClientes.jsp" />

	<div class="container container-ancho-maximo my-3">
		<h2 class="text-center">Información Personal</h2>

		<div class="card w-50 mx-auto mb-4">
			<div class="card-header">Datos del Cliente</div>
			<div class="card-body">
				<form>
					<!-- Datos ficticios de ejemplo -->
					<div class="form-group mb-3">
						<label for="nombre">Nombre</label> <input type="text"
							class="form-control" id="nombre" value="Facundo Luna" disabled>
					</div>

					<div class="form-group mb-3">
						<label for="dni">DNI</label> <input type="text"
							class="form-control" id="dni" value="43564999" disabled>
					</div>

					<div class="form-group mb-3">
						<label for="direccion">Dirección</label> <input type="text"
							class="form-control" id="direccion" value="Elordi 123" disabled>
					</div>

					<div class="form-group mb-3">
						<label for="telefono">Teléfono</label> <input type="text"
							class="form-control" id="telefono" value="2227 45 8888" disabled>
					</div>

					<div class="form-group mb-3">
						<label for="email">Correo Electrónico</label> <input type="email"
							class="form-control" id="email" value="facundo.luna@gmail.com"
							disabled>
					</div>
				</form>
			</div>
		</div>
	</div>

</body>
</html>