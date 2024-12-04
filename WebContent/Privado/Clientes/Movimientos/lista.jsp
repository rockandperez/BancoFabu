<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>BRP - Clientes - Movimientos</title>

	<jsp:include page="/comunes/headers.html"/>
	<jsp:include page="/comunes/headers_tablas.html"/>

</head>
<body>

	<jsp:include page="/Privado/Clientes/MenuClientes.jsp"/>


<!-- Tabla de movimientos cliente-->
        <div class="container conteiner-ancho-maximo my-3">
            <div class="container">
      <h2 class="text-center">Movimientos de la Cuenta</h2>
            </div>
            <div class="container conteiner-ancho-maximo my-3">
                <table id="table_movimientos_clientes" class="table table-secondary table-striped">
                    <thead>
                        <tr>
                            <th scope="col">Fecha</th>
                            <th scope="col">Hora</th>
                            <th scope="col">Tipo de Movimiento</th>
                            <th scope="col">Importe</th>
                            <th scope="col">Saldo</th>
                            <th scope="col">Concepto</th>
                        </tr>
                    </thead>
                    <tbody>
                        <!-- Datos ficticios de ejemplo -->
                        <tr>
                            <td>2024-11-01</td>
                            <td>10:15</td>
                            <td>Depósito</td>
                            <td>$5000</td>
                            <td>$15000</td>
                            <td>Depósito en efectivo</td>
                        </tr>
                        <tr>
                            <td>2024-11-02</td>
                            <td>14:30</td>
                            <td>Retiro</td>
                            <td>-$2000</td>
                            <td>$13000</td>
                            <td>Retiro en cajero automático</td>
                        </tr>
                        <tr>
                            <td>2024-11-03</td>
                            <td>09:00</td>
                            <td>Transferencia</td>
                            <td>-$3000</td>
                            <td>$10000</td>
                            <td>Transferencia a cuenta 123456789</td>
                        </tr>
                        <tr>
                            <td>2024-11-05</td>
                            <td>16:45</td>
                            <td>Pago de servicios</td>
                            <td>-$1500</td>
                            <td>$8500</td>
                            <td>Pago de electricidad</td>
                        </tr>
                        <tr>
                            <td>2024-11-07</td>
                            <td>11:20</td>
                            <td>Depósito</td>
                            <td>$2000</td>
                            <td>$10500</td>
                            <td>Depósito en cuenta bancaria</td>
                        </tr>
                        <tr>
                            <td>2024-11-08</td>
                            <td>15:00</td>
                            <td>Compra con tarjeta</td>
                            <td>-$500</td>
                            <td>$10000</td>
                            <td>Compra en supermercado</td>
                        </tr>
                        <tr>
                            <td>2024-11-10</td>
                            <td>18:30</td>
                            <td>Transferencia recibida</td>
                            <td>$3000</td>
                            <td>$13000</td>
                            <td>Transferencia de cuenta 987654321</td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>

</body>
</html>