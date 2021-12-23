--CREANDO LA BASE DE DATOS

CREATE DATABASE Base_GestiónBDS
GO

USE Base_GestiónBDS
GO

--TABLA TIPOS DE SANGRE

CREATE TABLE Tipos_Sangre
(
ID_TipoSangre VARCHAR(8) NOT NULL,
NombreTS VARCHAR(8) NOT NULL

PRIMARY KEY (ID_TipoSangre)

);

--TABLA TIPOS DE RH

CREATE TABLE Tipo_RH
(
ID_TipoRH VARCHAR(8) NOT NULL,
NombreRH VARCHAR(8) NOT NULL

PRIMARY KEY (ID_TipoRH)

);

--TABLA PACIENTE

CREATE TABLE Paciente
(
ID_Paciente VARCHAR(6) NOT NULL,
Nombres_Paciente VARCHAR(60) NOT NULL,
Apellidos_Paciente VARCHAR(60) NOT NULL,
Genero_Paciente VARCHAR(10) NOt NULL,
Edad_Paciente INT NOT NULL,
Tipo_SangrePaciente VARCHAR(8) NOT NULL,
RH_Paciente VARCHAR(8) NOT NULL

PRIMARY KEY(ID_Paciente)

FOREIGN KEY (Tipo_SangrePaciente) REFERENCES Tipos_Sangre(ID_TipoSangre),
FOREIGN KEY (RH_Paciente) REFERENCES Tipo_RH(ID_TipoRH)
);


