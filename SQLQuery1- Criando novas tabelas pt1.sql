CREATE TABLE tb_Endereco (
	idEndereco INT NOT NULL PRIMARY KEY IDENTITY (1,1),
	nmEndereco VARCHAR (50) NOT NULL,
	nmCEP VARCHAR (9),
	idCidade INT NOT NULL

)


CREATE TABLE tb_Cidades (
	idCidade INT NOT NULL PRIMARY KEY IDENTITY (1,1),
	nmCidade VARCHAR (50) NOT NULL,
	idEstado INT NOT NULL

)


CREATE TABLE tb_Estados (
	idEstados INT NOT NULL PRIMARY KEY IDENTITY (1,1),
	nmEstado VARCHAR(30) NOT NULL,
	nmSigla VARCHAR (2) NOT NULL


)



ALTER TABLE tb_Enderecos
ADD CONSTRAINT FK_Enderecos_Cidades
FOREIGN KEY (idCidade)
REFERENCES tb_Cidades (idCidade);

ALTER TABLE tb_Cidades
ADD CONSTRAINT FK_Cidades_Estados
FOREIGN KEY (idEstado)
REFERENCES tb_Estados (idEstado);