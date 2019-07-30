--DROP TABLE tb_ClientesBackup;

CREATE TABLE tb_Clientes_Hist (
	idClientes_Hist INT NOT NULL IDENTITY (1,1) PRIMARY KEY,
	idCliente INT NOT NULL,
	nmCliente VARCHAR (50),
	dtNascimento DATE NULL,
	tpSexo VARCHAR (1) NULL,
	nmTelefone1 

);

