-- Alteração da parte 6:
UPDATE internação
SET data_de_alta = '2018-09-09'
WHERE id = 6; 

-- Alteração parte 8:
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

-- Alteração parte 9:
INSERT INTO medico_especializacao VALUES
(1, 8, 4), (2, 6, 6), (3, 7, 5), (4, 4, 1), (5, 3, 7), (6, 5, 3), (7, 2, 1), (8, 9, 3), (9, 10, 2), (10, 1, 6);
