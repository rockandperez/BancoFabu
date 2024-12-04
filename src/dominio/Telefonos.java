package dominio;

public class Telefonos {
	
	private String Id;
	private String DniCliente;
	private String Telefono;
	public Telefonos(String id, String dniCliente, String telefono) {
		super();
		Id = id;
		DniCliente = dniCliente;
		Telefono = telefono;
	}
	public String getId() {
		return Id;
	}
	public void setId(String id) {
		Id = id;
	}
	public String getDniCliente() {
		return DniCliente;
	}
	public void setDniCliente(String dniCliente) {
		DniCliente = dniCliente;
	}
	public String getTelefono() {
		return Telefono;
	}
	public void setTelefono(String telefono) {
		Telefono = telefono;
	}
	@Override
	public String toString() {
		return "Telefonos [Id=" + Id + ", DniCliente=" + DniCliente + ", Telefono=" + Telefono + ", getId()=" + getId()
				+ ", getDniCliente()=" + getDniCliente() + ", getTelefono()=" + getTelefono() + "]";
	}
	
	

}
