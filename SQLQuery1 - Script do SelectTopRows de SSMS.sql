/* Script do comando SelectTopRows de SSMS */
SELECT TOP 1000 [idCliente]
		,[nmCliente]
		,[dtNascimento]
		,[tpSexo]
		,[nmEndereco]
		,[nmCidade]
		,[nmEstado]
		,[nmTelefone1]
		,[nmTelefone2]
	FROM [dbLojaHenrique].[dbo].[tb_ClientesBackup]


	CREATE TABLE #tmp_Estados (
		nmEstado VARCHAR (30),
		nmSigla VARCHAR (2)
	
	);

	


-- inserir os dados dos estados na tabela temporaria

INSERT INTO #tmp_Estados (nmEstado)
SELECT DISTINCT nmEstado FROM tb_ClientesBackup


SELECT * FROM #tmp_Estados

-- update na sigla

UPDATE #tmp_Estados SET nmSigla = 'SP' WHERE nmEstado =  'São Paulo';

--DELETE FROM #tmp_Estados WHERE nmEstado = 'São Paulo';