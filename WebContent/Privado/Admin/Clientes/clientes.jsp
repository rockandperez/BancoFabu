<%@ page import="dominio.Cliente"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>BRP - Administracion - Clientes</title>
	
	<jsp:include page="/comunes/headers.html"/>
	<jsp:include page="/comunes/headers_tablas.html"/>

  	

	
</head>
<body >
	
	<% List<Cliente> listaC = new ArrayList<Cliente>();
		if (request.getAttribute("listaClientes") != null){
			listaC = (List<Cliente>)request.getAttribute("listaClientes");
		}
	%>
	
	
	<jsp:include page="/Privado/Admin/MenuAdmin.jsp"/>

<div class="container conteiner-ancho-maximo my-3">
    <div class="container">
        <div class="row d-flex justify-content-between m-0 p-0">
            <div class="col-auto p-0 m-0">
                <p class="fs-6 p-0 m-0">Administracion - Clientes</p>
            </div>
            <div class="col-auto p-0 m-0">
                <a  href="ServletInsertarCliente?alta" class="btn btn-success">Alta Cliente</a>
            </div>
        </div>
    </div>
</div>
	
	<div class="container conteiner-ancho-maximo my-3">	
		
		<table id="table_clientes" class="table table-secondary table-striped">
			
			<thead>
			    <tr>
			      <th scope="col">DNI</th>
			      <th scope="col">CUIL</th>
			      <th scope="col">Nombre</th>
			      <th scope="col">Apellido</th>
			      <th scope="col">Ubicacion</th>
			      <th scope="col">Email</th>
			      <th scope="col">Estado</th>
			      <th scope="col">Acciones</th>

			    </tr>
			</thead>
			<tbody>
			<%
				for (Cliente c : listaC) {
			%>
			    <tr>     
                <td><%= c.getDni() %></td>
                <td><%= c.getCuil() %></td>
                <td><%= c.getNombre() %></td>
                <td><%= c.getApellido() %></td>
                <td><%= c.getUbicacion() %></td>
                <td><%= c.getEmail() %></td>
                <td><%= c.getEstado() %></td>
                <td>
                <a href="ServletInsertarCliente?editar=<%=c.getDni()%>" class="btn btn-outline-primary btn-sm">Editar</a>
           	    <a type="button" class="btn btn-outline-success btn-sm">Cuentas</a>
		        <a href="ServletInsertarCliente?eliminar=<%=c.getDni()%>" class="btn btn-outline-danger btn-sm">Eliminar</a>
		        </td>
        </tr>
			    <%
					}
			    %>
			</tbody>
			

		
		</table>
		
		
	</div>

  	<script type="text/javascript">
		new DataTable('#table_clientes',
			{
			    language: {
			        info: 'Pagina _PAGE_ de _PAGES_',
			        infoEmpty: 'Sin infomracion para el filtro',
			        infoFiltered: '(filtrando de _MAX_ registros totales)',
			        lengthMenu: 'Mostrar _MENU_ registros',
			        zeroRecords: 'Sin infomracion para la consulta',
			      	search: 'Buscar:'
		    		},
		   responsive:true			
			});
  	</script>
</body>
</html>


	