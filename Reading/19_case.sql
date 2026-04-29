-- CASE CON MENSAJES DE TEXTO
SELECT *,
CASE
	WHEN age > 30 THEN 'Es mayor de edad'
    WHERE age = 18 THEN 'Acaba de cumplir la mayoria de edad'
    ELSE 'Es menor de edad'
END AS agetext
FROM users;

--CASE CON VALORES BOOLEANOS
SELECT *,
CASE
	WHEN age > 30 THEN TRUE
    ELSE FALSE
END AS '¿Es mayor de edad?'
FROM users;