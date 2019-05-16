/*

Loja de sucos do Henrique

* Vende sucos (principalmente laranja)

* Dados dos clientes:
	Nome (txt)
	nascimento (date)
	sexo (numero)
	endereco:
		rua (txt)
		cidade (txt)
		estado (txt)
	Telefones (txt)

* dados das vendas:
	numero da venda (numero)
	clente que comprou (txt)
	preco total (numero)

* dados do produto
	nome (txt)
	preço (numero)

*/



--Aula 4 - Criando tabelas pt1
CREATE TABLE tb_Produto (
	idProduto INT PRIMARY KEY IDENTITY (1,1), --PrimaryKey para identificar produto unico, identity= coxinha N1, SUCOLARANJA N2 etc
	nmProduto VARCHAR(50) NOT NULL , --obrigatorio, nao recebe valor nulo
	vlProduto DECIMAL (6,2) NOT NULL --maximo 6 valores e duas virgulas

);



--Aula 5- Criando tabelas pt2

CREATE TABLE tb_Clientes (
	idCliente INT PRIMARY KEY IDENTITY (1,1)
	nmCliente VARCHAR (50) NOT NULL , --nome do cliente
	dtNascimento DATE, -- modelo para data de nascimento
	tpSexo VARCHAR (1) NOT NULL, --sexo M OU F
	nmEndereco VARCHAR (50), 
	nmCidade VARCHAR (50), 
	nmEstado VARCHAR (30),
	nmTelefone1 VARCHAR (15),
	nmTelefone2 VARCHAR (15) 


);

--Aula 6 - teoria banco relacional
--Aula 7 - Criando Chaves primárias -> Primeira linha Aula4 e 5 IDPRODUTO E IDCLIENTE







