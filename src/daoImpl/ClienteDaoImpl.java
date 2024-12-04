package daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.ClienteDao;
import dominio.Cliente;

public class ClienteDaoImpl implements ClienteDao  {
	private static final String insert = "INSERT INTO usuarios (Dni, Cuil, Nombre, Apellido, Sexo, Nacionalidad, Estado, Fecha_Nacimiento, Direccion, Localidad, Provincia, Email, Usuario, Contrasenia) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	private static final String readone = "SELECT * FROM usuarios WHERE Dni = ?";
	private static final String obtenerTodosLosClientes = "SELECT Dni, Cuil, Nombre, Apellido, CONCAT(Localidad, ', ', Provincia) AS Ubicacion, Email, Estado FROM usuarios";
	private static final String update = "UPDATE usuarios SET Nombre = ?, Apellido = ?, Sexo = ?, Nacionalidad = ?, Estado = ?, Fecha_Nacimiento = ?, Direccion = ?, Localidad = ?, Provincia = ?, Email = ?, Contrasenia = ? WHERE Dni = ?";
	private static final String delete = "DELETE FROM usuarios WHERE Dni = ?";
	private static final String cuentaAsociada = "SELECT * FROM cuentas WHERE DniCliente = ?";
	
	public boolean update(Cliente cliente) {
		PreparedStatement statement;
		Connection conexion = Conexion.getConexion().getSQLConexion();
		boolean updateExitoso = false;
		try {
			statement = conexion.prepareStatement(update);
			statement.setString(1, cliente.getNombre());
			statement.setString(2, cliente.getApellido());
			statement.setString(3, cliente.getSexo());
			statement.setString(4, cliente.getNacionalidad());
			statement.setString(5, cliente.getEstado());
			statement.setString(6, cliente.getFecha_Nacimiento());
			statement.setString(7, cliente.getDireccion());
			statement.setString(8, cliente.getLocalidad());
			statement.setString(9, cliente.getProvincia());
			statement.setString(10, cliente.getEmail());
			statement.setString(11, cliente.getContrasenia());
			statement.setString(12, cliente.getDni());
			
			if(statement.executeUpdate() > 0)
			{
				System.out.println("se hizo el update en la bd");
				conexion.commit();
				updateExitoso = true;
			}
		}
		catch (SQLException e){
			e.printStackTrace();
				try {
					conexion.rollback();
				}catch (SQLException e1) {
					e1.printStackTrace();
				}
		}
		
		return updateExitoso;
	}
	public boolean insert(Cliente cliente){
		PreparedStatement statement;
		Connection conexion = Conexion.getConexion().getSQLConexion();
		boolean insertExitoso = false;
		try {
			statement = conexion.prepareStatement(insert);
			statement.setString(1, cliente.getDni());
			statement.setString(2, cliente.getCuil());
			statement.setString(3, cliente.getNombre());
			statement.setString(4, cliente.getApellido());
			statement.setString(5, cliente.getSexo());
			statement.setString(6, cliente.getNacionalidad());
			statement.setString(7, cliente.getEstado());
			statement.setString(8, cliente.getFecha_Nacimiento());
			statement.setString(9, cliente.getDireccion());
			statement.setString(10, cliente.getLocalidad());
			statement.setString(11, cliente.getProvincia());
			statement.setString(12, cliente.getEmail());
			statement.setString(13, cliente.getUsuario());
			statement.setString(14, cliente.getContrasenia());
			
			if(statement.executeUpdate() > 0)
			{
				System.out.println("se hizo el insert en la bd");
				conexion.commit();
				insertExitoso = true;
			}
		}
		catch (SQLException e)
		{
			e.printStackTrace();
			try {
				conexion.rollback();
			}catch (SQLException e1) {
				e1.printStackTrace();
			}
		}
		return insertExitoso;
	}
	
	
	public Cliente obtenerClientePorDni(String dni) { 

		
		PreparedStatement statement; 
		ResultSet resultSet;
		Cliente cliente = new Cliente();
		
		try 
		{		
			statement = Conexion.getConexion().getSQLConexion().prepareStatement(readone); 	
			statement.setString(1, dni); 
			resultSet = statement.executeQuery(); 
			if (resultSet.next()) 
			{  
			  cliente.setDni(resultSet.getString("Dni")); 
			  cliente.setCuil(resultSet.getString("Cuil")); 
			  cliente.setNombre(resultSet.getString("Nombre")); 
			  cliente.setApellido(resultSet.getString("Apellido")); 
			  cliente.setSexo(resultSet.getString("Sexo")); 
			  cliente.setNacionalidad(resultSet.getString("Nacionalidad")); 
			  cliente.setEstado(resultSet.getString("Estado")); 
			  cliente.setFecha_Nacimiento(resultSet.getString("Fecha_Nacimiento")); 
			  cliente.setDireccion(resultSet.getString("Direccion")); 
			  cliente.setLocalidad(resultSet.getString("Localidad")); 
			  cliente.setProvincia(resultSet.getString("Provincia")); 
			  cliente.setEmail(resultSet.getString("Email")); 
			  cliente.setUsuario(resultSet.getString("Usuario")); 
			  cliente.setContrasenia(resultSet.getString("Contrasenia")); 
			} 
		} 
		catch (SQLException e) 
		{ 
			 e.printStackTrace(); 
		} 
		return cliente; 
	}
	
	
	public List<Cliente> obtenerTodosLosClientes() 
	{
		{ 
		List<Cliente> clientes = new ArrayList<>(); 
		PreparedStatement statement; 
		ResultSet resultSet;
		Connection conexion = Conexion.getConexion().getSQLConexion(); 
		try 
		{ 
			statement = conexion.prepareStatement(obtenerTodosLosClientes); 
			resultSet = statement.executeQuery(); 
		     while (resultSet.next()) 
		     { 
		    	 Cliente cliente = new Cliente(); 
		    	 cliente.setDni(resultSet.getString("Dni")); 
		    	 cliente.setCuil(resultSet.getString("Cuil")); 
		    	 cliente.setNombre(resultSet.getString("Nombre")); 
		    	 cliente.setApellido(resultSet.getString("Apellido")); 
		    	 cliente.setUbicacion(resultSet.getString("Ubicacion")); 
		    	 cliente.setEmail(resultSet.getString("Email")); 
		    	 cliente.setEstado(resultSet.getString("Estado")); 
		    	 
		    	 clientes.add(cliente);
		     } 
		} 
			catch (SQLException e) 
			{ 
			   e.printStackTrace(); 
			} 
		return clientes;
		}
	}

	public boolean delete(String dni) {
		PreparedStatement statement;
		Connection conexion = Conexion.getConexion().getSQLConexion();
		boolean deleteExitoso = false;
		try 
		{
			statement = conexion.prepareStatement(delete);
			statement.setString(1, dni);
			if(statement.executeUpdate() > 0) 
			{
				conexion.commit();
				deleteExitoso = true;
			}
		}
		catch (SQLException e) {
			e.printStackTrace();
			try {
				conexion.rollback();
			}catch (SQLException e1) {
				e1.printStackTrace();
			}
		
		}
		return deleteExitoso;
	}

	public boolean revisarCuentasAsociadas(String dni) {
		PreparedStatement statement;
		ResultSet resultSet;
		Connection conexion = Conexion.getConexion().getSQLConexion();
		boolean CuentaAsociada = false;
		try
		{
			statement = conexion.prepareStatement(cuentaAsociada);
			statement.setString(1, dni);
			resultSet = statement.executeQuery();
			if(resultSet.next()) {
				if(resultSet.getString("DniCliente").compareTo(dni) == 0) {
					CuentaAsociada = true;
				}
			}
		}
		catch(SQLException e) {
			e.printStackTrace();
		}	
		System.out.println(Boolean.toString(CuentaAsociada));
		return CuentaAsociada;
	}
	
}
