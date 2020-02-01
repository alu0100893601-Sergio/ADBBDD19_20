--Librerias--
CREATE TABLE Librerias
(
    Identificador text PRIMARY KEY,
    Localizacion text NOT NULL,
    Nombre text NOT NULL,
    Telefono text NOT NULL
);

--Libros--
CREATE TABLE Libros
(
    ISBN text PRIMARY KEY,
    Titulo text NOT NULL,
    Precio INTEGER NOT NULL,
    Genero text NOT NULL,
    Fecha_lanzamiento TIMESTAMP NOT NULL,
    Autor text NOT NULL,
    Edicion INTEGER NOT NULL,
    Stock INTEGER NOT NULL
);

--Clientes registrados VIP--
CREATE TABLE Clientes_registrados_vip
(
    DNI text PRIMARY KEY,
    Nombre text NOT NULL,
    Apellidos text NOT NULL,
    Email text NOT NULL,
    Fecha_nacimiento TIMESTAMP NOT NULL,
    ID_tarjeta text NOT NULL,
    Fecha_caducidad TIMESTAMP NOT NULL,
    Puntos INTEGER NOT NULL
);

--Clientes registrados Normales--
CREATE TABLE Clientes_registrados_normales
(
    DNI text PRIMARY KEY,
    Nombre text NOT NULL,
    Apellidos text NOT NULL,
    Email text NOT NULL,
    Fecha_nacimiento TIMESTAMP NOT NULL,
    ID_tarjeta text,
    Fecha_caducidad TIMESTAMP
);

--Generos--
CREATE TABLE Generos
(
    Nombre text PRIMARY KEY,
    N_libros INTEGER NOT NULL,
    Interes text NOT NULL
);

--Registro de ventas--
CREATE TABLE Registro_ventas
(
    Codigo_venta text PRIMARY KEY,
    Fecha_venta TIMESTAMP NOT NULL,
);

--Empleados--
CREATE TABLE Empleados
(
    DNI text PRIMARY KEY,
    Telefono text NOT NULL,
    Cargo text NOT NULL, 
    Nombre text NOT NULL,
    Apellidos text NOT NULL
);

--Contratos temporales--
CREATE TABLE Contratos_temporales
(
    Contrato_ID text NOT NULL,
    Sueldo INTEGER NOT NULL,
    Nombre text NOT NULL,
    Apellidos text NOT NULL,
    Fecha_inicio TIMESTAMP NOT NULL,
    Fecha_fin TIMESTAMP NOT NULL
);

--Contratos indefinidos--
CREATE TABLE Contratos_indefinidos
(
    Contrato_ID text NOT NULL,
    Sueldo INTEGER NOT NULL,
    Nombre text NOT NULL,
    Apellidos text NOT NULL,
    Fecha_inicio TIMESTAMP NOT NULL
);