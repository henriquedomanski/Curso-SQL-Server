SELECT * FROM tb_Produtos

-- Salver os duplicados
SELECT nmProduto, vlProduto
INTO #tmp_Backup
FROM tb_Produtos 
WHERE nmProduto in (
SELECT 
	nmProduto
FROM 
	tb_Produtos
GROUP BY
	nmProduto
HAVING
	COUNT(*) >=2
);

-- apagar os duplicados da base principal
BEGIN TRAN;
DELETE FROM tb_ProdutoVenda

DELETE FROM tb_Produtos WHERE nmProduto in (
SELECT 
	nmProduto
FROM 
	tb_Produtos
GROUP BY
	nmProduto
HAVING
	COUNT(*) >=2
);

-- voltar com os dados sem a duplicidade

SELECT * FROM #tmp_Backup

DELETE FROM #tmp_Backup WHERE vlProduto = 2.50

INSERT INTO tb_Produtos
SELECT * FROM tb_Produtos
ROLLBACK TRAN;
