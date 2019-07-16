-- soma dos valores

SELECT * FROM tb_ProdutoVenda;

SELECT * FROM tb_Produtos;

-- seleção dos dados com valores
SELECT V.idVenda, C.nmCliente, P.idProduto, P.nmProduto, PV.qtProduto, P.vlProduto, qtProduto * vlProduto AS qtValorTotalProduto, 
TOTAL_VENDAS.qtTotalProdutos, TOTAL_VENDAS.qtValorTotalVenda
FROM tb_Produtos P INNER JOIN tb_ProdutoVenda PV ON P.idProduto = PV.idProduto
INNER JOIN tb_Vendas V ON PV.idVenda = V.idVenda
INNER JOIN tb_Clientes C ON V.idCliente = C.idCliente
INNER JOIN (
	SELECT V.idVenda, SUM (PV.qtProduto) qtTotalProdutos, SUM (P.vlProduto*PV.qtProduto) AS qtValorTotalVenda --P.vlProduto, qtProduto * vlProduto AS qtValorTotalProduto
	FROM tb_Produtos P INNER JOIN tb_ProdutoVenda PV ON P.idProduto = PV.idProduto
	INNER JOIN tb_Vendas V ON PV.idVenda = V.idVenda
	GROUP BY V.idVenda

)TOTAL_VENDAS ON V.idVenda = TOTAL_VENDAS.idVenda
