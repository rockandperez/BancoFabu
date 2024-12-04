package dominio;

import java.math.BigDecimal;
import java.sql.Date;
import java.sql.Time;

public class Movimientos {
	
	private int Id;
	private int Tipo;
	private String Cuenta_Numero; 
	private int Cuenta_Tipo;
	private Date Fecha;
	private Time Hora;
	private BigDecimal Importe;
	private  String Concepto;
	public Movimientos(int id, int tipo, String cuenta_Numero, int cuenta_Tipo, Date fecha, Time hora,
			BigDecimal importe, String concepto) {
		super();
		Id = id;
		Tipo = tipo;
		Cuenta_Numero = cuenta_Numero;
		Cuenta_Tipo = cuenta_Tipo;
		Fecha = fecha;
		Hora = hora;
		Importe = importe;
		Concepto = concepto;
	}
	public int getId() {
		return Id;
	}
	public void setId(int id) {
		Id = id;
	}
	public int getTipo() {
		return Tipo;
	}
	public void setTipo(int tipo) {
		Tipo = tipo;
	}
	public String getCuenta_Numero() {
		return Cuenta_Numero;
	}
	public void setCuenta_Numero(String cuenta_Numero) {
		Cuenta_Numero = cuenta_Numero;
	}
	public int getCuenta_Tipo() {
		return Cuenta_Tipo;
	}
	public void setCuenta_Tipo(int cuenta_Tipo) {
		Cuenta_Tipo = cuenta_Tipo;
	}
	public Date getFecha() {
		return Fecha;
	}
	public void setFecha(Date fecha) {
		Fecha = fecha;
	}
	public Time getHora() {
		return Hora;
	}
	public void setHora(Time hora) {
		Hora = hora;
	}
	public BigDecimal getImporte() {
		return Importe;
	}
	public void setImporte(BigDecimal importe) {
		Importe = importe;
	}
	public String getConcepto() {
		return Concepto;
	}
	public void setConcepto(String concepto) {
		Concepto = concepto;
	}
	@Override
	public String toString() {
		return "Movimientos [Id=" + Id + ", Tipo=" + Tipo + ", Cuenta_Numero=" + Cuenta_Numero + ", Cuenta_Tipo="
				+ Cuenta_Tipo + ", Fecha=" + Fecha + ", Hora=" + Hora + ", Importe=" + Importe + ", Concepto="
				+ Concepto + ", getId()=" + getId() + ", getTipo()=" + getTipo() + ", getCuenta_Numero()="
				+ getCuenta_Numero() + ", getCuenta_Tipo()=" + getCuenta_Tipo() + ", getFecha()=" + getFecha()
				+ ", getHora()=" + getHora() + ", getImporte()=" + getImporte() + ", getConcepto()=" + getConcepto()
				+ "]";
	}
	
	

}
