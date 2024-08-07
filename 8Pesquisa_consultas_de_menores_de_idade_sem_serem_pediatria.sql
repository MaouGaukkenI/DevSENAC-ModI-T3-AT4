-- Tive que fazer alteração no datatipe da data de nascimento dos pacientes, e nos dados informados de suas idades:

UPDATE pacientes SET data_de_nascimento = '1946-04-06' WHERE id=1; 
UPDATE pacientes SET data_de_nascimento = '1969-08-14' WHERE id=2; 
UPDATE pacientes SET data_de_nascimento = '1976-09-27' WHERE id=3; 
UPDATE pacientes SET data_de_nascimento = '2018-02-18' WHERE id=4; 
UPDATE pacientes SET data_de_nascimento = '1982-04-13' WHERE id=5; 
UPDATE pacientes SET data_de_nascimento = '2019-02-17' WHERE id=6; 
UPDATE pacientes SET data_de_nascimento = '2002-03-04' WHERE id=7; 
UPDATE pacientes SET data_de_nascimento = '1948-07-12' WHERE id=8; 
UPDATE pacientes SET data_de_nascimento = '2000-11-01' WHERE id=9; 
UPDATE pacientes SET data_de_nascimento = '1984-06-12' WHERE id=10; 

ALTER TABLE `hospital_db_diogo`.`pacientes` 
CHANGE COLUMN `data_de_nascimento` `data_de_nascimento` DATE NOT NULL ;
-- Fim das alterações 

SELECT p.nome AS nome_paciente, c.data_hora, e.nome as especialidade,
	TIMESTAMPDIFF(YEAR, p.data_de_nascimento, c.data_hora) AS idade_paciente
FROM consulta c
JOIN pacientes p ON c.paciente_id = p.id
JOIN especializacoes e ON c.especialidade_id = e.id
WHERE e.nome <> 'pediatria'
	AND TIMESTAMPDIFF(YEAR, p.data_de_nascimento, CURDATE()) < 18
ORDER BY c.data_hora;