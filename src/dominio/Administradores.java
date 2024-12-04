package dominio;

public class Administradores {
	
	private String Dni;
	private String Estado;
	private String Nombre;
	private String Apellido; 
	private String Usuario;
	private String Contrasenia;
	
	

	public Administradores(String dni, String estado, String nombre, String apellido, String usuario,
			String contrasenia) {
		super();
		Dni = dni;
		Estado = estado;
		Nombre = nombre;
		Apellido = apellido;
		Usuario = usuario;
		Contrasenia = contrasenia;
	}
	
	public String getDni() {
		return Dni;
	}
	public void setDni(String dni) {
		Dni = dni;
	}
	public String getEstado() {
		return Estado;
	}
	public void setEstado(String estado) {
		Estado = estado;
	}
	public String getNombre() {
		return Nombre;
	}
	public void setNombre(String nombre) {
		Nombre = nombre;
	}
	public String getApellido() {
		return Apellido;
	}
	public void setApellido(String apellido) {
		Apellido = apellido;
	}
	public String getUsuario() {
		return Usuario;
	}
	public void setUsuario(String usuario) {
		Usuario = usuario;
	}
	public String getContrasenia() {
		return Contrasenia;
	}
	public void setContrasenia(String contrasenia) {
		Contrasenia = contrasenia;
	}

	@Override
	public String toString() {
		return "Administradores [Dni=" + Dni + ", Estado=" + Estado + ", Nombre=" + Nombre + ", Apellido=" + Apellido
				+ ", Usuario=" + Usuario + ", Contrasenia=" + Contrasenia + ", getDni()=" + getDni() + ", getEstado()="
				+ getEstado() + ", getNombre()=" + getNombre() + ", getApellido()=" + getApellido() + ", getUsuario()="
				+ getUsuario() + ", getContrasenia()=" + getContrasenia() + "]";
	}


}
