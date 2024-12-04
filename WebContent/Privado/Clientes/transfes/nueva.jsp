<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BRP - Transferencias</title>
<jsp:include page="/comunes/headers.html" />
<jsp:include page="/comunes/headers_tablas.html" />
</head>
<body>

	<jsp:include page="/Privado/Clientes/MenuClientes.jsp" />

	<!-- Panel de Transferencias -->
	<div class="container container-ancho-maximo my-3">
		<h2 class="text-center">Transferencias</h2>

		<div class="container">
			<div class="card w-75 mx-auto mb-4">
				<div class="card-header">Realizar Transferencia</div>
				<div class="card-body">
					<form action="procesarTransferencia.jsp" method="POST">
						<!-- Selección de tipo de transferencia -->
						<div class="form-group mb-3">
							<label for="tipoTransferencia">Tipo de Transferencia</label> <select
								class="form-control" id="tipoTransferencia"
								name="tipoTransferencia" required>
								<option value="">Seleccione...</option>
								<option value="propia">Cuentas Propias</option>
								<option value="terceros">Cuentas de Terceros</option>
							</select>
						</div>

						<!-- Selección de cuenta de origen -->
						<div class="form-group mb-3">
							<label for="cuentaOrigen">Cuenta de Origen</label> <select
								class="form-control" id="cuentaOrigen" name="cuentaOrigen"
								required>
								<option value="">Seleccione...</option>
								<!-- Ejemplo de cuentas propias -->
								<option value="001">Cuenta Corriente - 001</option>
								<option value="002">Caja de Ahorro - 002</option>
							</select>
						</div>

						<!-- Selección de cuenta de destino -->
						<div class="form-group mb-3">
							<label for="cuentaDestino">Cuenta de Destino</label> <input
								type="text" class="form-control" id="cuentaDestino"
								name="cuentaDestino"
								placeholder="Ingrese el número de cuenta de destino" required>
						</div>

						<!-- Importe de la transferencia -->
						<div class="form-group mb-3">
							<label for="importe">Importe</label> <input type="number"
								class="form-control" id="importe" name="importe" min="1"
								step="0.01" placeholder="Ingrese el importe" required>
						</div>

						<!-- Concepto de la transferencia -->
						<div class="form-group mb-3">
							<label for="concepto">Concepto</label> <input type="text"
								class="form-control" id="concepto" name="concepto"
								placeholder="Ingrese el concepto de la transferencia">
						</div>

						<!-- Botón para realizar la transferencia -->
						<div class="d-grid gap-2 col-6 mx-auto">
							<button type="submit" class="btn btn-primary">Realizar
								Transferencia</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>

</body>
</html>
