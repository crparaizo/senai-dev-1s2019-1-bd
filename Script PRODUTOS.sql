CREATE DATABASE SENAI_PRODUTOS;

USE SENAI_PRODUTOS;

CREATE TABLE PRODUTOS (
	ID INT IDENTITY PRIMARY KEY
	,NOME VARCHAR (255) NOT NULL UNIQUE
	,DESCRICAO VARCHAR (255) NOT NULL
)