package dominio;

import java.math.BigDecimal;
import java.sql.Date;

public class Cuentas {
	
	private String Numero;
	private int Tipo;
	private String Cbu;
	private String Dni_Cliente;
	private BigDecimal Saldo;
	private Date  Fecha_alta;
	public Cuentas(String numero, int tipo, String cbu, String dni_Cliente, BigDecimal saldo, Date fecha_alta) {
		super();
		Numero = numero;
		Tipo = tipo;
		Cbu = cbu;
		Dni_Cliente = dni_Cliente;
		Saldo = saldo;
		Fecha_alta = fecha_alta;
	}
	public String getNumero() {
		return Numero;
	}
	public void setNumero(String numero) {
		Numero = numero;
	}
	public int getTipo() {
		return Tipo;
	}
	public void setTipo(int tipo) {
		Tipo = tipo;
	}
	public String getCbu() {
		return Cbu;
	}
	public void setCbu(String cbu) {
		Cbu = cbu;
	}
	public String getDni_Cliente() {
		return Dni_Cliente;
	}
	public void setDni_Cliente(String dni_Cliente) {
		Dni_Cliente = dni_Cliente;
	}
	public BigDecimal getSaldo() {
		return Saldo;
	}
	public void setSaldo(BigDecimal saldo) {
		Saldo = saldo;
	}
	public Date getFecha_alta() {
		return Fecha_alta;
	}
	public void setFecha_alta(Date fecha_alta) {
		Fecha_alta = fecha_alta;
	}
	
	

}
