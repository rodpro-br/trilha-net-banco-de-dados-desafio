--Exercicio 1
SELECT 
	Nome, Ano 
FROM 
	Filmes

--Exercicio 2
SELECT 
	Nome, 
	Ano, 
	Duracao 
FROM 
	Filmes 
ORDER BY 
	Ano

--Exercicio 3
SELECT 
	Nome, 
	Ano, 
	Duracao 
FROM 
	Filmes 
WHERE 
	Id = 28

--Exercicio 4
SELECT 
	Nome, 
	Ano, 
	Duracao 
FROM 
	Filmes 
WHERE 
	Ano = 1997

--Exercicio 5
SELECT 
	Nome, 
	Ano, 
	Duracao 
FROM 
	Filmes 
WHERE 
	Ano > 2000

--Exercicio 6
SELECT 
	Nome, 
	Ano, 
	Duracao 
FROM 
	Filmes 
WHERE 
	Duracao > 100 
	AND Duracao < 150 
ORDER BY 
	Duracao

--Exercicio 7
SELECT 
	Ano, 
	COUNT(*) Quantidade 
FROM 
	Filmes 
GROUP BY 
	Ano 
ORDER BY 
	Quantidade DESC

--Exercicio 8
SELECT 
	Id, 
	PrimeiroNome, 
	UltimoNome, 
	Genero 
FROM 
	Atores 
WHERE 
	Genero = 'M'

--Exercicio 9
SELECT 
	Id, 
	PrimeiroNome, 
	UltimoNome, 
	Genero 
FROM 
	Atores 
WHERE 
	Genero = 'F' 
ORDER BY 
	PrimeiroNome

--Exercicio 10
SELECT 
	F.Nome,
	G.Genero
FROM
	Filmes F
	INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme
	INNER JOIN Generos G ON G.Id = FG.IdGenero

--Exercicio 11
SELECT 
	F.Nome,
	G.Genero
FROM
	Filmes F
	INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme
	INNER JOIN Generos G ON G.Id = FG.IdGenero
WHERE 
	G.Id = 10

--Exercicio 12
SELECT 
	F.Nome,
	A.PrimeiroNome,
	A.UltimoNome,
	EF.Papel
FROM
	Filmes F
	INNER JOIN ElencoFilme EF ON F.Id = EF.IdFilme
	INNER JOIN Atores A ON EF.IdAtor = A.Id
