<div class="container conteiner-ancho-maximo">

	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">

		<div class="container-fluid">
			<a class="navbar-brand" href="${pageContext.request.contextPath}/Privado/Clientes/landing.jsp"> <img
				src="${pageContext.request.contextPath}/comunes/icono.svg" alt="Logo" width="30" height="30"
				class="d-inline-block align-text-top bg-dark"> BRP HB
			</a>


			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarNav"
				aria-controls="navbarNav" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>


			<div class="collapse navbar-collapse" id="navbarNav">
				<ul class="navbar-nav mx-auto">
					<li class="nav-item"><a class="nav-link active"
						aria-current="page" href="${pageContext.request.contextPath}/Privado/Clientes/Movimientos/lista.jsp">Movimientos</a></li>
					<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/Privado/Clientes/transfes/nueva.jsp">Transferencias</a>
					</li>

					<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">Prestamos </a>
						<ul class="dropdown-menu" aria-labelledby="navbarDropdown">
							<li><a class="dropdown-item" href="${pageContext.request.contextPath}/Privado/Clientes/prestamos/solicitar.jsp">Solicitar</a></li>
							<li><a class="dropdown-item" href="${pageContext.request.contextPath}/Privado/Clientes/prestamos/prestamos.jsp">Ver Prestamos</a></li>
							<li><a class="dropdown-item" href="${pageContext.request.contextPath}/Privado/Clientes/prestamos/pagar.jsp">Pagar Prestamos</a></li>
						</ul></li>

				</ul>


				<div class="dropdown">
					<button class="btn btn-secondary dropdown-toggle btn-sm"
						type="button" id="dropdownMenuButton" data-bs-toggle="dropdown"
						aria-expanded="false">Facundo Luna</button>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton">
						<li><a class="dropdown-item" href="${pageContext.request.contextPath}/Privado/Clientes/info/info.jsp">Informacion</a></li>
						<li><a class="dropdown-item" href="#">Salir</a></li>
					</ul>
				</div>

			</div>
		</div>
	</nav>
</div>
