-- soma dos valores

SELECT * FROM tb_ProdutoVenda;

SELECT * FROM tb_Produtos;

-- seleção dos dados com valores

SELECT P.idProduto, P.nmProduto, PV.qtProduto, P.vlProduto  
FROM tb_Produtos P INNER JOIN tb_ProdutoVenda PV
ON P.idProduto = PV.idProduto;