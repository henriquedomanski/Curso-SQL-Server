/*Criando tabelas temporarias*/

-- Metodo 1
CREATE TABLE #tmp_Dados (
	nome VARCHAR (50) NULL,
	idade INT


);


INSERT INTO #tmp_Dados (nome, idade) VALUES ('Jailson Dias', 25);


SELECT * FROM #tmp_Dados


--Metodo 2
  SELECT *
  INTO #tmp_Cidades
  FROM tb_Cidades

  SELECT * from #tmp_Cidades

  DROP TABLE #tmp_Cidades
  DROP TABLE #tmp_Dados