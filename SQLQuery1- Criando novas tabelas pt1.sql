CREATE TABLE tb_Endereco {
	idEndereco INT NOTNULL PRIMARY KEY IDENTITY (1,1),
	nmEndereco VARCHAR (50) NOT NULL,
	nmCEP VARCHAR (9)

}


CREATE TABLE tb_Cidades {
	idCidade INT NOT NULL PRIMARY KEY IDENTITY (1,1),
	nmCidade VARCHAR (50) NOT NULL


}


CREATE TABLE tb_Estados {
	idEstados INT NOT NULL PRIMARY KEY IDENTITY (1,1),
	nmEstado VARCHAR(30) NOT NULL,
	nmSigla VARCHAR (2) NOT NULL


}