<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BRP - Solicitud de Préstamo</title>
<jsp:include page="/comunes/headers.html" />
<jsp:include page="/comunes/headers_tablas.html" />
</head>
<body>

	<jsp:include page="/Privado/Clientes/MenuClientes.jsp" />

	<!-- Panel de Solicitud de Préstamo -->
	<div class="container container-ancho-maximo my-3">
		<h2 class="text-center">Solicitud de Préstamo</h2>

		<div class="container conteiner-ancho-maximo my-3">
			<form id="form_solicitud_prestamo" action="SolicitarPrestamo"
				method="post">

				<div class="mb-3">
					<label for="monto" class="form-label">Monto Deseado</label> <input
						type="number" class="form-control" id="monto" name="monto"
						placeholder="Ingrese el monto deseado" required min="1000"
						step="100">
				</div>

				<div class="mb-3">
					<label for="cuotas" class="form-label">Número de Cuotas</label> <select
						class="form-control" id="cuotas" name="cuotas" required>
						<option value="" disabled selected>Seleccione el número
							de cuotas</option>
						<option value="6">6 Cuotas</option>
						<option value="12">12 Cuotas</option>
						<option value="24">24 Cuotas</option>
						<option value="36">36 Cuotas</option>
					</select>
				</div>

				<div class="mb-3">
					<label for="cuenta" class="form-label">Cuenta de Depósito</label> <select
						class="form-control" id="cuenta" name="cuenta" required>
						<option value="" disabled selected>Seleccione la cuenta</option>
						<!-- Datos ficticios de cuentas para ejemplo -->
						<option value="0011223344">Cuenta Corriente - 0011223344</option>
						<option value="0022334455">Caja de Ahorro - 0022334455</option>
					</select>
				</div>

				<div class="d-grid gap-2 col-6 mx-auto">
					<button type="submit" class="btn btn-primary">Solicitar
						Préstamo</button>
				</div>

			</form>
		</div>
	</div>

</body>
</html>