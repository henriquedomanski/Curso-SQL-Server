SELECT AVG(vlProduto) FROM tb_Produtos--media

SELECT STDEV (vlProduto) FROM tb_Produtos --desvio padrao


-- Z Score é o valor que estou verificando menos a media mostral dividido pelo desvio padrão
--Calcular Z_Score:
SELECT  nmProduto, vlProduto, Calc.Media, Calc.DesvioPadrao, (vlProduto - Calc.Media) / Calc.DesvioPadrao as Z_Score
FROM tb_Produtos, (
SELECT  AVG (vlProduto) as Media,  
STDEV (vlProduto) as DesvioPadrao
FROM tb_Produtos) Calc
