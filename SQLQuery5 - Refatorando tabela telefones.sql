/*DROP TABLE tb_ClientesBackup;

CREATE TABLE tb_Clientes_Hist (
	idClientes_Hist INT NOT NULL IDENTITY (1,1) PRIMARY KEY,
	idCliente INT NOT NULL,
	nmCliente VARCHAR (50),
	dtNascimento DATE NULL,
	tpSexo VARCHAR (1) NULL,
	idEndereco INT NULL,
	dtInclusao DATETIME

);*/

/*CREATE TRIGGER tr_Backup_Clientes
ON tb_Clientes
FOR UPDATE 
AS
	INSERT INTO tb_Clientes_Hist (idCliente, nmCliente,  dtNascimento, tpSexo, idEndereco, dtInclusao) 
	SELECT  idCliente, nmCliente,  dtNascimento, tpSexo, idEndereco, GETDATE() FROM deleted;*/


SELECT * FROM tb_Clientes
SELECT * FROM tb_Clientes_Hist;

BEGIN TRAN; UPDATE tb_Clientes SET nmCliente = 'Jailson' WHERE idCliente = 1; 

COMMIT TRAN;
