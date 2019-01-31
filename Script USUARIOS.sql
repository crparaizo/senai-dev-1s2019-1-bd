CREATE DATABASE SENAI_DDL_REVISAO_TARDE;

--Usa banco revis�o tarde
USE SENAI_DDL_REVISAO_TARDE;

--Cria uma tabela usu�rios
CREATE TABLE USUARIOS (
	--Define que o id ser� do tipo int, auto incremento e chave prim�ria
	ID INT IDENTITY PRIMARY KEY
	--Varchar: char v�riavel
	--Define que a coluna email ret� at� 250 caracteres, n�o pode ser nulo e seu valor deve ser �nico
	,EMAIL VARCHAR (250) NOT NULL UNIQUE
	,SENHA VARCHAR (100) NOT NULL
);

--Adiciona o campo nome da tabela usu�rios
ALTER TABLE USUARIOS
ADD NOME VARCHAR (200)

--Adiciona o campo ativo na tabela usu�rios
ALTER TABLE USUARIOS
ADD ATIVO BIT

--Exclui a coluna nome da tabela usu�rios
ALTER TABLE USUARIOS
DROP COLUMN NOME

--Exclui a tabela usu�rios
DROP TABLE USUARIOS
