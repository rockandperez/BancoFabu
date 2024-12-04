USE bd_Banco_rp_fabu; 

INSERT INTO `Administardores` (`Dni`, `estado`, `Nombre`, `Apellido`, `Usuario`, `contrasenia`) 
VALUES 
('12345678', 'Activo', 'Facundo', 'Luna', 'facundo.luna', 'password123'),
('87654321', 'Activo', 'Fabian', 'Luna', 'fabian.luna', 'password456');

INSERT INTO `Usuarios` (`Dni`, `Cuil`, `Estado`, `Nombre`, `Apellido`, `Sexo`, `Nacionalidad`, `Fecha_Nacimiento`, `Direccion`, `Localidad`, `Provincia`, `Email`, `Usuario`, `Contrasenia`) 
VALUES 
('30259917', '20-30259917-7', 'Activo', 'Juan', 'Pérez', 'M', 'Argentina', '1980-01-01', 'Calle Falsa 123', 'Lanús', 'Buenos Aires', 'juan.perez@email.com', 'juan.perez', 'password1'),
('45812009', '27-45812009-3', 'Inactivo', 'María', 'Gómez', 'F', 'Argentina', '1985-02-02', 'Calle Verdadera 456', 'Quilmes', 'Buenos Aires', 'maria.gomez@correo.com', 'maria.gomez', 'password2'),
('27489021', '20-27489021-6', 'Activo', 'José', 'Rodríguez', 'M', 'Argentina', '1990-03-03', 'Avenida Siempreviva 789', 'Morón', 'Buenos Aires', 'jose.rodriguez@mail.com', 'jose.rodriguez', 'password3'),
('38450976', '27-38450976-2', 'Activo', 'Ana', 'Martínez', 'F', 'Argentina', '1995-04-04', 'Boulevard de los Sueños 101', 'Tigre', 'Buenos Aires', 'ana.martinez@webmail.com', 'ana.martinez', 'password4'),
('45128764', '20-45128764-9', 'Inactivo', 'Lucía', 'Fernández', 'F', 'Argentina', '2000-05-05', 'Calle de la Esperanza 202', 'San Isidro', 'Buenos Aires', 'lucia.fernandez@ejemplo.com', 'lucia.fernandez', 'password5'), 
('38659012', '27-38659012-4', 'Activo', 'Carlos', 'Ramírez', 'M', 'Argentina', '1982-06-06', 'Avenida Libertador 303', 'San Fernando', 'Buenos Aires', 'carlos.ramirez@correo.com.ar', 'carlos.ramirez', 'password6'), 
('22751436', '20-22751436-8', 'Activo', 'Laura', 'Suárez', 'F', 'Argentina', '1987-07-07', 'Calle de la Paz 404', 'Escobar', 'Buenos Aires', 'laura.suarez@miemail.com', 'laura.suarez', 'password7'),
('30547821', '27-30547821-5', 'Inactivo', 'Francisco', 'Molina', 'M', 'Argentina', '1992-08-08', 'Avenida de los Poetas 505', 'Avellaneda', 'Buenos Aires', 'francisco.molina@service.com', 'francisco.molina', 'password8'),
('47251008', '20-47251008-1', 'Activo', 'Carmen', 'Ríos', 'F', 'Argentina', '1997-09-09', 'Calle de las Flores 606', 'Olavarría', 'Buenos Aires', 'carmen.rios@inbox.com', 'carmen.rios', 'password9'),
('36254123', '27-36254123-3', 'Activo', 'Ricardo', 'Méndez', 'M', 'Argentina', '1984-10-10', 'Avenida de los Pinos 707', 'Campana', 'Buenos Aires', 'ricardo.mendez@live.com', 'ricardo.mendez', 'password10'), 
('41598320', '20-41598320-2', 'Inactivo', 'Verónica', 'Paz', 'F', 'Argentina', '1989-11-11', 'Calle de los Olivos 808', 'Pilar', 'Buenos Aires', 'veronica.paz@correo.net', 'veronica.paz', 'password11'),
('48250009', '27-48250009-7', 'Activo', 'Martín', 'Vega', 'M', 'Argentina', '1994-12-12', 'Avenida de los Robles 909', 'Luján', 'Buenos Aires', 'martin.vega@mailservice.com', 'martin.vega', 'password12'),
('36974215', '20-36974215-4', 'Activo', 'Patricia', 'Ortega', 'F', 'Argentina', '1981-01-13', 'Calle de los Cedros 1010', 'Berisso', 'Buenos Aires', 'patricia.ortega@email.net', 'patricia.ortega', 'password13'),
('44213598', '27-44213598-6', 'Inactivo', 'Esteban', 'Aguirre', 'M', 'Argentina', '1986-02-14', 'Avenida de los Álamos 1111', 'Tandil', 'Buenos Aires', 'esteban.aguirre@service.co', 'esteban.aguirre', 'password14'),
('28965432', '20-28965432-9', 'Activo', 'Sofía', 'Herrera', 'F', 'Argentina', '1991-03-15', 'Calle de los Laureles 1212', 'Chascomús', 'Buenos Aires', 'sofia.herrera@correo.org', 'sofia.herrera', 'password15');

 
 INSERT INTO `Tipo_Cuenta` (`Id`, `Detalle`) 
VALUES 
(1, 'Caja de Ahorro'),
(2, 'Cuenta Corriente'),
(3, 'Cuenta Sueldo'),
(4, 'Cuenta de Inversión');

 INSERT INTO `Cuentas` (`Numero`, `Tipo`, `Cbu`, `DniCliente`, `Saldo`, `Fecha_alta`) 
VALUES 
('1234567890', 1, '1234567890123456789012', '30259917', 10000.00, '2024-01-01'),
('0987654321', 2, '0987654321098765432109', '45812009', 15000.00, '2024-01-01'),
('1122334455', 3, '1122334455667788990011', '27489021', 20000.00, '2024-01-01'),
('2233445566', 4, '2233445566778899001122', '38450976', 25000.00, '2024-01-01'),
('3344556677', 1, '3344556677889900112233', '45128764', 30000.00, '2024-01-01'),
('4455667788', 2, '4455667788990011223344', '38659012', 35000.00, '2024-01-01'),
('5566778899', 3, '5566778899001122334455', '22751436', 40000.00, '2024-01-01'),
('6677889900', 4, '6677889900112233445566', '30547821', 45000.00, '2024-01-01'),
('7788990011', 1, '7788990011223344556677', '47251008', 50000.00, '2024-01-01'),
('8899001122', 2, '8899001122334455667788', '36254123', 55000.00, '2024-01-01'),
('9900112233', 1, '9900112233445566778899', '41598320', 60000.00, '2024-01-01'),
('0011223344', 2, '0011223344556677889900', '48250009', 65000.00, '2024-01-01'),
('1122334456', 1, '1122334455667788990012', '36974215', 70000.00, '2024-01-01'), 
('2233445567', 2, '2233445566778899001123', '44213598', 75000.00, '2024-01-01'), 
('3344556678', 1, '3344556677889900112234', '28965432', 80000.00, '2024-01-01'); 

 INSERT INTO `Telefonos` (`Id`, `DniCliente`, `Telefono`) 
VALUES 
('1', '30259917', '1234567890'),
('2', '45812009', '0987654321'),
('3', '27489021', '1122334455'),
('4', '38450976', '2233445566'),
('5', '45128764', '3344556677'),
('6', '38659012', '4455667788'),
('7', '22751436', '5566778899'),
('8', '30547821', '6677889900'),
('9', '47251008', '7788990011'),
('10', '36254123', '8899001122'),
('11', '41598320', '9900112233'),
('12', '48250009', '0011223344'),
('13', '36974215', '1122334455'),
('14', '44213598', '2233445566'),
('15', '28965432', '3344556677');

INSERT INTO `Tipo_Movimiento` (`Id`, `Detalle`, `Signo`) 
VALUES 
(1, 'Depósito', '+'),
(2, 'Extracción', '-');
INSERT INTO `Movimientos` (`Tipo`, `Cuenta_Numero`, `Cuenta_Tipo`, `Fecha`, `Hora`, `Importe`, `Concepto`) 
VALUES 
(1, '1234567890', 1, '2024-01-01', '10:00:00', 5000.00, 'Depósito inicial'),
(2, '0987654321', 2, '2024-01-01', '11:00:00', 2000.00, 'Extracción de efectivo'),
(1, '1122334455', 3, '2024-01-01', '12:00:00', 3000.00, 'Depósito inicial'),
(2, '2233445566', 4, '2024-01-01', '13:00:00', 4000.00, 'Extracción de efectivo'),
(1, '3344556677', 1, '2024-01-01', '14:00:00', 5000.00, 'Depósito inicial'),
(2, '4455667788', 2, '2024-01-01', '15:00:00', 6000.00, 'Extracción de efectivo'),
(1, '5566778899', 3, '2024-01-01', '16:00:00', 7000.00, 'Depósito inicial'),
(2, '6677889900', 4, '2024-01-01', '17:00:00', 8000.00, 'Extracción de efectivo'),
(1, '7788990011', 1, '2024-01-01', '18:00:00', 9000.00, 'Depósito inicial'),
(2, '8899001122', 2, '2024-01-01', '19:00:00', 10000.00, 'Extracción de efectivo'),
(1, '9900112233', 1, '2024-01-01', '20:00:00', 11000.00, 'Depósito inicial'),
(2, '0011223344', 2, '2024-01-01', '21:00:00', 12000.00, 'Extracción de efectivo'),
(1, '1122334456', 1, '2024-01-01', '22:00:00', 13000.00, 'Depósito inicial'), 
(2, '2233445567', 2, '2024-01-01', '23:00:00', 14000.00, 'Extracción de efectivo'), 
(1, '3344556678', 1, '2024-01-01', '23:59:00', 15000.00, 'Depósito inicial'); 

INSERT INTO `Prestamos` (`Cliente`, `Cuenta_Tipo_Deposito`, `Cuenta_Numero_Deposito`, `Fecha`, `Importe_Total`, `Importe_Solicitado`, `Plazo`, `Monto_Mensual`, `Aprobado`) 
VALUES 
('30259917', 1, '1234567890', '2024-01-01', 12000.00, 10000.00, 12, 1000.00, TRUE),
('45812009', 2, '0987654321', '2024-01-01', 18000.00, 15000.00, 18, 1000.00, FALSE);
INSERT INTO `Cuotas` (`Id_Prestamo`, `Mes_Anio`, `Adeudada`) 
VALUES 
(1, '2024-02', TRUE),
(2, '2024-03', FALSE);

