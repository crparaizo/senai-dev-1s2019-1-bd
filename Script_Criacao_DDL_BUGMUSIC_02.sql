USE BUGMUSIC_TARDE;

INSERT INTO GENEROS 
VALUES ('Rock'),('Sertanejo'),('Pop')

INSERT INTO BANDAS (NOME, ID_GENERO)
VALUES ('Ultraje a Rigor', '1')
		,('Fernando e Sorocaba', '2')
		,('Bar�o Vermelho', '3')

INSERT INTO ALBUNS (NOME, ID_BANDAS)
VALUES ('Recome�o', '1')
		,('Vendaval', '2')
		,('Maior Abandonado', '3')

INSERT MUSICAS (NOME, ID_ALBUM)
VALUES ('In�til', '1')
		,('Mim Qual', '2')
		,('Paga Pau', '2')
		,('Baby Suporte', '3')
		,('Sem Querer Tocar', '1')
		,('Vendavagonha', '3')

INSERT CANTORES (NOME)
VALUES ('Roger Moreira')
		,('Mingau')
		,('Bacalhau')
		,('Marcos Kleine')
		,('Fernando Zorzanello Bonif�cio')
		,('Fernando Fakri de Assis')
		,('Guto Goffi')
		,('Maur�cio Barros')
		,('Fernando Magalh�es')

INSERT BANDAS_CANTORES (ID_CANTOR, ID_BANDA)
VALUES ('1','1')
		,('3','1')
		,('2','1')
		,('4','1')
		,('5','2')
		,('6','2')
		,('7','3')
		,('8','3')
		,('9','3')

-----VISUALIZA��O-----
SELECT * FROM GENEROS
SELECT * FROM BANDAS
SELECT * FROM ALBUNS
SELECT * FROM MUSICAS
SELECT * FROM CANTORES
SELECT * FROM BANDAS_CANTORES

