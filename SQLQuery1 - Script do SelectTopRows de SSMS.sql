/* Script do comando SelectTopRows de SSMS */
/*SELECT TOP 1000 [idCliente]
		,[nmCliente]
		,[dtNascimento]
		,[tpSexo]
		,[nmEndereco]
		,[nmCidade]
		,[nmEstado]
		,[nmTelefone1]
		,[nmTelefone2]
	FROM [dbLojaHenrique].[dbo].[tb_ClientesBackup]
	*/

	-- Iniciar a transação
BEGIN TRAN

	CREATE TABLE #tmp_Estados (
		idEstado INT IDENTITY (1,1),
		nmEstado VARCHAR (30),
		nmSigla VARCHAR (2)
	
	);

	
	

-- inserir os dados dos estados na tabela temporaria

INSERT INTO #tmp_Estados (nmEstado)
SELECT DISTINCT nmEstado FROM tb_Clientes ORDER BY nmEstado;

-- tratamento dos dadosdasdasxsdaqweqweqweqdas



-- 


SELECT * FROM #tmp_Estados



-- update na sigla

UPDATE #tmp_Estados SET nmSigla = 'SP' WHERE nmEstado =  'São Paulo';

SET IDENTITY_INSERT tb_Estados ON; -- INSERE na coluna de identity

-- inserindo na tabela de estado

INSERT INTO tb_Estados (idEstado, nmEstado, nmSigla)
SELECT idEstado, nmEstado, nmSigla FROM #tmp_Estados;

-- SELECT  * FROM #tmp_Estado
-- SELECT * FROM tb_Estados;

--DELETE FROM #tmp_Estados WHERE nmEstado = 'Sao Paulo';


SET IDENTITY_INSERT tb_Estados OFF; 



ROLLBACK TRAN; -- remove tudo que está apartir do begin tran
--COMMIT TRAN;