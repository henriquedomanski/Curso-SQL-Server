-- Migrar cidades para a tabela tb_Cidades

BEGIN TRAN; -- Iniciar a transação

CREATE TABLE #tmp_Cidades (
	idCidade INT IDENTITY (1,1),
	nmCidade VARCHAR (50),
	idEstado INT
);

--Inserir os dados das cidades na tabela temp

INSERT INTO #tmp_Cidades (nmCidade)
SELECT DISTINCT nmCidade FROM tb_Clientes ORDER BY nmCidade;

-- tratamento de dados

-- UPDATE DA SIGLA DO ESTADO

--mais complicado (update com join)
BEGIN TRAN;

UPDATE TC 
SET TC.idEstado = E.idEstado 
FROM #tmp_Cidades TC
INNER JOIN tb_Clientes T ON TC.nmCidade = T.nmCidade
INNER JOIN tb_Estados E ON T.nmEstado = E.nmEstado



SELECT DISTINCT E.idEstado, C.nmCidade FROM tb_Estados  E 
INNER JOIN tb_Clientes C ON E.nmEstado = C.nmEstado 



--SELECT * FROM #tmp_Cidades
ROLLBACK TRAN;
--COMMIT TRAN;

SELECT * FROM tb_Clientes;