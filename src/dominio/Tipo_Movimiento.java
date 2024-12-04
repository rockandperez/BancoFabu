package dominio;

public class Tipo_Movimiento {
	
	private int Id;
	private String Detalle;
	private String Signo;
	
	
	public Tipo_Movimiento(int id, String detalle, String signo) {
		super();
		Id = id;
		Detalle = detalle;
		Signo = signo;
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
	public String getSigno() {
		return Signo;
	}
	public void setSigno(String signo) {
		Signo = signo;
	}
	@Override
	public String toString() {
		return "Tipo_Movimiento [Id=" + Id + ", Detalle=" + Detalle + ", Signo=" + Signo + ", getId()=" + getId()
				+ ", getDetalle()=" + getDetalle() + ", getSigno()=" + getSigno() + "]";
	}
	
	

}
