--Cria um novo banco de dados
CREATE DATABASE SENAI_SVIGUFU_TARDE;

--Usa as instru��es SQL no banco informado
USE SENAI_SVIGUFU_TARDE;

/*
	CREATE TABLE < NOMETABELA> Cria uma nova tabela
	IDENTITY - Auto-Incremento
	PRIMARY KEY - Define que campo ser� uma chave prim�ria
	NOT NULL - N�o aceita valores nulos
	UNIQUE - Define que o campo ter� um valor �nico, n�o pode ter valores repitidos
*/

CREATE TABLE TIPOS_EVENTOS ( 
	ID INT IDENTITY PRIMARY KEY
	,TITULO VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE INSTITUICOES (
	ID INT IDENTITY PRIMARY KEY
	,RAZAO_SOCIAL VARCHAR(255) NOT NULL
	,NOME_FANTASIA VARCHAR(255)	 
	,CNPJ CHAR(14) NOT NULL UNIQUE
	,LOGRADOURO VARCHAR(255) NOT NULL
	,CEP CHAR(8) NOT NULL
	,UR CHAR(2) NOT NULL
	,CIDADE VARCHAR (255) NOT NULL
);

/*
Padr�o do VARCHAR � NULL
VARCHAR - Ocupa somente o espa�o preenchido
CHAR - Ocupa todo o espa�o definido
*/

CREATE TABLE EVENTOS (
	ID INT IDENTITY PRIMARY KEY
	,TITULO VARCHAR (255) NOT NULL
	,DESCRICAO TEXT -- para campos com grande quantidade de dados
	,DATA_EVENTO DATETIME NOT NULL -- campos do tipo data e hora
	,ACESSO_LIVRE BIT DEFAULT (1) -- 0 � padr�o // 0 false 1 true
	,ID_TIPO_EVENTO INT
	,ID_INSTITUICAO INT
	--Cria uma chave estrangeira e define que o campo est� relacionado a tabela(campo)
	,FOREIGN KEY (ID_TIPO_EVENTO) REFERENCES TIPOS_EVENTOS (ID)
	,FOREIGN KEY (ID_INSTITUICAO) REFERENCES INSTITUICOES (ID)
);

CREATE TABLE USUARIOS (
	ID INT IDENTITY PRIMARY KEY
	,NOME VARCHAR (255) NOT NULL
	,EMAIL VARCHAR (250) NOT NULL UNIQUE
	,SENHA VARCHAR (100) NOT NULL
	,TIPO_USUARIO VARCHAR (100) NOT NULL
);

CREATE TABLE CONVITES (
	ID INT IDENTITY PRIMARY KEY
	,ID_USUARIO INT FOREIGN KEY REFERENCES USUARIOS(ID)
	,ID_EVENTO INT FOREIGN KEY REFERENCES EVENTOS (ID)
	,SITUACAO CHAR (1)
);