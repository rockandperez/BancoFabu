<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Administracion - Cuentas</title>
<jsp:include page="/comunes/headers.html" />
<jsp:include page="/comunes/headers_tablas.html" />
</head>
<body>

	<jsp:include page="/Privado/Admin/MenuAdmin.jsp" />

	<div class="container conteiner-ancho-maximo my-3">
		<div class="container">
			<div class="row d-flex justify-content-between m-0 p-0">
				<div class="col-auto p-0 m-0">
					<p class="fs-6 p-0 m-0">Administracion - Clientes</p>
				</div>
				<div class="col-auto p-0 m-0">

					<!-- boton para abrir modal -->
					<button type="button" class="btn btn-success"
						data-bs-toggle="modal" data-bs-target="#staticBackdrop">Alta
						cuenta</button>


				</div>
			</div>
		</div>
	</div>

	<div class="container conteiner-ancho-maximo my-3">

		<table id="table_cuentas" class="table table-secondary table-striped">

			<thead>
				<tr>
					<th scope="col">#</th>
					<th scope="col">Cliente asignado</th>
					<th scope="col">Fecha de creacion</th>
					<th scope="col">Tipo de cuenta</th>
					<th scope="col">Numero de cuenta</th>
					<th scope="col">CBU</th>
					<th scope="col">Saldo</th>
					<th scope="col"></th>
				</tr>
			</thead>

			<tbody>
				<tr>
					<th scope="row">1</th>
					<td>Juan Perez</td>
					<td>30/03/2024</td>
					<td>Caja de ahorro</td>
					<td>124030259917</td>
					<td>12405340124030259917</td>
					<td>$10.000</td>
					<td>
						<button class="btn btn-outline-primary btn-sm">Editar</button>
					</td>
				</tr>
			</tbody>
		</table>
	</div>

	<script type="text/javascript">
		new DataTable('#table_cuentas',
			{
			    language: {
			        info: 'Pagina _PAGE_ de _PAGES_',
			        infoEmpty: 'Sin infomracion para el filtro',
			        infoFiltered: '(filtrando de _MAX_ registros totales)',
			        lengthMenu: 'Mostrar _MENU_ registros',
			        zeroRecords: 'Sin infomracion para la consulta',
			      	search: 'Buscar:'
		    		},responsive:true			
			}
	
		);
	</script>


	<!-- Modal para alta -->

	<div class="modal fade" id="staticBackdrop" data-bs-backdrop="static"
		data-bs-keyboard="false" tabindex="-1"
		aria-labelledby="staticBackdropLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<h5 class="modal-title" id="staticBackdropLabel">Alta de
						cuenta</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">

					<div class="mb-3 row">
						<label for="alta_id" class="col-sm-2 col-form-label">ID: </label>
						<div class="col-sm-10">
							<input type="text" readonly class="form-control-plaintext"
								id="alta_id" value="1">
						</div>

						<label for="alta_nombre" class="col-sm-2 col-form-label">Nombre:
						</label>
						<div class="col-sm-10">
							<input type="text" readonly class="form-control-plaintext"
								id="alta_nombre" value="Juan Perez">
						</div>
					</div>

					<select class="form-select" aria-label="Default select example">
						<option selected>Seleccione Tipo</option>
						<option value="1">1- Caja de Ahorro</option>
						<option value="2">2 -Cuenta Corriente</option>

					</select>

				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Cancelar</button>
					<button type="button" class="btn btn-primary"
						data-bs-dismiss="modal">Aceptar</button>
				</div>
			</div>
		</div>
	</div>




</body>
</html>