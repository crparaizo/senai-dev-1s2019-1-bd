USE SENAI_HCURSOS_TARDE;

--Insere um novo registro na linha passando as colunas e valores
INSERT INTO CATEGORIAS (NOME)
VALUES ('Desenvolvimento')

--Insere um novo registro pela ordem das colunas
INSERT INTO CATEGORIAS
VALUES ('Inform�tica')

INSERT INTO CATEGORIAS (NOME)
VALUES ('Design'),('Marketing')

----------

--Seleciona campoS tabela categorias
--Lista todos os registros e campos da tabela categorias
SELECT * FROM CATEGORIAS

--Lista todos os regitros somente o campo "nome" da tabela "categorias"
SELECT NOME FROM CATEGORIAS
SELECT NOME AS LARANJA FROM CATEGORIAS

--Ordena pelo campo ID em ordem crescente
SELECT * FROM CATEGORIAS ORDER BY ID ASC
--Ordena pelo campo Nome em ordem decrescente
SELECT * FROM CATEGORIAS ORDER BY NOME DESC


--Filtrando pelo Id
SELECT * FROM CATEGORIAS WHERE ID = 3

SELECT * FROM CATEGORIAS WHERE ID = 4 AND ID = 1

SELECT * FROM CATEGORIAS WHERE ID = 4 OR ID = 1

--like == contains, cont�m
SELECT * FROM CATEGORIAS WHERE NOME LIKE '%e%'
SELECT * FROM CATEGORIAS WHERE NOME LIKE 'D%'
SELECT * FROM CATEGORIAS WHERE NOME LIKE '%a'

----------

SELECT * FROM CATEGORIAS WHERE ID >= 2
SELECT * FROM CATEGORIAS WHERE ID >= 2 AND ID < 5
SELECT * FROM CATEGORIAS WHERE ID BETWEEN 2 AND 5 --Inclui o 2 e o 7 // == "ID BETWEEN 3 AND 4"
SELECT * FROM CATEGORIAS WHERE ID = 3 OR ID = 4 OR ID = 5
SELECT * FROM CATEGORIAS WHERE ID IN (1,3,5) AND NOME LIKE 'D%'

--Filtrar pelas duas linhas
SELECT TOP 2 * FROM CATEGORIAS --primeiras
SELECT TOP 2 * FROM CATEGORIAS ORDER BY ID DESC --�ltimas

SELECT COUNT (*) FROM CATEGORIAS
SELECT COUNT (*) AS QUANTIDADE_TOTAL_REGISTRO FROM CATEGORIAS

--Filtrar todos os registro menos o "3"
SELECT * FROM CATEGORIAS WHERE NOT ID = 3
SELECT * FROM CATEGORIAS WHERE ID <> 3

----------

UPDATE CATEGORIAS SET NOME = 'Outros' WHERE ID = 4

----------

DELETE FROM CATEGORIAS WHERE ID = 4


----------ATIVIDADE COM A TABELA "ALUNOS"----------

INSERT INTO ALUNOS (NOME)
VALUES ('C�ndida'),('Eryk'),('Jo�o'),('Paloma'),('Aline'),('Gabriel')

-- '*' serve para incluir todos os campos

SELECT * FROM ALUNOS

SELECT * FROM ALUNOS WHERE NOME LIKE '%i%'

SELECT * FROM ALUNOS WHERE NOME LIKE 'C%'

SELECT * FROM ALUNOS WHERE NOME LIKE '%a' OR NOME LIKE '%o'

SELECT * FROM ALUNOS WHERE ID BETWEEN 3 AND 5

SELECT * FROM ALUNOS ORDER BY NOME ASC

SELECT COUNT (*) AS QUANTIDADE FROM ALUNOS

UPDATE ALUNOS SET NOME = 'Gabriel Iwazazki' WHERE ID = 6
--UPDATE ALUNOS SET NOME = 'Gabriel Iwazazki' WHERE NOME = 'Gabriel'

DELETE FROM ALUNOS WHERE ID = 3
