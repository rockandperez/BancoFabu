package dominio;

public class Tipo_Cuenta {
	
	private int Id;
	private String Detalle;
	public Tipo_Cuenta(int id, String detalle) {
		super();
		Id = id;
		Detalle = detalle;
	}
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public String getDetalle() {
		return Detalle;
	}
	public void setDetalle(String detalle) {
		Detalle = detalle;
	}
	@Override
	public String toString() {
		return "Tipo_Cuenta [Id=" + Id + ", Detalle=" + Detalle + ", getId()=" + getId() + ", getDetalle()="
				+ getDetalle() + "]";
	}
	
	

}
