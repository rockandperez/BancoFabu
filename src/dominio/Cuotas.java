package dominio;

public class Cuotas {
	
	private int Id;
	private int Id_Prestamo;
	private String Mes_Anio;
	private Boolean Adeudada;
	public Cuotas(int id, int id_Prestamo, String mes_Anio, Boolean adeudada) {
		super();
		Id = id;
		Id_Prestamo = id_Prestamo;
		Mes_Anio = mes_Anio;
		Adeudada = adeudada;
	}
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public int getId_Prestamo() {
		return Id_Prestamo;
	}
	public void setId_Prestamo(int id_Prestamo) {
		Id_Prestamo = id_Prestamo;
	}
	public String getMes_Anio() {
		return Mes_Anio;
	}
	public void setMes_Anio(String mes_Anio) {
		Mes_Anio = mes_Anio;
	}
	public Boolean getAdeudada() {
		return Adeudada;
	}
	public void setAdeudada(Boolean adeudada) {
		Adeudada = adeudada;
	}
	@Override
	public String toString() {
		return "Cuotas [Id=" + Id + ", Id_Prestamo=" + Id_Prestamo + ", Mes_Anio=" + Mes_Anio + ", Adeudada=" + Adeudada
				+ ", getId()=" + getId() + ", getId_Prestamo()=" + getId_Prestamo() + ", getMes_Anio()=" + getMes_Anio()
				+ ", getAdeudada()=" + getAdeudada() + "]";
	}

}
