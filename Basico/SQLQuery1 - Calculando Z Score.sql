/*SELECT AVG(vlProduto) FROM tb_Produtos--media

SELECT STDEV (vlProduto) FROM tb_Produtos --desvio padrao
*/

-- Z Score é o valor que estou verificando menos a media mostral dividido pelo desvio padrão
--Calcular Z_Score:

/*SELECT  nmProduto, vlProduto, Calc.Media, Calc.DesvioPadrao, (vlProduto - Calc.Media) / Calc.DesvioPadrao as Z_Score
FROM tb_Produtos, (
SELECT  AVG (vlProduto) as Media,  
STDEV (vlProduto) as DesvioPadrao
FROM tb_Produtos) Calc*/

/*
SELECT nmProduto, vlProduto,
	AVG (vlProduto) OVER() as Media,
	STDEV (vlProduto) OVER() as DesvioPadrao
	
FROM
	tb_Produtos
*/


--Usando a função rank

SELECT
	nmProduto,
	vlProduto,
	Posicao
FROM (
	SELECT 
		nmProduto,
		vlProduto,
		RANK() OVER(ORDER BY vlProduto desc) as Posicao
FROM 
	tb_Produtos
	) Dados
WHERE 
	Posicao BETWEEN 5 and 10