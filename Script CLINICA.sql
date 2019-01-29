CREATE DATABASE CLINICA_PET_TARDE;

USE CLINICA_PET_TARDE;

CREATE TABLE CLINICAS (
	ID INT IDENTITY PRIMARY KEY 
	,NOME VARCHAR (255) NOT NULL
	,ENDERE�O VARCHAR (255) NOT NULL
);

CREATE TABLE TIPO_PET (
	ID INT IDENTITY PRIMARY KEY
	,DESCRICAO TEXT NOT NULL
);

CREATE TABLE RACAS (
	ID INT IDENTITY PRIMARY KEY
	,DESCRICAO VARCHAR (255) NOT NULL
	,ID_TIPO_PET INT FOREIGN KEY REFERENCES TIPO_PET(ID)
);


CREATE TABLE DONOS (
	ID INT IDENTITY PRIMARY KEY
	,NOME VARCHAR (255) NOT NULL
);

CREATE TABLE PETS (
	ID INT IDENTITY PRIMARY KEY
	,NOME VARCHAR (255) NOT NULL
	,DATA_NASCIMENTO DATETIME NOT NULL
	,ID_RACA INT FOREIGN KEY REFERENCES RACAS(ID)
	,ID_DONO INT FOREIGN KEY REFERENCES DONOS(ID)
);

CREATE TABLE VETERINARIOS (
	ID INT IDENTITY PRIMARY KEY
	,CRV INT NOT NULL UNIQUE
	,NOME VARCHAR (255) NOT NULL
	,ID_CLINICA INT FOREIGN KEY REFERENCES CLINICAS(ID)
);

CREATE TABLE ATENDIMENTOS (
	ID INT IDENTITY PRIMARY KEY
	,ID_PET INT FOREIGN KEY REFERENCES PETS(ID)
	,ID_VET INT FOREIGN KEY REFERENCES VETERINARIOS (ID)
	,DESCRICAO TEXT NOT NULL
	,DATA_ATENDIMENTO DATETIME NOT NULL
);