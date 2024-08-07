SELECT *
FROM consulta
WHERE valor = (
	SELECT MAX(valor)
    FROM consulta
) OR valor = (
	SELECT MIN(valor)
    FROM consulta
);