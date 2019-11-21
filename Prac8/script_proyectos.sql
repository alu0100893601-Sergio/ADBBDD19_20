CREATE TABLE jefe
(
    Codigo INTEGER,
    Nombre TEXT,
    Direccion TEXT,
    Telefono TEXT
);

CREATE TABLE proyecto
(
    Codigo INTEGER,
    Nombre TEXT
);

CREATE TABLE Plano
(
    N_Id INTEGER,
    Fecha_entrega DATE,
    Arquitectos TEXT,
    N_figura INTEGER,
    Dibujo Figura
);

CREATE TABLE Figura
(
    Id INTEGER,
    Nombre TEXT ,
    Color TEXT
    ,
);

CREATE TABLE Poligonos
(
    N_Lineas INTEGER
)
INHERITS
(Figura);

CREATE TYPE Coordenada AS
(
 x_cor INTEGER,
 y_cor INTEGER
);

CREATE TABLE Linea
(
    Id INTEGER,
    Origen Coordenada,
    Destino Coordenada
);