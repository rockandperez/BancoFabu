package dao;

import java.util.List;

import dominio.Cliente; 

public interface ClienteDao {

	public boolean insert(Cliente cliente);
	public List<Cliente> obtenerTodosLosClientes();
	public Cliente obtenerClientePorDni(String dni);
	public boolean revisarCuentasAsociadas(String dni);
	public boolean update(Cliente cliente);
	public boolean delete(String dni);
}
