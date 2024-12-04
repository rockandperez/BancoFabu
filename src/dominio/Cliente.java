package dominio;



public class Cliente {
	private String Dni; 
	private String Cuil;
	private String Nombre;
	private String Apellido;
	private String Sexo;
	private String Nacionalidad;
	private String Estado;
	private String Fecha_Nacimiento;
	private String Direccion;
	private String Localidad;
	private String Provincia;
	private String Email;
	private String Usuario;
	private String Contrasenia;
	private String Ubicacion;
	
	
  
	public Cliente(){
    	
    	this.setDni("");
    	this.setCuil ("");
    	this.setNombre ("");
    	this.setApellido("");
    	this.setSexo("");
    	this.setNacionalidad("");
    	this.setEstado("");
    	this.setFecha_Nacimiento("");
    	this.setDireccion("");
    	this.setLocalidad("");
    	this.setProvincia("");
    	this.setEmail("");
    	this.setUsuario("");
    	this.setContrasenia("");
    }
	
	public Cliente(String dni, String cuil, String nombre, String apellido, String sexo, String nacionalidad,
			String estado, String fecha_Nacimiento, String direccion, String localidad, String provincia, String email,
			String usuario, String contrasenia, String ubicacion) {
		
		this.setDni(dni);
		this.setCuil(cuil);
		this.setNombre(nombre);
		this.setApellido(apellido);
		this.setSexo(sexo);
		this.setNacionalidad(nacionalidad);
		this.setEstado(estado);
		this.setFecha_Nacimiento(fecha_Nacimiento);
		this.setDireccion(direccion);
		this.setLocalidad(localidad);
		this.setProvincia(provincia);
		this.setEmail(email);
		this.setUsuario(usuario);
		this.setContrasenia(contrasenia);
		this.setUbicacion(ubicacion);
	}
	public String getDni() {
		return Dni;
	}
	public void setDni(String dni) {
		Dni = dni;
	}
	public String getCuil() {
		return Cuil;
	}
	public void setCuil(String cuil) {
		Cuil = cuil;
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
	public String getSexo() {
		return Sexo;
	}
	public void setSexo(String sexo) {
		Sexo = sexo;
	}
	public String getNacionalidad() {
		return Nacionalidad;
	}
	public void setNacionalidad(String nacionalidad) {
		Nacionalidad = nacionalidad;
	}
	public String getEstado() {
		return Estado;
	}
	public void setEstado(String estado) {
		Estado = estado;
	}
	public String getFecha_Nacimiento() {
		return Fecha_Nacimiento;
	}
	public void setFecha_Nacimiento(String fecha_Nacimiento) {
		Fecha_Nacimiento = fecha_Nacimiento;
	}
	public String getDireccion() {
		return Direccion;
	}
	public void setDireccion(String direccion) {
		Direccion = direccion;
	}
	public String getLocalidad() {
		return Localidad;
	}
	public void setLocalidad(String localidad) {
		Localidad = localidad;
	}
	public String getProvincia() {
		return Provincia;
	}
	public void setProvincia(String provincia) {
		Provincia = provincia;
	}
	public String getEmail() {
		return Email;
	}
	public void setEmail(String email) {
		Email = email;
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
	  public String getUbicacion() {
			return Ubicacion;
		}
		public void setUbicacion(String ubicacion) {
			Ubicacion = ubicacion;
		}

	@Override
	public String toString() {
		return "Cliente [Dni=" + Dni + ", Cuil=" + Cuil + ", Nombre=" + Nombre + ", Apellido=" + Apellido + ", Sexo="
				+ Sexo + ", Nacionalidad=" + Nacionalidad + ", Estado=" + Estado + ", Fecha_Nacimiento="
				+ Fecha_Nacimiento + ", Direccion=" + Direccion + ", Localidad=" + Localidad + ", Provincia="
				+ Provincia + ", Email=" + Email + ", Usuario=" + Usuario + ", Contrasenia=" + Contrasenia
				+ ", getDni()=" + getDni() + ", getCuil()=" + getCuil() + ", getNombre()=" + getNombre()
				+ ", getApellido()=" + getApellido() + ", getSexo()=" + getSexo() + ", getNacionalidad()="
				+ getNacionalidad() + ", getEstado()=" + getEstado() + ", getFecha_Nacimiento()="
				+ getFecha_Nacimiento() + ", getDireccion()=" + getDireccion() + ", getLocalidad()=" + getLocalidad()
				+ ", getProvincia()=" + getProvincia() + ", getEmail()=" + getEmail() + ", getUsuario()=" + getUsuario()
				+ ", getContrasenia()=" + getContrasenia() + "]";
	}
	
	

}
