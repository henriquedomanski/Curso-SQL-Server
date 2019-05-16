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


CREATE TABLE tb_DadosProduto (
	nProduto VARCHAR(50) NOT NULL , --obrigatorio, nao recebe valor nulo
	vlProduto DECIMAL (6,2) NOT NULL --maximo 6 valores e duas virgulas

);


