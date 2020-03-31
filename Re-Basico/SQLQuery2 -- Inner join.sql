
-- Sele��o dos dados com valores

SELECT V.cdVenda, C.nmCliente, P.cdProduto, P.nmProduto, PV.qtProduto, P.vlProduto, qtProduto * vlProduto AS qtValorTotalProduto
	FROM tb_Produtos P INNER JOIN tb_ProdutoVenda PV ON P.cdProduto = PV.cdProduto
	INNER JOIN tb_Vendas V ON PV.cdVenda = V.cdVenda 
	INNER JOIN tb_Clientes C ON V.cdCliente = C.cdCliente


	--soma dos valores

/*SELECT C.nmCliente, SUM (PV.qtProduto) AS qtTotalPordutos, P.nmProduto, SUM (P.vlProduto) --, P.vlProduto, qtProduto * vlProduto AS qtValorTotalProduto
FROM tb_Produtos P INNER JOIN tb_ProdutoVenda PV ON P.cdProduto = PV.cdProduto
INNER JOIN tb_Vendas V ON PV.cdVenda = V.cdVenda 
INNER JOIN tb_Clientes C ON V.cdCliente = C.cdCliente
GROUP BY C.nmCliente, P.nmProduto */

SELECT C.nmCliente, SUM (PV.qtProduto) AS qtTotalPordutos, SUM (P.vlProduto * PV.qtProduto) AS qtValorTotalVenda --, P.vlProduto, qtProduto * vlProduto AS qtValorTotalProduto
FROM tb_Produtos P INNER JOIN tb_ProdutoVenda PV ON P.cdProduto = PV.cdProduto
INNER JOIN tb_Vendas V ON PV.cdVenda = V.cdVenda 
INNER JOIN tb_Clientes C ON V.cdCliente = C.cdCliente
GROUP BY C.nmCliente