/*Explicando View: Uma view é uma "tabela" com uma determinada logica personalizada*/

CREATE VIEW vw_Endereco_Completo_Clientes
AS
SELECT 
	CL.idCliente,
	CL.nmCliente,
	CL.dtNascimento,
	CL.tpSexo,
	EN.idEndereco,
	EN.nmEndereco,
	EN.nmCEP,
	CI.idCidade,
	CI.nmCidade,
	E.idEstado,
	E.nmEstado,
	E.nmSigla
FROM tb_Clientes CL INNER JOIN tb_Enderecos EN ON CL.idEndereco = EN.idEndereco
INNER JOIN tb_Cidades CI ON EN.idCidade = CI.idCidade
INNER JOIN tb_Estados E ON CI.idEstado = E.idEstado;

--SELECT * FROM vw_Endereco_Completo_Clientes;


