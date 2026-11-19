CREATE DATABASE  IF NOT EXISTS Planificacion;
USE Planificacion;

CREATE TABLE usuarios(
IDpersona tinyint NOT NULL AUTO_INCREMENT PRIMARY KEY,
Nombre VARCHAR (40) NOT NULL
);


CREATE TABLE Tareas(
IDtarea tinyint NOT NULL AUTO_INCREMENT PRIMARY KEY,
Tarea VARCHAR (50) NOT NULL 
);

CREATE TABLE Reparto(
persona tinyint NOT NULL PRIMARY KEY,
tarea tinyint NOT NULL,
fecha date NOT NULL,
CONSTRAINT (fk_persona) FOREIGN KEY (persona) REFERENCES usuarios (IDpersona),
CONSTRAINT (fk_tarea) FOREIGN KEY (tarea) REFERENCES usuarios (IDtarea)
);

USE planificacion;

CREATE TABLE Reparto(
persona tinyint NOT NULL,
Tarea tinyint NOT NULL,
fecha date NOT NULL,
CONSTRAINT fk_persona FOREIGN KEY (persona) REFERENCES personas (IDpersona),
CONSTRAINT fk_tarea FOREIGN KEY (tarea) REFERENCES Tareas (IDtarea),

);
ALTER TABLE reparto
ADD PRIMARY KEY (persona,fecha);

