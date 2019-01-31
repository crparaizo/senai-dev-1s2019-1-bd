CREATE DATABASE SENAI_DDL_REVISAO_TARDE;

--Usa banco revisão tarde
USE SENAI_DDL_REVISAO_TARDE;

--Cria uma tabela usuários
CREATE TABLE USUARIOS (
	--Define que o id será do tipo int, auto incremento e chave primária
	ID INT IDENTITY PRIMARY KEY
	--Varchar: char váriavel
	--Define que a coluna email retá até 250 caracteres, não pode ser nulo e seu valor deve ser único
	,EMAIL VARCHAR (250) NOT NULL UNIQUE
	,SENHA VARCHAR (100) NOT NULL
);

--Adiciona o campo nome da tabela usuários
ALTER TABLE USUARIOS
ADD NOME VARCHAR (200)

--Adiciona o campo ativo na tabela usuários
ALTER TABLE USUARIOS
ADD ATIVO BIT

--Exclui a coluna nome da tabela usuários
ALTER TABLE USUARIOS
DROP COLUMN NOME

--Exclui a tabela usuários
DROP TABLE USUARIOS
