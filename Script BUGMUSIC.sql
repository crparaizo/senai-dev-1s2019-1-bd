CREATE DATABASE BUGMUSIC_TARDE;

USE BUGMUSIC_TARDE;

CREATE TABLE GENEROS (
	ID INT IDENTITY PRIMARY KEY
	,NOME VARCHAR (255) NOT NULL UNIQUE
);

CREATE TABLE BANDAS (
	ID INT IDENTITY PRIMARY KEY
	,NOME VARCHAR (255) NOT NULL UNIQUE
	,ID_GENERO INT FOREIGN KEY REFERENCES GENEROS(ID)
);

CREATE TABLE ALBUNS (
	ID INT IDENTITY PRIMARY KEY
	,NOME VARCHAR (255) NOT NULL UNIQUE
	,ID_BANDAS INT FOREIGN KEY REFERENCES BANDAS(ID)
);

CREATE TABLE MUSICAS (
	ID INT IDENTITY PRIMARY KEY
	,NOME VARCHAR (255) NOT NULL UNIQUE
	,ID_ALBUM INT FOREIGN KEY REFERENCES ALBUNS(ID)
);

CREATE TABLE CANTORES (
	ID INT IDENTITY PRIMARY KEY
	,NOME VARCHAR (255) NOT NULL UNIQUE
);

CREATE TABLE BANDAS_CANTORES (
	ID_CANTOR INT FOREIGN KEY REFERENCES CANTORES (ID)
	,ID_BANDA INT FOREIGN KEY REFERENCES BANDAS (ID)
);