-- INICIAR TRANSAÇÃO

BEGIN TRAN;

CREATE TABLE #tmp_Estados (
	cdEstado INT IDENTITY (1,1),
	nmEstado VARCHAR (30),
	nmSigla VARCHAR (2)

);

-- Inserir os dados dos estados na tabela temporaria

INSERT INTO #tmp_Estados (nmEstado)
SELECT DISTINCT nmEstado FROM tb_Clientes ORDER BY nmEstado;

-- tratamento dos dados


-- update na sigla

UPDATE #tmp_Estados SET nmSigla = 'SP' WHERE nmEstado = 'São Paulo'

SET IDENTITY_INSERT tb_Estados ON; -- Insere na coluna de identity

--inserindo na tabela de estados
INSERT INTO tb_Estados (cdEstado, nmEstado, nmSigla)
SELECT cdEstado, nmEstado, nmSigla FROM #tmp_Estados


-- SELECT * FROM #tmp_Estados
-- SELECT * FROM tb_Estados
DROP TABLE #tmp_Estados


SET IDENTITY_INSERT tb_Estados OFF;

ROLLBACK TRAN;
-- COMMIT TRAN;

