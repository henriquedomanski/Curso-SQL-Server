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
SELECT * FROM tb_Estados  E 
INNER JOIN tb_Clientes C ON E.nmEstado = C.nmEstado 

ROLLBACK TRAN;
--COMMIT TRAN;

SELECT * FROM tb_Clientes;