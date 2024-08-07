SELECT c.*, t.valor_medio
FROM consulta c
CROSS JOIN (
  SELECT AVG(valor) AS valor_medio
  FROM consulta
  WHERE YEAR(data_hora) = 2020
    AND convenio_id IS NOT NULL
) t
WHERE YEAR(c.data_hora) = 2020
  AND c.convenio_id IS NOT NULL;