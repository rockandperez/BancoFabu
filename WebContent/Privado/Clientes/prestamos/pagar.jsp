<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BRP - Pago de Préstamos</title>
<jsp:include page="/comunes/headers.html" />
<jsp:include page="/comunes/headers_tablas.html" />
</head>
<body>

	<jsp:include page="/Privado/Clientes/MenuClientes.jsp" />

	<!-- Panel de Pago de Préstamos -->
	<div class="container container-ancho-maximo my-3">
		<h2 class="text-center">Pago de Préstamos</h2>

		<div class="container conteiner-ancho-maximo my-3">
			<form id="form_pago_prestamo" action="PagarPrestamo" method="post">

				<div class="mb-3">
					<label for="prestamo" class="form-label">Seleccione el
						Préstamo</label> <select class="form-control" id="prestamo"
						name="prestamo" required>
						<option value="" disabled selected>Seleccione el préstamo</option>
						<!-- Datos ficticios de préstamos para ejemplo -->
						<option value="12345">Préstamo #12345 - Saldo: $10,000</option>
						<option value="67890">Préstamo #67890 - Saldo: $5,000</option>
					</select>
				</div>

				<div class="mb-3">
					<label for="cuota" class="form-label">Seleccione la Cuota a
						Pagar</label> <select class="form-control" id="cuota" name="cuota"
						required>
						<option value="" disabled selected>Seleccione la cuota</option>
						<!-- Datos ficticios de cuotas pendientes para ejemplo -->
						<option value="1">Cuota 1 - $500</option>
						<option value="2">Cuota 2 - $500</option>
						<option value="3">Cuota 3 - $500</option>
					</select>
				</div>

				<div class="mb-3">
					<label for="cuenta" class="form-label">Cuenta para
						Descuento</label> <select class="form-control" id="cuenta" name="cuenta"
						required>
						<option value="" disabled selected>Seleccione la cuenta</option>
						<!-- Datos ficticios de cuentas para ejemplo -->
						<option value="0011223344">Cuenta Corriente - 0011223344</option>
						<option value="0022334455">Caja de Ahorro - 0022334455</option>
					</select>
				</div>

				<div class="d-grid gap-2 col-6 mx-auto">
					<button type="submit" class="btn btn-primary">Pagar Cuota</button>
				</div>

			</form>
		</div>
	</div>

</body>
</html>