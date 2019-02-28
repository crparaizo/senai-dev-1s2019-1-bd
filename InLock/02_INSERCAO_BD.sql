USE InLock_Games_Tarde;

INSERT INTO Usuarios (Email, Senha, TipoUsuario)
VALUES ('admin@admin.com','admin','ADMINISTRADOR'),
		('cliente@cliente.com','cliente','CLIENTE')

SELECT * FROM Usuarios

INSERT INTO Estudios (NomeEstudio)
VALUES	('Blizzard')
		,('Rockstar Studios')
		,('Square Enix')

SELECT * FROM Estudios

INSERT INTO Jogos (NomeJogo, Descricao, DataLancamento, Valor, EstudioId)
VALUES ('Diablo 3','� um jogo que cont�m bastante a��o e � viciante, seja voc� um novato ou f�.','15/05/2012',99.00,1),
		('Red Dead Redemption II','Jogo eletr�nico de a��o-aventura western.','26/10/2018',120.00,2)

SELECT * FROM Jogos

--DELETAR:
DELETE FROM Jogos
DBCC CHECKIDENT('Jogos', RESEED, 0)