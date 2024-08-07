SELECT data_de_entrada, procedimentos, i.id_quarto AS numero_do_quarto
FROM internação i
WHERE id_quarto = (
	SELECT id
    FROM quartos
    WHERE id_tipo = 1
);
