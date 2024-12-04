<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Reportes - Estadísticas</title>
    <jsp:include page="/comunes/headers.html"/>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
    <jsp:include page="/Privado/Admin/MenuAdmin.jsp"/>

    <div class="container conteiner-ancho-maximo my-3">
        <h2 class="text-center">Reportes y Estadísticas</h2>

        <!-- Resumen numérico -->
        <div class="row text-center my-3">
            <div class="col-md-4">
                <div class="card bg-light">
                    <div class="card-body">
                        <h5>Total de Cuentas</h5>
                        <h3>150</h3>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card bg-light">
                    <div class="card-body">
                        <h5>Total de Préstamos</h5>
                        <h3>45</h3>
                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card bg-light">
                    <div class="card-body">
                        <h5>Saldo Total (en $)</h5>
                        <h3>1,250,000</h3>
                    </div>
                </div>
            </div>
        </div>

<!-- Gráfico de cuentas por tipo -->
<div class="my-4">
    <h5 class="text-center">Cuentas por Tipo</h5>
    <div style="width: 400px; height: 400px; margin: auto;">
        <canvas id="chartCuentas"></canvas>
    </div>
</div>

        <!-- Tabla de préstamos aprobados -->
        <div class="my-4">
            <h5 class="text-center">Préstamos Aprobados</h5>
            <table class="table table-secondary table-striped">
                <thead>
                    <tr>
                        <th>#</th>
                        <th>Cliente</th>
                        <th>Monto Solicitado</th>
                        <th>Cuotas</th>
                        <th>Fecha de Aprobación</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>Juan Pérez</td>
                        <td>$50,000</td>
                        <td>12</td>
                        <td>2024-11-10</td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>María López</td>
                        <td>$75,000</td>
                        <td>18</td>
                        <td>2024-11-12</td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>Carlos Gómez</td>
                        <td>$100,000</td>
                        <td>24</td>
                        <td>2024-11-15</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>

    <!-- Scripts para generar gráficos -->
    <script>
        // Datos para el gráfico de cuentas
        const ctxCuentas = document.getElementById('chartCuentas').getContext('2d');
        new Chart(ctxCuentas, {
            type: 'pie',
            data: {
                labels: ['Caja de Ahorro', 'Cuenta Corriente'],
                datasets: [{
                    data: [100, 50],
                    backgroundColor: ['#007bff', '#28a745'],
                }]
            },
            options: {
                responsive: true,
                plugins: {
                    legend: {
                        position: 'top',
                    }
                }
            }
        });
    </script>
    
    <!-- Contenedor para el gráfico -->
	<div class="my-4">
    <h5 class="text-center">Informe de Préstamos por Estado</h5>
    	<div style="width: 400px; height: 400px; margin: auto;">
        	<canvas id="graficoTorta"></canvas>
    	</div>
    </div>
    <script>
        window.onload = function() {
            var ctx = document.getElementById('graficoTorta').getContext('2d');

            var chart = new Chart(ctx, {
                type: 'pie',  // Tipo de gráfico (torta)
                data: {
                    labels: ['Aprobados', 'Rechazados', 'Pendientes'],
                    datasets: [{
                        label: 'Prestamos por Estado',
                        data: [60, 30, 10],  // Datos
                        backgroundColor: ['#4CAF50', '#FF5722', '#FFC107'],
                        borderColor: ['#388E3C', '#D32F2F', '#FF9800'],
                        borderWidth: 1
                    }]
                },
                options: {
                    responsive: true,
                    plugins: {
                        legend: {
                            position: 'top',
                        },
                        tooltip: {
                            enabled: true,
                        }
                    }
                }
            });
        }
    </script>

    
</body>
</html>
