--Funcoes de tempo

-- Diferença entre Date e DateTime

--GETDATE()
SELECT GETDATE()--MOSTRA a data e hora exata

--DATEDIFF() 
SELECT DATEDIFF (YEAR, '1995-03-24' , getdate())--Ve a diferença entre duas datas

--DATEADD()
SELECT DATEADD(DAY, -1, GETDATE())--Modifica a data

--DATEPART()
SELECT DATEPART(WEEKDAY, GETDATE())--Pega por exemplo o dia da semana que estamos

--Between
SELECT * FROM tb_Vendas WHERE dtVenda BETWEEN DATEADD (YEAR, -1, GETDATE()) AND GETDATE() --Intervalos de tempo

--FORMAT
SELECT FORMAT(CAST (GETDATE() as date), 'dd/MM/yyyy') -- formatar a data