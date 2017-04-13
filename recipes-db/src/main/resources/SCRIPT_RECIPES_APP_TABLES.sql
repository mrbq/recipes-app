CREATE TABLE RECETA
(
ID int NOT NULL,
NOMBRE varchar(255) NOT NULL,
RESUMEN varchar(255),
LIKES int NOT NULL,
COMENSALES int NOT NULL,
FOTO varchar(255),
PRIMARY KEY (ID)
);

CREATE TABLE PASO
(
ID int NOT NULL,
ID_RECETA int NOT NULL,
NOMBRE varchar(255) NOT NULL,
TIEMPO varchar(255),
ID_INGREDIENTE int NOT NULL,
CANTIDAD_INGREDIENTE int NOT NULL,
DESCRIPCION varchar(255),
PRIMARY KEY (ID),
FOREIGN KEY (ID_RECETA) REFERENCES RECETA(ID),
FOREIGN KEY (ID_INGREDIENTE) REFERENCES INGREDIENTE(ID)
);

CREATE TABLE INGREDIENTE
(
ID int NOT NULL,
NOMBRE varchar(255) NOT NULL,
TIPO_INGREDIENTE varchar(255),
PRIMARY KEY (ID),
FOREIGN KEY (TIPO_INGREDIENTE) REFERENCES TIPO_INGREDIENTE(ID)
);

CREATE TABLE TIPO_INGREDIENTE
(
ID int NOT NULL,
NOMBRE varchar(255) NOT NULL,
PRIMARY KEY (ID)
);


CREATE TABLE RECETA_INGREDIENTE
(
ID int NOT NULL,
ID_RECETA int NOT NULL,
ID_INGREDIENTE int NOT NULL,
PRIMARY KEY (ID),
FOREIGN KEY (ID_RECETA) REFERENCES RECETA(ID),
FOREIGN KEY (ID_INGREDIENTE) REFERENCES INGREDIENTE(ID)
);