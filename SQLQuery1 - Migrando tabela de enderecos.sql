SELECT * FROM tb_Clientes
SELECT * FROM tb_Cidades
SELECT * FROM tb_Enderecos (NOLOCK)


BEGIN TRAN;


INSERT INTO tb_Enderecos (nmEndereco, idCidade)
SELECT 
	C.nmEndereco,
	CI.idCidade
FROM tb_Clientes C INNER JOIN tb_Cidades CI
ON C.nmCidade = CI.nmCidade;


ROLLBACK TRAN;
commit tran;