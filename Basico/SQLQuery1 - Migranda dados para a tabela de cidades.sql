-- Migrar cidades para a tabela tb_Cidades

BEGIN TRAN; -- Iniciar a transação

CREATE TABLE #tmp_Cidades (
	idCidade INT IDENTITY (1,1),
	nmCidade VARCHAR (50),
	nmEstado VARCHAR (30),
	idEstado INT
);


--Inserir os dados das cidades na tabela temp

INSERT INTO #tmp_Cidades (nmCidade, nmEstado)
SELECT DISTINCT nmCidade, nmEstado FROM tb_Clientes ORDER BY nmCidade;

-- tratamento de dados

-- UPDATE DA SIGLA DO ESTADO

--mais complicado (update com join)
BEGIN TRAN;

/*
UPDATE TC 
SET TC.idEstado = E.idEstado 
FROM #tmp_Cidades TC
INNER JOIN tb_Clientes T ON TC.nmCidade = T.nmCidade
INNER JOIN tb_Estados E ON T.nmEstado = E.nmEstado

*/

--Mais facil:

UPDATE TC SET
TC.idEstado = E.idEstado 
FROM #tmp_Cidades TC INNER JOIN tb_Estados E
ON TC.nmEstado = E.nmEstado;


--SELECT * FROM #tmp_Cidades

SET IDENTITY_INSERT tb_Cidades ON; -- INSERE na coluna de identity

-- Inserir dados na tabela

INSERT INTO tb_Cidades (idCidade, nmCidade, idEstado)
SELECT idCidade, nmCidade, idEstado FROM #tmp_Cidades;

--SELECT * FROM tb_Cidades

DROP TABLE #tmp_Cidades



SET IDENTITY_INSERT tb_Cidades OFF;

ROLLBACK TRAN;
--COMMIT TRAN;

SELECT * FROM tb_Clientes;