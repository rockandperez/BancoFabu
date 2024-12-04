<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<title>Administracion - Presatamos</title>
<jsp:include page="/comunes/headers.html" />
<jsp:include page="/comunes/headers_tablas.html" />


</head>
<body>

	<jsp:include page="/Privado/Admin/MenuAdmin.jsp" />

	<div class="container conteiner-ancho-maximo my-3">

		<table id="table_prestamos"
			class="table table-secondary table-striped">

			<thead>
				<tr>
					<th scope="col">#</th>
					<th scope="col">Cliente asignado</th>
					<th scope="col">Fecha de solicitud</th>
					<th scope="col">Importe a Pagar</th>
					<th scope="col">Importe Solicitado</th>
					<th scope="col">Cuotas</th>
					<th scope="col">Importe cuota</th>
					<th scope="col">Estado</th>
				</tr>
			</thead>

			<tbody>
				<tr>
					<td>1</td>
					<td>Juan Pérez</td>
					<td>2024-11-18</td>
					<td>$7,488</td>
					<td>$5,000</td>
					<td>6</td>
					<td>$1,248</td>
					<td>Aprobado</td>
				</tr>
				<tr>
					<td>2</td>
					<td>María López</td>
					<td>2024-11-15</td>
					<td>$9,368</td>
					<td>$5,000</td>
					<td>12</td>
					<td>$781</td>
					<td>Aprobado</td>
				</tr>
				<tr>
					<td>3</td>
					<td>Carlos Gómez</td>
					<td>2024-11-10</td>
					<td>$14,833</td>
					<td>$5,000</td>
					<td>24</td>
					<td>$618</td>
					<td>Rechazado</td>
				</tr>


			</tbody>



		</table>
	</div>

	<script type="text/javascript">
		new DataTable('#table_prestamos', {
			language : {
				info : 'Pagina _PAGE_ de _PAGES_',
				infoEmpty : 'Sin infomracion para el filtro',
				infoFiltered : '(filtrando de _MAX_ registros totales)',
				lengthMenu : 'Mostrar _MENU_ registros',
				zeroRecords : 'Sin infomracion para la consulta',
				search : 'Buscar:'
			},
			responsive : true
		}

		);
	</script>







</body>
</html>