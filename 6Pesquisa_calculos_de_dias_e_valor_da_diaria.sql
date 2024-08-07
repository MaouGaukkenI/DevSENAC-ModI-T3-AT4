-- percebi após o teste que a tabela possui um pequeno erro, portanto fiz uma alteração de dados pra que ficasse tudo certo:
UPDATE internação
SET data_de_alta = '2018-09-09'
WHERE id = 6; 

-- Estabeleci que as diarias valem R$20 pois nn foi definido nenhum valor de antemão.
SELECT i.*,
	DATEDIFF(i.data_de_alta, i.data_de_entrada) AS numero_dias,
    DATEDIFF(i.data_de_alta, i.data_de_entrada) * 20 AS total_internação
FROM internação i