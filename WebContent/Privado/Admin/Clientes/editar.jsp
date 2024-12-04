<%@page import="java.sql.Date"%>
<%@ page import="dominio.Cliente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Editar Usuario</title>
<jsp:include page="/comunes/headers.html" />
</head>
<body>
	<%	
		if(request.getAttribute("clienteSelected") != null){
			Cliente c = (Cliente)request.getAttribute("clienteSelected");
		
		
	%>
	<jsp:include page="/Privado/Admin/MenuAdmin.jsp" />
	<div class="container conteiner-ancho-maximo my-3">
		<div class="container">
			<div class="row d-flex justify-content-between m-0 p-0">
				<div class="col-auto p-0 m-0">
					<p class="fs-6 p-0 m-0">Editar Usuario</p>
				</div>
			</div>
		</div>
	</div>
	<form method="post" action="${pageContext.request.contextPath}/ServletInsertarCliente">
	<div class="container d-flex justify-content-center">
		<div class="card w-100 p-2">
			<div class="row wor-cols-2">
				<div class="col">
					<label for="input-dni" class="form-label">DNI:</label> <input
						type="text" class="form-control" id="txt_Dni" name="txt_Dni"
						value="<%=c.getDni()%>" readonly>
				</div>
				<div class="col">
					<label for="input-date" class="form-label">Fecha De Nacimiento:</label> 
					<input type="date" class="form-control" id="date_Fecha" name="date_Fecha" 
					value="<%=c.getFecha_Nacimiento()%>">
				</div>
			</div>
			<div class="row wor-cols-2">
				<div class="col">
					<label for="input-cuil" class="form-label">CUIL:</label> <input
						type="text" class="form-control" id="txt_Cuil" name="txt_Cuil"
						value="<%=c.getCuil()%>" readonly>
				</div>
				<div class="col">
					<label for="input-direccion" class="form-label">Direccion:</label>
					<input type="text" class="form-control" id="txt_Direccion" name="txt_Direccion"
						value="<%=c.getDireccion()%>">
				</div>
			</div>
			<div class="row wor-cols-2">
				<div class="col">
					<label for="input-estado" class="form-label">Sexo:</label> <select
						class="form-select" id="ddl_Estado" name="ddl_Sexo">
						<option selected><%=c.getSexo()%></option>
						<option>Masculino</option>
						<option>Femenino</option>
					</select>
				</div>
				<div class="col">
					<label for="input-location" class="form-label">Localidad:</label> <input
						type="text" class="form-control" id="txt_Localidad" name="txt_Localidad"
						value="<%=c.getLocalidad()%>">
				</div>
			</div>
			<div class="row wor-cols-2">
				<div class="col">
					<label for="input-Name" class="form-label">Nombre:</label> <input
						type="text" class="form-control" id="txt_Nombre" name="txt_Nombre"
						value="<%=c.getNombre()%>">
				</div>
				<div class="col">
					<label for="input-provincia" class="form-label">Provincia:</label>
					<input type="text" class="form-control" id="txt_Provincia" name="txt_Provincia"
						value="<%=c.getProvincia()%>">
				</div>
			</div>
			<div class="row wor-cols-2">
				<div class="col">
					<label for="input-lastName" class="form-label">Apellido:</label> <input
						type="text" class="form-control" id="txt_Apellido" name="txt_Apellido"
						value="<%=c.getApellido()%>">
				</div>
				<div class="col">
					<label for="input-email" class="form-label">Email:</label> <input
						type="email" class="form-control" id="txt_Email" name="txt_Email"
						value="<%=c.getEmail()%>">
				</div>
			</div>
			<div class="row wor-cols-2">
				<div class="col">
					<label for="input-lastName" class="form-label">Estado:</label> <select
						class="form-select" id="ddl_Estado" name="ddl_Estado">
						<option selected><%=c.getEstado()%></option>
						<option>Activo</option>
						<option>Inactivo</option>
					</select>
				</div>
				<div class="col">
					<label for="input-user" class="form-label">Usuario:</label> <input
						type="text" class="form-control" id="txt_Usuario" name="txt_Usuario"
						value=<%=c.getNombre()%> readonly>
				</div>
			</div>
			<div class="row wor-cols-2">
				<div class="col">
					<label for="input-Name" class="form-label">Nacionalidad:</label> <input
						type="text" class="form-control" id="txt_Nacionalidad" name="txt_Nacionalidad" 
						value=<%=c.getNacionalidad()%>>
				</div>
				<div class="col">
					<label for="input-password" class="form-label">Contraseña:</label>
					<input type="text" class="form-control" id="txt_password" name="txt_password"
						value=<%=c.getContrasenia()%>>
				</div>
			</div>
			<div class="row wor-cols-2 justify-content-center">
				<div class="col-auto">
					<button type="submit" class="btn btn-primary" name="btn_guardaCambios">Guardar Cambios</button>
				</div>
			</div>
		</div>
	</div>
	<%
		}
	 %>
</form>
</body>
</html>
