-- Migrar cidades para a tabela tb_cidades

BEGIN TRAN;

CREATE TABLE #tmp_Cidades(
	cdCidades INT IDENTITY (1,1),
	nmCidade VARCHAR (50),
	cdEstado INT


);


-- inseriri os dados das cidadese na tabela temporaria

INSERT INTO #tmp_Cidades (nmCidade)
SELECT DISTINCT nmCidade FROM tb_Clientes ORDER BY nmCidade




--tratamento de dados

--Update do codigo do estado


-- mais complicado (update com join)
UPDATE TC
SET TC.cdEstado = E.cdEstado
FROM #tmp_Cidades TC
INNER JOIN tb_Clientes T ON TC.nmCidade = T.nmCidade
INNER JOIN tb_Estados E ON T.nmEstado = E.nmEstado




SELECT DISTINCT E.cdEstado, C.nmCidade FROM tb_Estados E  
INNER JOIN tb_Clientes C ON E.nmEstado = C.nmEstado

SELECT * FROM #tmp_Cidades

--SELECT * FROM #tmp_Cidades

ROLLBACK TRAN;
--COMMIT TRAN;




SELECT * FROM tb_Clientes
