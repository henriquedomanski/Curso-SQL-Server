/*
	INSERT INTO tb_Clientes VALUES ('Jos� Penha', '1977-05-07', 'M', 'Rua da Mec�nica, 33', 'Campinas', 'S�o Paulo', '11 1233-4434', '11 99283-9099')
	INSERT INTO tb_Clientes VALUES ('Zequinha Muri�oca', '1988-05-07', 'M', 'Rua Jambira, 13', 'Campinas', 'S�o Paulo', '11 1584-2214', '')
	INSERT INTO tb_Clientes VALUES ('Mariazinha de L�', '1981-05-07', 'F', 'Rua Jambira, 13', 'Campinas', 'S�o Paulo', '11 1584-2214', '')
*/

select * from tb_Clientes 

SELECT *
INTO tb_ClientesBackup
FROM tb_Clientes