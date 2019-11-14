-- SQL. SINTAXES BÁSICAS
-- ===================

-- 0A)  Comentários:

-- Comentário de 1 linha

/*
Comentário de várias linhas
*/


-- 0B) Executar comandos no SSMS (SQL Server Management Studio)
/*
Para executar os comandos, selecionar as linhas do script que você quer executar e clicar no botão "executar" ou então teclar F5.
Se nenhum script estiver selecionado, o SMSS vai executar todos os scripts em ordem.
*/


-- 1) Entrar em um banco de dados:

USE [BancoDeDados]  --  É necessário sempre entrar em um banco de dados via USE para executar os comandos no BD. É possível selecionar o BD também via seletor no SSMS.


-- 2) SELECT:

-- Select básico:
SELECT * FROM [Tabela]  -- Traz todas as linhas de todas as colunas da Tabela.

SELECT [Coluna1, Coluna2, Coluna3 (...)] FROM [Tabela] -- Traz todas as linhas das Colunas especificadas (separadas por vírgula) da Tabela.

SELECT [Coluna3, Coluna1, Coluna2] FROM [Tabela] -- Igual ao anterior, mas mudando a ordem de exibição das Colunas da Tabela no Result Set.


-- Select com TOP:
SELECT TOP 20 * FROM [Tabela]  -- Traz as primeiras 20 linhas de todas as colunas da tabela.

SELECT TOP 20 [Coluna1, Coluna2, Coluna3 (...)] FROM [Tabela] -- Igual ao anterior, mas trazendo apenas as colunas especificadas (separadas por vírgula) da Tabela.

SELECT TOP 10 PERCENT * FROM [Tabela] -- O "PERCENT" traz a porcentagem de linhas especificadas da Tabela.

SELECT TOP 10 PERCENT [Coluna1, Coluna2, Coluna3 (...)] FROM [Tabela] -- Igual ao anterior, mas trazendo apenas as colunas especificadas da Tabela.


-- SELECT com ORDER BY:
-- O SELECT só vai trazer as linhas por ordem de PK. Para ordenar as linhas de outra forma, é necessário usar ORDER BY.

SELECT * FROM [Tabela]
ORDER BY [Coluna] <ASC/DESC> -- Ordena pela Coluna especificada. O "ASC" (para trazer em ordem ascendente) é opcional, já que o ORDER BY traz dados crescentes por padrão. Para trazer em ordem decrescente,  é necessário ter o DESC. Ex:

SELECT * FROM [Tabela]
ORDER BY [Coluna] DESC


-- 2) SINTAXE DE <INNER> JOINS:	
	
-- Versão simples:
SELECT [Tabela1.Coluna1, Tabela1.Coluna2, Tabela2.coluna1] 
	FROM [Tabela1] JOIN [Tabela2]
	ON [Tabela1.ColunaFK] = [Tabela2.ColunaPK];
	
-- Versão com apelidos nas tabelas (Tabela 1 como 'A' e Tabela 2 como 'B'):
SELECT [A.Coluna1, A.Coluna2, B.Coluna1] 
	FROM [Tabela1] A JOIN [Tabela2] B
	ON [A.ColunaFK] = [B.ColunaPK];

