--1
SELECT
	Nome,
	Ano
FROM
	Filmes

--2
SELECT
	Nome,
	Ano,
	Duracao
FROM
	Filmes
ORDER BY Ano

--3
SELECT
	Nome,
	Ano,
	Duracao
FROM
	Filmes 
WHERE
	Nome LIKE 'De Volta para%'

--4
SELECT
	Nome,
	Ano,
	Duracao
FROM
	Filmes 
WHERE
	Ano =  1997

--5
SELECT
	Nome,
	Ano,
	Duracao
FROM
	Filmes 
WHERE
	Ano > 2000

--6
SELECT
	Nome,
	Ano,
	Duracao
FROM
	Filmes 
WHERE
	Duracao > 100 AND Duracao < 150
ORDER BY Duracao 

--7
SELECT 
	Ano, 
	COUNT(Duracao) AS Quantidade
FROM	
	Filmes
GROUP BY Ano
ORDER BY SUM(Duracao) DESC

--8
SELECT * 
FROM
	Atores
WHERE
	Genero = 'M'

--9
SELECT * 
FROM
	Atores
WHERE
	Genero = 'F'
ORDER BY PrimeiroNome

--10
SELECT
	F.Nome,
	G.Genero
FROM
	Filmes AS F
INNER JOIN FilmesGenero AS FG ON FG.IdFilme = F.Id
INNER JOIN Generos AS G ON G.Id = FG.IdGenero

--11
SELECT
	F.Nome,
	G.Genero
FROM
	Filmes AS F
INNER JOIN FilmesGenero AS FG ON FG.IdFilme = F.Id
INNER JOIN Generos AS G ON G.Id = FG.IdGenero
WHERE G.Genero = 'Mist�rio'

--12
SELECT
	F.Nome,
	A.PrimeiroNome,
	A.UltimoNome,
	E.Papel
FROM
	Filmes as F
INNER JOIN Atores AS A ON A.Id = F.Id
INNER JOIN ElencoFilme AS E ON E.Id = A.Id