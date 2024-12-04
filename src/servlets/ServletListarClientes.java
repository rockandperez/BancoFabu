package servlets;

import java.io.IOException; 
import java.util.List; 
import javax.servlet.ServletException; 
import javax.servlet.annotation.WebServlet; 
import javax.servlet.http.HttpServlet; 
import javax.servlet.http.HttpServletRequest; 
import javax.servlet.http.HttpServletResponse; 
import daoImpl.ClienteDaoImpl; 
import dominio.Cliente;




@WebServlet("/ServletListarClientes")
public class ServletListarClientes extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ServletListarClientes() {
        super();
 
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ClienteDaoImpl clienteDao = new ClienteDaoImpl(); 
		List<Cliente> clientes = clienteDao.obtenerTodosLosClientes(); 
		request.setAttribute("clientes", clientes); 
		request.getRequestDispatcher("/clientes.jsp").forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}
