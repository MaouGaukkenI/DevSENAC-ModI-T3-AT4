SELECT *
FROM receitas
WHERE consulta_id = (
	SELECT MIN(consulta_id)
    FROM receitas
);