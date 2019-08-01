INSERT INTO dbLojaHenrique.dbo.tb_Estados (nmSigla, nmEstado ) VALUES
  ('AC', 'Acre'),
  ('AL', 'Alagoas'),
  ('AP', 'Amap�'),
  ('AM', 'Amazonas'),
  ('BA', 'Bahia'),
  ('CE', 'Cear�'),
  ('DF', 'Distrito Federal'),
  ('ES', 'Esp�rito Santo'),
  ('GO', 'Goi�s'),
  ('MA', 'Maranh�o'),
  ('MT', 'Mato Grosso'),
  ('MS', 'Mato Grosso do Sul'),
  ('MG', 'Minas Gerais'),
  ('PA', 'Par�'),
  ('PE', 'Pernambuco'),
  ('PI', 'Piau�'),
  ('RJ', 'Rio de Janeiro'),
  ('RN', 'Rio Grande do Norte'),
  ('RS', 'Rio Grande do Sul'),
  ('RO', 'Rond�nia'),
  ('RR', 'Roraima'),
  ('SC', 'Santa Catarina'),
  ('SP', 'S�o Paulo'),
  ('SE', 'Sergipe'),
  ('TO', 'Tocantins');


  INSERT INTO tb_Produtos(nmProduto, vlProduto) VALUES 
  ('Suco de Morango', 4.0), 
  ('Suco de Macho', 5.0),
  ('Suco de Tamarindo', 4.0),
  ('Coxinha', 3.5),
  ('X-Beico', 6.12),
  ('X-Gordo Safado', 11.9),
  ('Infartinho', 10),
  ('Ai, que del�cia!', 9.90),
  ('X-Paulo Guina', 5.5),
  ('Por��o de Pe�a que Voc� Queria', 15.0),
  ('Sorvete Sweet Dreams', 20.0),
  ('Refrigerante Lata', 4.5),
  ('P�um de Batatah', 6.0),
  ('Refrigerante 2L', 8.0),
  ('Bala Juquinha', 0.5);


  INSERT INTO tb_Vendas (idCliente, dtVenda) VALUES (1, GETDATE());