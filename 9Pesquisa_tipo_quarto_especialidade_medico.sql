-- faltou serem inseridos alguns dados que são:
-- INSERT INTO medico_especializacao VALUES
-- (1, 8, 4), (2, 6, 6), (3, 7, 5), (4, 4, 1), (5, 3, 7), (6, 5, 3), (7, 2, 1), (8, 9, 3), (9, 10, 2), (10, 1, 6);

SELECT p.nome AS nome_paciente, m.nome AS nome_medico, i.data_de_entrada AS data_de_internação, i.procedimentos
FROM internação i
JOIN medicos m ON i.id_medico = m.id
JOIN pacientes p ON i.id_paciente = p.id
JOIN medico_especializacao e ON m.id = e.medico_id
JOIN especializacoes s ON e.especializacao_id = s.id
JOIN quartos q ON i.id_quarto = q.id
JOIN tipo_de_quarto t ON q.id_tipo = t.id
WHERE s.nome = 'gastroenterologia '
	AND t.tipo = 'enfermaria'
