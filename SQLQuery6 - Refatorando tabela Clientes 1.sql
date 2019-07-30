

/*CREATE TABLE tb_TelefoneCliente (
	idTelefone INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	idCliente INT NOT NULL,
	nmTelefone VARCHAR (15) NOT NULL,
	inAtivoSN VARCHAR (1) NOT NULL DEFAULT 'S'

);
*/
ALTER TABLE tb_TelefoneCliente
ADD CONSTRAINT FK_TelefoneCliente_Cliente
FOREIGN KEY (idCliente) REFERENCES tb_Clientes (idCliente)

SELECT * FROM tb_Clientes;