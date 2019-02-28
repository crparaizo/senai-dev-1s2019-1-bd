USE InLock_Games_Tarde;

SELECT * FROM Usuarios
SELECT * FROM Estudios
SELECT * FROM Jogos

SELECT NomeJogo, Descricao, DataLancamento, Valor, NomeEstudio FROM Jogos
INNER JOIN
Estudios
ON
Jogos.EstudioId = Estudios.EstudioId

SELECT * FROM Estudios
LEFT JOIN 
Jogos
ON
Jogos.EstudioId = Estudios.EstudioId

SELECT * FROM Usuarios where Email = 'admin@admin.com' AND Senha = 'admin'

SELECT * FROM Jogos where JogoId = 1
SELECT * FROM Jogos where JogoId = 2

SELECT * FROM Estudios where EstudioId = 1
SELECT * FROM Estudios where EstudioId = 2
SELECT * FROM Estudios where EstudioId = 3