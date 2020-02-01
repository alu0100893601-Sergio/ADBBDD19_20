-- -----------------------------------------------------
-- Data for table `Epopeyadb`.`Librerias`
-- -----------------------------------------------------
START TRANSACTION;
USE `Epopeyadb`;
INSERT INTO `Epopeyadb`.`Librerias` (`Identificador`, `Localizacion`, `Telefono`, `Nombre`) VALUES (1, 'Calle Menta', '922834731', 'Epopeya 1');
INSERT INTO `Epopeyadb`.`Librerias` (`Identificador`, `Localizacion`, `Telefono`, `Nombre`) VALUES (2, 'Calle Poleo', '922738264', 'Epopeya 2');
INSERT INTO `Epopeyadb`.`Librerias` (`Identificador`, `Localizacion`, `Telefono`, `Nombre`) VALUES (3, 'Calle Sigma', '922837491', 'Epopeya S');

COMMIT;


-- -----------------------------------------------------
-- Data for table `Epopeyadb`.`Empleados`
-- -----------------------------------------------------
START TRANSACTION;
USE `Epopeyadb`;
INSERT INTO `Epopeyadb`.`Empleados` (`DNI`, `Nombre`, `Apellidos`, `Telefono`, `Cargo`, `Librerias_Identificador`) VALUES ('38291029R', 'Sergio', 'Chic Reus', '663289283', 'Encargado', 1);
INSERT INTO `Epopeyadb`.`Empleados` (`DNI`, `Nombre`, `Apellidos`, `Telefono`, `Cargo`, `Librerias_Identificador`) VALUES ('74837219D', 'María', 'Tosa Martin', '647381924', 'Dependienta', 1);
INSERT INTO `Epopeyadb`.`Empleados` (`DNI`, `Nombre`, `Apellidos`, `Telefono`, `Cargo`, `Librerias_Identificador`) VALUES ('89583294G', 'Jesús', 'Santana Santana', '634731234', 'Dependiente', 1);
INSERT INTO `Epopeyadb`.`Empleados` (`DNI`, `Nombre`, `Apellidos`, `Telefono`, `Cargo`, `Librerias_Identificador`) VALUES ('63473234H', 'Francisca', 'Rodríguez Pérez', '634332482', 'Encargada', 2);
INSERT INTO `Epopeyadb`.`Empleados` (`DNI`, `Nombre`, `Apellidos`, `Telefono`, `Cargo`, `Librerias_Identificador`) VALUES ('89343345V', 'Roberto ', 'Leal Leal', '634329851', 'Dependiente', 2);
INSERT INTO `Epopeyadb`.`Empleados` (`DNI`, `Nombre`, `Apellidos`, `Telefono`, `Cargo`, `Librerias_Identificador`) VALUES ('32484583J', 'Zaida', 'Tao Moreno', '612398453', 'Encargada', 3);
INSERT INTO `Epopeyadb`.`Empleados` (`DNI`, `Nombre`, `Apellidos`, `Telefono`, `Cargo`, `Librerias_Identificador`) VALUES ('84598453T', 'Natalia', 'Pérez Rodriguez', '632583257', 'Encargada', 3);
INSERT INTO `Epopeyadb`.`Empleados` (`DNI`, `Nombre`, `Apellidos`, `Telefono`, `Cargo`, `Librerias_Identificador`) VALUES ('87234984L', 'Dámaris', 'Moreno Delgado', '673249938', 'Dependienta', 3);
INSERT INTO `Epopeyadb`.`Empleados` (`DNI`, `Nombre`, `Apellidos`, `Telefono`, `Cargo`, `Librerias_Identificador`) VALUES ('32948465Y', 'Alberto', 'Creus Toledo', '684509023', 'Dependiente', 3);

COMMIT;


-- -----------------------------------------------------
-- Data for table `Epopeyadb`.`Clientes Registrados VIP`
-- -----------------------------------------------------
START TRANSACTION;
USE `Epopeyadb`;
INSERT INTO `Epopeyadb`.`Clientes Registrados VIP` (`DNI`, `Nombre`, `Apellidos`, `Email`, `Fecha nacimiento`, `ID_Tarjeta`, `Fecha Caducidad`, `Puntos`) VALUES ('97234733F', 'Mariano', 'Manuel Galea', 'marianomanuelgalea@gmail.com', '22-12-1995', 1, '03-03-2020', 1500);
INSERT INTO `Epopeyadb`.`Clientes Registrados VIP` (`DNI`, `Nombre`, `Apellidos`, `Email`, `Fecha nacimiento`, `ID_Tarjeta`, `Fecha Caducidad`, `Puntos`) VALUES ('87248126Y', 'Yohanna ', 'Masana', 'yohanna@hotmail.com', '08-07-1989', 2, '09-10-2020', 2000);
INSERT INTO `Epopeyadb`.`Clientes Registrados VIP` (`DNI`, `Nombre`, `Apellidos`, `Email`, `Fecha nacimiento`, `ID_Tarjeta`, `Fecha Caducidad`, `Puntos`) VALUES ('87234875T', 'Francisca ', 'Asis Chavarri', 'franciscaasischavarri@gmail.com', '05-05-1970', 3, '03-06-2021', 4000);
INSERT INTO `Epopeyadb`.`Clientes Registrados VIP` (`DNI`, `Nombre`, `Apellidos`, `Email`, `Fecha nacimiento`, `ID_Tarjeta`, `Fecha Caducidad`, `Puntos`) VALUES ('98458453V', 'Claudia', 'Cristina Pacon', 'claudiacristinapacon@gmail.com', '10-12-1983', 4, '07-12-2022', 500);

COMMIT;


-- -----------------------------------------------------
-- Data for table `Epopeyadb`.`Clientes Registrados Normal`
-- -----------------------------------------------------
START TRANSACTION;
USE `Epopeyadb`;
INSERT INTO `Epopeyadb`.`Clientes Registrados Normal` (`DNI`, `Nombre`, `Apellidos`, `Email`, `Fecha nacimiento`, `ID_Tarjeta`, `Fecha caducidad`) VALUES ('87234531U', 'Isabel', 'Rodriguez Wan', 'isabelrodri@gmail.com', '20-03-1996', NULL, NULL);
INSERT INTO `Epopeyadb`.`Clientes Registrados Normal` (`DNI`, `Nombre`, `Apellidos`, `Email`, `Fecha nacimiento`, `ID_Tarjeta`, `Fecha caducidad`) VALUES ('98457332V', 'Federico', 'Tomás Pérez', 'fede@gmail.com', '31-12-1990', 1, '31-12-2022');
INSERT INTO `Epopeyadb`.`Clientes Registrados Normal` (`DNI`, `Nombre`, `Apellidos`, `Email`, `Fecha nacimiento`, `ID_Tarjeta`, `Fecha caducidad`) VALUES ('87234775S', 'Fermin', 'Cabrera Cabrera', 'fermincabreracabrera@gmail.com', '07-07-1979', NULL, NULL);
INSERT INTO `Epopeyadb`.`Clientes Registrados Normal` (`DNI`, `Nombre`, `Apellidos`, `Email`, `Fecha nacimiento`, `ID_Tarjeta`, `Fecha caducidad`) VALUES ('98623675X', 'Marta', 'Reyes Reyes', 'martareyes@gmail.com', '28-11-1999', 2, '31-21-2020');

COMMIT;


-- -----------------------------------------------------
-- Data for table `Epopeyadb`.`Cuentan con`
-- -----------------------------------------------------
START TRANSACTION;
USE `Epopeyadb`;
INSERT INTO `Epopeyadb`.`Cuentan con` (`Librerias_Identificador`, `Clientes Registrados VIP_DNI`, `Clientes Registrados Normal_DNI`) VALUES (1, '97234733F', '87234531U');
INSERT INTO `Epopeyadb`.`Cuentan con` (`Librerias_Identificador`, `Clientes Registrados VIP_DNI`, `Clientes Registrados Normal_DNI`) VALUES (2, '87248126Y', '98457332V');
INSERT INTO `Epopeyadb`.`Cuentan con` (`Librerias_Identificador`, `Clientes Registrados VIP_DNI`, `Clientes Registrados Normal_DNI`) VALUES (3, '87234875T', '87234775S');
INSERT INTO `Epopeyadb`.`Cuentan con` (`Librerias_Identificador`, `Clientes Registrados VIP_DNI`, `Clientes Registrados Normal_DNI`) VALUES (1, '98458453V', '98623675X');

COMMIT;


-- -----------------------------------------------------
-- Data for table `Epopeyadb`.`Libros`
-- -----------------------------------------------------
START TRANSACTION;
USE `Epopeyadb`;
INSERT INTO `Epopeyadb`.`Libros` (`ISBN`, `Titulo`, `Precio`, `Fecha lanzamiento`, `Autor`, `Stock`, `Edicion`) VALUES ('8466424482', 'Origen', 12.30, '01/10/2016', 'Dan Brown', 150, 2);
INSERT INTO `Epopeyadb`.`Libros` (`ISBN`, `Titulo`, `Precio`, `Fecha lanzamiento`, `Autor`, `Stock`, `Edicion`) VALUES ('8408176102', 'Fortaleza Digital', 10.30, '01/10/2000', 'Dan Brown', 150, 3);
INSERT INTO `Epopeyadb`.`Libros` (`ISBN`, `Titulo`, `Precio`, `Fecha lanzamiento`, `Autor`, `Stock`, `Edicion`) VALUES ('8408175769', 'La Conspiracion', 10.30, '01/10/2003', 'Dan Brown', 150, 3);
INSERT INTO `Epopeyadb`.`Libros` (`ISBN`, `Titulo`, `Precio`, `Fecha lanzamiento`, `Autor`, `Stock`, `Edicion`) VALUES ('8408175726', 'El Codigo Da Vinci', 10.30, '01/10/2006', 'Dan Brown', 150, 3);
INSERT INTO `Epopeyadb`.`Libros` (`ISBN`, `Titulo`, `Precio`, `Fecha lanzamiento`, `Autor`, `Stock`, `Edicion`) VALUES ('8408178946', 'El Fuego Invisible', 16.50, '01/10/2017', 'Javier Sierra', 150, 2);
INSERT INTO `Epopeyadb`.`Libros` (`ISBN`, `Titulo`, `Precio`, `Fecha lanzamiento`, `Autor`, `Stock`, `Edicion`) VALUES ('8497930193', 'Los ojos del Dragon', 9.99, '01/10/1996', 'Stephen King', 150, 6);
INSERT INTO `Epopeyadb`.`Libros` (`ISBN`, `Titulo`, `Precio`, `Fecha lanzamiento`, `Autor`, `Stock`, `Edicion`) VALUES ('8445000667', 'La Comunidad del Anillo', 16.20, '01/10/1957', 'Tolkien', 150, 9);

COMMIT;


-- -----------------------------------------------------
-- Data for table `Epopeyadb`.`Registro Ventas`
-- -----------------------------------------------------
START TRANSACTION;
USE `Epopeyadb`;
INSERT INTO `Epopeyadb`.`Registro Ventas` (`Codigo Ventas`, `Fecha Venta`, `ISBN`, `Librerias_Identificador`) VALUES (1, '01-12-2019', '8466424482', 1);
INSERT INTO `Epopeyadb`.`Registro Ventas` (`Codigo Ventas`, `Fecha Venta`, `ISBN`, `Librerias_Identificador`) VALUES (2, '04-08-2019', '8466424482', 1);
INSERT INTO `Epopeyadb`.`Registro Ventas` (`Codigo Ventas`, `Fecha Venta`, `ISBN`, `Librerias_Identificador`) VALUES (3, '05-07-2018', '8408175769', 2);
INSERT INTO `Epopeyadb`.`Registro Ventas` (`Codigo Ventas`, `Fecha Venta`, `ISBN`, `Librerias_Identificador`) VALUES (4, '09-01-2020', '8408175769', 3);
INSERT INTO `Epopeyadb`.`Registro Ventas` (`Codigo Ventas`, `Fecha Venta`, `ISBN`, `Librerias_Identificador`) VALUES (5, '20-12-2019', '8408175769', 3);
INSERT INTO `Epopeyadb`.`Registro Ventas` (`Codigo Ventas`, `Fecha Venta`, `ISBN`, `Librerias_Identificador`) VALUES (6, '17-09-2019', '8497930193', 1);
INSERT INTO `Epopeyadb`.`Registro Ventas` (`Codigo Ventas`, `Fecha Venta`, `ISBN`, `Librerias_Identificador`) VALUES (7, '22-12-2019', '8497930193', 1);
INSERT INTO `Epopeyadb`.`Registro Ventas` (`Codigo Ventas`, `Fecha Venta`, `ISBN`, `Librerias_Identificador`) VALUES (8, '13-06-2019', '8497930193', 3);
INSERT INTO `Epopeyadb`.`Registro Ventas` (`Codigo Ventas`, `Fecha Venta`, `ISBN`, `Librerias_Identificador`) VALUES (9, '28-11-2019', '8445000667', 1);
INSERT INTO `Epopeyadb`.`Registro Ventas` (`Codigo Ventas`, `Fecha Venta`, `ISBN`, `Librerias_Identificador`) VALUES (10, '20-4-2019', '8445000667', 1);

COMMIT;


-- -----------------------------------------------------
-- Data for table `Epopeyadb`.`Contrato Indefinido`
-- -----------------------------------------------------
START TRANSACTION;
USE `Epopeyadb`;
INSERT INTO `Epopeyadb`.`Contrato Indefinido` (`Contrato_ID`, `Empleados_DNI`, `Nombre`, `Apellidos`, `Sueldo`, `Fecha_inicio`) VALUES ('1', '38291029R', 'Sergio', 'Chic Reus', 1400, '20-8-2018');
INSERT INTO `Epopeyadb`.`Contrato Indefinido` (`Contrato_ID`, `Empleados_DNI`, `Nombre`, `Apellidos`, `Sueldo`, `Fecha_inicio`) VALUES ('2', '63473234H', 'Francisca', 'Rodríguez Pérez', 1400, '04-05-2018');
INSERT INTO `Epopeyadb`.`Contrato Indefinido` (`Contrato_ID`, `Empleados_DNI`, `Nombre`, `Apellidos`, `Sueldo`, `Fecha_inicio`) VALUES ('3', '32484583J', 'Zaida', 'Tao Moreno', 1300, '01-01-2019');
INSERT INTO `Epopeyadb`.`Contrato Indefinido` (`Contrato_ID`, `Empleados_DNI`, `Nombre`, `Apellidos`, `Sueldo`, `Fecha_inicio`) VALUES ('4', '84598453T', 'Natalia', 'Pérez Rodriguez', 1500, '01-01-2018');
INSERT INTO `Epopeyadb`.`Contrato Indefinido` (`Contrato_ID`, `Empleados_DNI`, `Nombre`, `Apellidos`, `Sueldo`, `Fecha_inicio`) VALUES ('5', '74837219D', 'María', 'Tosa Martin', 1000, '20-10-2018');
INSERT INTO `Epopeyadb`.`Contrato Indefinido` (`Contrato_ID`, `Empleados_DNI`, `Nombre`, `Apellidos`, `Sueldo`, `Fecha_inicio`) VALUES ('6', '87234984L', 'Dámaris', 'Moreno Delgado', 1000, '06-09-2018');

COMMIT;


-- -----------------------------------------------------
-- Data for table `Epopeyadb`.`Contrato Temporal`
-- -----------------------------------------------------
START TRANSACTION;
USE `Epopeyadb`;
INSERT INTO `Epopeyadb`.`Contrato Temporal` (`Contrato_ID`, `Empleados_DNI`, `Nombre`, `Apellidos`, `Sueldo`, `Fecha_inicio`, `Fecha_finalizacion`) VALUES ('1', '89583294G', 'Jesús', 'Santana Santana', 1000, '03-09-2019', '03-09-2020');
INSERT INTO `Epopeyadb`.`Contrato Temporal` (`Contrato_ID`, `Empleados_DNI`, `Nombre`, `Apellidos`, `Sueldo`, `Fecha_inicio`, `Fecha_finalizacion`) VALUES ('2', '89343345V', 'Roberto ', 'Leal Leal', 1000, '23-07-2019', '23-07-2020');
INSERT INTO `Epopeyadb`.`Contrato Temporal` (`Contrato_ID`, `Empleados_DNI`, `Nombre`, `Apellidos`, `Sueldo`, `Fecha_inicio`, `Fecha_finalizacion`) VALUES ('3', '32948465Y', 'Alberto', 'Creus Toledo', 1000, '15-06-2019', '15-06-2020');

COMMIT;


-- -----------------------------------------------------
-- Data for table `Epopeyadb`.`Generos`
-- -----------------------------------------------------
START TRANSACTION;
USE `Epopeyadb`;
INSERT INTO `Epopeyadb`.`Generos` (`Nombre`, `Numero libros`, `Interés`) VALUES ('Policiaca', 1500, 'Muy alto');
INSERT INTO `Epopeyadb`.`Generos` (`Nombre`, `Numero libros`, `Interés`) VALUES ('Fantastica', 2000, 'Alto');
INSERT INTO `Epopeyadb`.`Generos` (`Nombre`, `Numero libros`, `Interés`) VALUES ('Historica', 1235, 'Estandar');

COMMIT;


-- -----------------------------------------------------
-- Data for table `Epopeyadb`.`Pertenece`
-- -----------------------------------------------------
START TRANSACTION;
USE `Epopeyadb`;
INSERT INTO `Epopeyadb`.`Pertenece` (`Libros_ISBN`, `Generos_Nombre`) VALUES ('8466424482', 'Policiaca');
INSERT INTO `Epopeyadb`.`Pertenece` (`Libros_ISBN`, `Generos_Nombre`) VALUES ('8408176102', 'Policiaca');
INSERT INTO `Epopeyadb`.`Pertenece` (`Libros_ISBN`, `Generos_Nombre`) VALUES ('8408175769', 'Policiaca');
INSERT INTO `Epopeyadb`.`Pertenece` (`Libros_ISBN`, `Generos_Nombre`) VALUES ('8408175726', 'Policiaca');
INSERT INTO `Epopeyadb`.`Pertenece` (`Libros_ISBN`, `Generos_Nombre`) VALUES ('8408178946', 'Historica');
INSERT INTO `Epopeyadb`.`Pertenece` (`Libros_ISBN`, `Generos_Nombre`) VALUES ('8497930193', 'Fantastica');
INSERT INTO `Epopeyadb`.`Pertenece` (`Libros_ISBN`, `Generos_Nombre`) VALUES ('8445000667', 'Fantastica');

COMMIT;


-- -----------------------------------------------------
-- Data for table `Epopeyadb`.`Dispone`
-- -----------------------------------------------------
START TRANSACTION;
USE `Epopeyadb`;
INSERT INTO `Epopeyadb`.`Dispone` (`Librerias_Identificador`, `Libros_ISBN`, `Stock`, `Precio`) VALUES (1, '8466424482', 50, 12.30);
INSERT INTO `Epopeyadb`.`Dispone` (`Librerias_Identificador`, `Libros_ISBN`, `Stock`, `Precio`) VALUES (2, '8466424482', 50, 12.30);
INSERT INTO `Epopeyadb`.`Dispone` (`Librerias_Identificador`, `Libros_ISBN`, `Stock`, `Precio`) VALUES (3, '8466424482', 50, 12.30);
INSERT INTO `Epopeyadb`.`Dispone` (`Librerias_Identificador`, `Libros_ISBN`, `Stock`, `Precio`) VALUES (1, '8408176102', 90, 10.30);
INSERT INTO `Epopeyadb`.`Dispone` (`Librerias_Identificador`, `Libros_ISBN`, `Stock`, `Precio`) VALUES (2, '8408176102', 10, 10.30);
INSERT INTO `Epopeyadb`.`Dispone` (`Librerias_Identificador`, `Libros_ISBN`, `Stock`, `Precio`) VALUES (3, '8408176102', 50, 10.30);
INSERT INTO `Epopeyadb`.`Dispone` (`Librerias_Identificador`, `Libros_ISBN`, `Stock`, `Precio`) VALUES (1, '8408175769', 20, 10.30);
INSERT INTO `Epopeyadb`.`Dispone` (`Librerias_Identificador`, `Libros_ISBN`, `Stock`, `Precio`) VALUES (2, '8408175769', 20, 10.30);
INSERT INTO `Epopeyadb`.`Dispone` (`Librerias_Identificador`, `Libros_ISBN`, `Stock`, `Precio`) VALUES (3, '8408175769', 90, 10.30);
INSERT INTO `Epopeyadb`.`Dispone` (`Librerias_Identificador`, `Libros_ISBN`, `Stock`, `Precio`) VALUES (1, '8408175726', 100, 10.30);
INSERT INTO `Epopeyadb`.`Dispone` (`Librerias_Identificador`, `Libros_ISBN`, `Stock`, `Precio`) VALUES (2, '8408175726', 45, 10.30);
INSERT INTO `Epopeyadb`.`Dispone` (`Librerias_Identificador`, `Libros_ISBN`, `Stock`, `Precio`) VALUES (3, '8408175726', 5, 10.30);
INSERT INTO `Epopeyadb`.`Dispone` (`Librerias_Identificador`, `Libros_ISBN`, `Stock`, `Precio`) VALUES (1, '8408178946', 120, 16.50);
INSERT INTO `Epopeyadb`.`Dispone` (`Librerias_Identificador`, `Libros_ISBN`, `Stock`, `Precio`) VALUES (2, '8408178946', 30, 16.50);
INSERT INTO `Epopeyadb`.`Dispone` (`Librerias_Identificador`, `Libros_ISBN`, `Stock`, `Precio`) VALUES (1, '8497930193', 40, 9.99);
INSERT INTO `Epopeyadb`.`Dispone` (`Librerias_Identificador`, `Libros_ISBN`, `Stock`, `Precio`) VALUES (2, '8497930193', 30, 9.99);
INSERT INTO `Epopeyadb`.`Dispone` (`Librerias_Identificador`, `Libros_ISBN`, `Stock`, `Precio`) VALUES (3, '8497930193', 80, 9.99);
INSERT INTO `Epopeyadb`.`Dispone` (`Librerias_Identificador`, `Libros_ISBN`, `Stock`, `Precio`) VALUES (1, '8445000667', 60, 16.20);
INSERT INTO `Epopeyadb`.`Dispone` (`Librerias_Identificador`, `Libros_ISBN`, `Stock`, `Precio`) VALUES (2, '8445000667', 60, 16.20);
INSERT INTO `Epopeyadb`.`Dispone` (`Librerias_Identificador`, `Libros_ISBN`, `Stock`, `Precio`) VALUES (3, '8445000667', 30, 16.20);

COMMIT;


-- -----------------------------------------------------
-- Data for table `Epopeyadb`.`Novedoso`
-- -----------------------------------------------------
START TRANSACTION;
USE `Epopeyadb`;
INSERT INTO `Epopeyadb`.`Novedoso` (`Librerias_Identificador`, `Libros_ISBN`, `Fecha_inicio`, `Fecha_fin`) VALUES (1, '8408178946', '01-12-2019', '01-02-2020');
INSERT INTO `Epopeyadb`.`Novedoso` (`Librerias_Identificador`, `Libros_ISBN`, `Fecha_inicio`, `Fecha_fin`) VALUES (2, '8408178946', '02-12-2019', '02-03-2020');
INSERT INTO `Epopeyadb`.`Novedoso` (`Librerias_Identificador`, `Libros_ISBN`, `Fecha_inicio`, `Fecha_fin`) VALUES (1, '8466424482', '01-12-2019', '01-03-2020');

COMMIT;