package Negocio;

import java.util.List;

import dominio.Cliente;

public interface ClienteNegocio {
	
	public boolean nuevo(Cliente cliente);
	public boolean modificar(Cliente cliente);
	public boolean eliminar (String dni);
	public boolean verificarCampos(Cliente cliente);
	public List<Cliente> obtenerTodosLosClientes();
	public Cliente obtenerClientePorDni(String dni);
	public boolean revisarCuentasAsociadas(String dni);
}
