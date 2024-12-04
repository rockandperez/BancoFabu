package servlets;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import daoImpl.ClienteDaoImpl;
import dominio.Cliente;

@WebServlet("/ServletEditarUsuario") 
   public class ServletEditarUsuario extends HttpServlet {
	private static final long serialVersionUID = 1L; 
	  public ServletEditarUsuario() { 
		  super(); 
		  } 
	  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException { 
		  
		  String dni = request.getParameter("Dni"); 
		  ClienteDaoImpl clienteDao = new ClienteDaoImpl(); 
		  Cliente cliente = clienteDao.obtenerClientePorDni(dni); 
		  request.setAttribute("cliente", cliente); 
		  request.getRequestDispatcher("Privado/Admin/Clientes/editar.jsp").forward(request, response); }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


	}

}
