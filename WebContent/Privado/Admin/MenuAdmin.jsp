<div class="container conteiner-ancho-maximo">

	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">

		<div class="container-fluid">

			<a class="navbar-brand" href="${pageContext.request.contextPath}/Privado/Admin/landing.jsp"> 
			<img src="${pageContext.request.contextPath}/comunes/icono.svg" alt="Logo" width="30" height="30" class="d-inline-block align-text-top bg-dark"> BRP - BO</a>
			

			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>


			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav mx-auto">
					<li class="nav-item"><a href="${pageContext.request.contextPath}/ServletInsertarCliente?listadoClientes"
					  class="nav-link active" aria-current="page">Clientes</a></li>
					<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/Privado/Admin/Cuentas/cuentas.jsp">Cuentas</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/Privado/Admin/Prestamos/prestamos.jsp">Préstamos</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/Privado/Admin/reportes.jsp">Reportes</a>
					</li>
				</ul>


				<div class="dropdown">
					<button class="btn btn-secondary dropdown-toggle btn-sm"
						type="button" id="dropdownMenuButton" data-bs-toggle="dropdown"
						aria-expanded="false">Facundo Luna (admin)</button>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
						<li><a class="dropdown-item" href="#">Información</a></li>
						<li><a class="dropdown-item" href="#">Salir</a></li>
					</ul>
				</div>

			</div>
		</div>
	</nav>
</div>
