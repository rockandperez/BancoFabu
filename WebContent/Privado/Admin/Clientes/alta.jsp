<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Alta Usuario</title>
	<jsp:include page="/comunes/headers.html"/>
	
</head>
<body>
	
	<jsp:include page="/Privado/Admin/MenuAdmin.jsp"/>
	
	
<div class="container conteiner-ancho-maximo my-3">
    <div class="container">
        <div class="row d-flex justify-content-between m-0 p-0">
            <div class="col-auto p-0 m-0">
                <p class="fs-6 p-0 m-0">Alta de Usuario</p>
            </div>
        </div>
    </div>
</div>
        <form method="post" action="${pageContext.request.contextPath}/ServletInsertarCliente">
		<div class="container d-flex justify-content-center">
			<div class="card w-100 p-2">
				<div class="row wor-cols-2">
					<div class="col">
						<label for="input-dni" class="form-label">DNI:</label>
						<input type="text" class="form-control" id="txt_Dni" name="txt_Dni" placeholder="Ej: '12345678'" required>		
					</div>	
					<div class="col">
						<label for="input-date" class="form-label">Fecha De Nacimiento:</label>
						<input type="date" class="form-control" id="date_Fecha" name="date_Fecha">
					</div>
				</div>
				<div class="row wor-cols-2">
					<div class="col">
						<label for="input-cuil" class="form-label">CUIL:</label>
						<input type="text" class="form-control" id="txt_Cuil" name="txt_Cuil" placeholder="Ej: '12-12345678-1'" required>	
					</div>
					<div class="col">
						<label for="input-direccion" class="form-label">Direccion:</label>
						<input type="text" class="form-control" id="txt_Direccion" name="txt_Direccion">		
					</div>
				</div>
				<div class="row wor-cols-2">
					<div class="col">
						<label for="input-estado" class="form-label">Sexo:</label>
						<select class="form-select" id="ddl_Sexo" name="ddl_Sexo">
							<option selected>Seleccionar...</option>
							<option>Masculino</option>
							<option>Femenino</option>
						</select>
					</div>
					<div class="col">
						<label for="input-location" class="form-label">Localidad:</label>
						<input type="text" class="form-control" id="txt_Localidad" name="txt_Localidad">	
					</div>
				</div>
				<div class="row wor-cols-2">
					<div class="col">
						<label for="input-Name" class="form-label">Nombre:</label>
						<input type="text" class="form-control" id="txt_Nombre" name="txt_Nombre">
					</div>
					<div class="col">
						<label for="input-provincia" class="form-label">Provincia:</label>
						<input type="text" class="form-control" id="txt_Provincia" name="txt_Provincia">
					</div>
				</div>
				<div class="row wor-cols-2">
					<div class="col">
						<label for="input-lastName" class="form-label">Apellido:</label>
						<input type="text" class="form-control" id="txt_Apellido" name="txt_Apellido">
					</div>
					<div class="col">
						<label for="input-email" class="form-label">Email:</label>
						<input type="email" class="form-control" id="txt_Email" name="txt_Email" placeholder="nombre@ejemplo.com">	
					</div>
				</div>
				<div class="row wor-cols-2">
					<div class="col">
						<label for="input-lastName" class="form-label">Estado:</label>
						<select class="form-select" id="ddl_Estado" name="ddl_Estado">
							<option selected>Seleccionar...</option>
      						<option>Activo</option>
							<option>Inactivo</option>
						</select>
					</div>
					<div class="col">
						<label for="input-user" class="form-label">Usuario:</label>
						<input type="text" class="form-control" id="txt_Usuario" name="txt_Usuario" required>
					</div>
				</div>
				<div class="row wor-cols-2">
					<div class="col">
						<label for="input-Name" class="form-label">Nacionalidad:</label>
						<input type="text" class="form-control" id="txt_Nacionalidad" name="txt_Nacionalidad">
					</div>
					<div class="col">
						<label for="input-password" class="form-label">Contraseña:</label>
						<input type="text" class="form-control" id="txt_password" name="txt_password" required>
					</div>
				</div>
				<div class="row wor-cols-2 justify-content-center"> 
				<div class="col-auto">
				        <button type="submit" class="btn btn-success p-2" name="btn_altaUsuario" >Alta Usuario</button>
					</div>
				</div>
		</div>
	</div>
	</form>
	
<%
	boolean respuesta = false;
	if(request.getAttribute("respuesta") != null){
	respuesta = Boolean.parseBoolean(request.getAttribute("respuesta").toString());
	
	if(respuesta){
%>	
		<script type="text/javascript"> function altaCliente() { 
		// Aca podemos agregar el código para manejar el evento y copiar los datos en la base de datos 
			alert("Cliente dado de alta");
		}
		</script>    
<%
	}
	}
%>
		
	
	
</body>
</html>