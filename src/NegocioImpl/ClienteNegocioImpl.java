package NegocioImpl;

import java.util.List;

import Negocio.ClienteNegocio;
import daoImpl.ClienteDaoImpl;
import dominio.Cliente;

public class ClienteNegocioImpl implements ClienteNegocio {

	ClienteDaoImpl daoCliente = new ClienteDaoImpl(); 
	
	public boolean nuevo(Cliente cliente) {
		
		
		if(!verificarCampos(cliente)) {
			//verificar si el objeto esta completo
			System.out.println("error en la verificacion de campos");
			return false;
		}
		
		if(!daoCliente.obtenerClientePorDni(cliente.getDni()).getDni().isEmpty()) {
			//verifico que el dni no exista 
			System.out.println("ERROR: El cliente ya existe en la Base de datos");
			return false;
		}
		
		System.out.println("advertencia, paso a dao cliente");
		return daoCliente.insert(cliente);
		
		 
	}
	
	public boolean modificar(Cliente cliente) {
		
		if(!verificarCampos(cliente)) {
			//verificar si el objeto esta completo
			System.out.println("error en la verificacion de campos");
			return false;
		}
		
		if(obtenerClientePorDni(cliente.getDni()).getDni().isEmpty()) {
			//verifico si el cliente existe
			System.out.println("ERROR: El cliente no existe en la Base de datos");
			return false;
		}
		
		return daoCliente.update(cliente);
	}
	
	public boolean verificarCampos(Cliente cliente) {
		
		boolean retorno = true;
		if(cliente == null) {
			return false;
		}
		if 	(cliente.getDni().trim().isEmpty()) {
			System.out.println("error en dni");
			retorno = false;
		}
		if	(cliente.getCuil().trim().isEmpty()) {
			System.out.println("error en cuil");
			retorno = false;
		}
		if	(cliente.getNombre().trim().isEmpty()) {
			System.out.println("error en nombre");
			retorno = false;
		}
		if	(cliente.getApellido().trim().isEmpty()) {
			System.out.println("error en apellido");
			retorno = false;
		}
		if	(cliente.getSexo().trim().isEmpty()) {
			System.out.println("error en sexo");
			retorno = false;
		}
		if	(cliente.getNacionalidad().trim().isEmpty()) {
			System.out.println("error en nacionalidad");
			retorno = false;
		}
		if	(cliente.getEstado().trim().isEmpty()) {
			System.out.println("error en estado");
			retorno = false;
		}
		if	(cliente.getFecha_Nacimiento().trim().isEmpty()) {
			System.out.println("error en fecha");
			retorno = false;
		}
		if	(cliente.getDireccion().trim().isEmpty()) {
			System.out.println("error en direccion");
			retorno = false;
		}
		if	(cliente.getLocalidad().trim().isEmpty()) {
			System.out.println("error en localidad");
			retorno = false;
		}
		if	(cliente.getProvincia().trim().isEmpty()) {
			System.out.println("error en provincia");
			retorno = false;
		}
		if	(cliente.getEmail().trim().isEmpty()) {
			System.out.println("error en email");
			retorno = false;
		}
		if	(cliente.getUsuario().trim().isEmpty()) {
			System.out.println("error en usuario");
			retorno = false;
		}
		if	(cliente.getContrasenia().trim().isEmpty()) {
			System.out.println("error en password");
			retorno = false;
		}

		return retorno;
	}
	
	public List<Cliente> obtenerTodosLosClientes(){
		return daoCliente.obtenerTodosLosClientes();
	}
	
	public Cliente obtenerClientePorDni(String dni) {
		return daoCliente.obtenerClientePorDni(dni);
	}

	public boolean revisarCuentasAsociadas(String dni) {
		return daoCliente.revisarCuentasAsociadas(dni);
	}

	public boolean eliminar(String dni) {
		if(obtenerClientePorDni(dni).getDni().isEmpty()) {
			//verifico si el cliente existe
			System.out.println("ERROR: El cliente no existe en la Base de datos");
			return false;
		}
		
		return daoCliente.delete(dni);
	}
}
