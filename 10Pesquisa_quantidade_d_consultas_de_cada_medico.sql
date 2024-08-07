-- os medicos não possuem CRMs então usei os telefones

SELECT m.nome, m.telefone, COUNT(*) as total
FROM consulta c
JOIN medicos m ON c.medico_id = m.id
GROUP BY m.nome, m.telefone;