package servlets;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import NegocioImpl.ClienteNegocioImpl;
import dominio.Cliente;

/**
 * Servlet implementation class ServletInsertarCliente
 */
@WebServlet("/ServletInsertarCliente")
public class ServletInsertarCliente extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	ClienteNegocioImpl ClienteNeg = new ClienteNegocioImpl();
	boolean respuesta;
	RequestDispatcher rd;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ServletInsertarCliente() {
        super();
        // TODO Auto-generated constructor stub
    }

    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
		///System.out.println("entre al servelet");
		

			
		if(request.getParameter("listadoClientes") != null) {
			request.setAttribute("listaClientes", ClienteNeg.obtenerTodosLosClientes());
			rd = request.getRequestDispatcher("Privado/Admin/Clientes/clientes.jsp");
			rd.forward(request, response);
		}
		
		if(request.getParameter("alta") != null) {
			response.sendRedirect("Privado/Admin/Clientes/alta.jsp");
		}
		
		if(request.getParameter("editar") != null) {
			request.setAttribute("clienteSelected", ClienteNeg.obtenerClientePorDni(request.getParameter("editar")));
			rd = request.getRequestDispatcher("Privado/Admin/Clientes/editar.jsp");
			rd.forward(request, response);
		}
		
		if(request.getParameter("eliminar") != null) {
			//reviso si el cliente no tiene una cuenta asociada.
			if(!ClienteNeg.revisarCuentasAsociadas(request.getParameter("eliminar"))){
				ClienteNeg.eliminar(request.getParameter("eliminar"));
			}
			response.sendRedirect("ServletInsertarCliente?listadoClientes");
		}
	}
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		Cliente cliente = new Cliente();
		
		if(request.getParameter("btn_altaUsuario") != null) {	
			cliente.setDni(request.getParameter("txt_Dni"));
			cliente.setCuil(request.getParameter("txt_Cuil"));
			cliente.setNombre(request.getParameter("txt_Nombre"));
			cliente.setApellido(request.getParameter("txt_Apellido"));
			cliente.setSexo(request.getParameter("ddl_Sexo"));
			cliente.setNacionalidad(request.getParameter("txt_Nacionalidad"));
			cliente.setEstado(request.getParameter("ddl_Estado"));
			cliente.setFecha_Nacimiento(request.getParameter("date_Fecha"));
			cliente.setDireccion(request.getParameter("txt_Direccion"));
			cliente.setLocalidad(request.getParameter("txt_Localidad"));
			cliente.setProvincia(request.getParameter("txt_Provincia"));
			cliente.setEmail(request.getParameter("txt_Email"));
			cliente.setUsuario(request.getParameter("txt_Usuario"));
			cliente.setContrasenia(request.getParameter("txt_password"));
			
			 
			if(ClienteNeg.nuevo(cliente)) {				
				rd = request.getRequestDispatcher("Privado/Admin/Clientes/alta.jsp");
				rd.forward(request, response);
			}
			
		}

		if(request.getParameter("btn_guardaCambios") != null)
		{
			cliente.setDni(request.getParameter("txt_Dni"));
			cliente.setCuil(request.getParameter("txt_Cuil"));
			cliente.setNombre(request.getParameter("txt_Nombre"));
			cliente.setApellido(request.getParameter("txt_Apellido"));
			cliente.setSexo(request.getParameter("ddl_Sexo"));
			cliente.setNacionalidad(request.getParameter("txt_Nacionalidad"));
			cliente.setEstado(request.getParameter("ddl_Estado"));
			cliente.setFecha_Nacimiento(request.getParameter("date_Fecha"));
			cliente.setDireccion(request.getParameter("txt_Direccion"));
			cliente.setLocalidad(request.getParameter("txt_Localidad"));
			cliente.setProvincia(request.getParameter("txt_Provincia"));
			cliente.setEmail(request.getParameter("txt_Email"));
			cliente.setUsuario(request.getParameter("txt_Usuario"));
			cliente.setContrasenia(request.getParameter("txt_password"));

			if(ClienteNeg.modificar(cliente)) {
				response.sendRedirect(request.getContextPath() +"/ServletInsertarCliente?listadoClientes");				
			}
			
			// 
		}
		

	}

}

