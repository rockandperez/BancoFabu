package dominio;

import java.math.BigDecimal;
import java.sql.Date;

public class Prestamos {

	private int Id;
	private String Cliente;
	private int Cuenta_Tipo_Deposito;
	private String Cuenta_Numero_Deposito;
	private Date fecha;
	private BigDecimal Importe_total;
	private BigDecimal Importe_Solicitado;
	private int Plazo;
	private BigDecimal Monto_Mensual;
	private Boolean Aprobado;
	
	public Prestamos(int id, String cliente, int cuenta_Tipo_Deposito, String cuenta_Numero_Deposito, Date fecha,
			BigDecimal importe_total, BigDecimal importe_Solicitado, int plazo, BigDecimal monto_Mensual,
			Boolean aprobado) {
		super();
		Id = id;
		Cliente = cliente;
		Cuenta_Tipo_Deposito = cuenta_Tipo_Deposito;
		Cuenta_Numero_Deposito = cuenta_Numero_Deposito;
		this.fecha = fecha;
		Importe_total = importe_total;
		Importe_Solicitado = importe_Solicitado;
		Plazo = plazo;
		Monto_Mensual = monto_Mensual;
		Aprobado = aprobado;
	}

	public int getId() {
		return Id;
	}

	public void setId(int id) {
		Id = id;
	}

	public String getCliente() {
		return Cliente;
	}

	public void setCliente(String cliente) {
		Cliente = cliente;
	}

	public int getCuenta_Tipo_Deposito() {
		return Cuenta_Tipo_Deposito;
	}

	public void setCuenta_Tipo_Deposito(int cuenta_Tipo_Deposito) {
		Cuenta_Tipo_Deposito = cuenta_Tipo_Deposito;
	}

	public String getCuenta_Numero_Deposito() {
		return Cuenta_Numero_Deposito;
	}

	public void setCuenta_Numero_Deposito(String cuenta_Numero_Deposito) {
		Cuenta_Numero_Deposito = cuenta_Numero_Deposito;
	}

	public Date getFecha() {
		return fecha;
	}

	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}

	public BigDecimal getImporte_total() {
		return Importe_total;
	}

	public void setImporte_total(BigDecimal importe_total) {
		Importe_total = importe_total;
	}

	public BigDecimal getImporte_Solicitado() {
		return Importe_Solicitado;
	}

	public void setImporte_Solicitado(BigDecimal importe_Solicitado) {
		Importe_Solicitado = importe_Solicitado;
	}

	public int getPlazo() {
		return Plazo;
	}

	public void setPlazo(int plazo) {
		Plazo = plazo;
	}

	public BigDecimal getMonto_Mensual() {
		return Monto_Mensual;
	}

	public void setMonto_Mensual(BigDecimal monto_Mensual) {
		Monto_Mensual = monto_Mensual;
	}

	public Boolean getAprobado() {
		return Aprobado;
	}

	public void setAprobado(Boolean aprobado) {
		Aprobado = aprobado;
	}

	@Override
	public String toString() {
		return "Prestamos [Id=" + Id + ", Cliente=" + Cliente + ", Cuenta_Tipo_Deposito=" + Cuenta_Tipo_Deposito
				+ ", Cuenta_Numero_Deposito=" + Cuenta_Numero_Deposito + ", fecha=" + fecha + ", Importe_total="
				+ Importe_total + ", Importe_Solicitado=" + Importe_Solicitado + ", Plazo=" + Plazo + ", Monto_Mensual="
				+ Monto_Mensual + ", Aprobado=" + Aprobado + ", getId()=" + getId() + ", getCliente()=" + getCliente()
				+ ", getCuenta_Tipo_Deposito()=" + getCuenta_Tipo_Deposito() + ", getCuenta_Numero_Deposito()="
				+ getCuenta_Numero_Deposito() + ", getFecha()=" + getFecha() + ", getImporte_total()="
				+ getImporte_total() + ", getImporte_Solicitado()=" + getImporte_Solicitado() + ", getPlazo()="
				+ getPlazo() + ", getMonto_Mensual()=" + getMonto_Mensual() + ", getAprobado()=" + getAprobado() + "]";
	}
	
	
	
	
}
