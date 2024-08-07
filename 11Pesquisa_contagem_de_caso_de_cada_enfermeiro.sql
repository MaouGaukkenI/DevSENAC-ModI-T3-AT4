-- os medicos não possuem CRMs apenas os enfermeiros, entção fiz uzando os enfermeiros

SELECT nome, CRE, COUNT(*)
FROM enfermeiro_internação i
JOIN enfermeiros e ON i.id_enfermeiros = e.id
GROUP BY e.nome, e.CRE;