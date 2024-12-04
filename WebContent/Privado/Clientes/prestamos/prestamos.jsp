<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BRP - Préstamos del Cliente</title>
<jsp:include page="/comunes/headers.html" />
<jsp:include page="/comunes/headers_tablas.html" />
</head>
<body>

	<jsp:include page="/Privado/Clientes/MenuClientes.jsp" />

	<!-- Panel de Préstamos -->
	<div class="container container-ancho-maximo my-3">
		<h2 class="text-center">Préstamos del Cliente</h2>

		<div class="container conteiner-ancho-maximo my-3">
			<table id="table_prestamos_clientes"
				class="table table-secondary table-striped">
				<thead>
					<tr>
						<th scope="col">ID Préstamo</th>
						<th scope="col">Fecha de Otorgamiento</th>
						<th scope="col">Monto Total</th>
						<th scope="col">Saldo Pendiente</th>
						<th scope="col">Cuota Mensual</th>
						<th scope="col">Vencimiento Próxima Cuota</th>
						<th scope="col">Estado</th>
					</tr>
				</thead>
				<tbody>
					<!-- Datos ficticios de ejemplo -->
					<tr>
						<td>123456</td>
						<td>2023-01-15</td>
						<td>$50,000</td>
						<td>$35,000</td>
						<td>$1,500</td>
						<td>2024-11-20</td>
						<td>Activo</td>
					</tr>
					<tr>
						<td>789012</td>
						<td>2022-05-10</td>
						<td>$30,000</td>
						<td>$5,000</td>
						<td>$1,250</td>
						<td>2024-12-10</td>
						<td>Activo</td>
					</tr>
					<tr>
						<td>345678</td>
						<td>2021-09-30</td>
						<td>$20,000</td>
						<td>$0</td>
						<td>$0</td>
						<td>N/A</td>
						<td>Finalizado</td>
					</tr>
					<tr>
						<td>901234</td>
						<td>2023-03-25</td>
						<td>$15,000</td>
						<td>$10,000</td>
						<td>$1,000</td>
						<td>2024-11-25</td>
						<td>Activo</td>
					</tr>
					<tr>
						<td>567890</td>
						<td>2020-06-12</td>
						<td>$40,000</td>
						<td>$0</td>
						<td>$0</td>
						<td>N/A</td>
						<td>Finalizado</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>

</body>
</html>
