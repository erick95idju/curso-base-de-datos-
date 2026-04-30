--nos sirve para consultar uniendo uno o mas tablas
--DEVUELVE LAS DOS TABLAS JUNTAS
SELECT * FROM users
INNER JOIN dni;

--DEVUELVE DOS COLUMNAS DE LA TABLA USERS Y DE LA TABLA DNI
SELECT name, dni_number FROM users
INNER JOIN dni
ON users.user_id = dni.user_id ORDER BY age ASC;

--ESTAS DOS CONSULTAS MUESTRAN LAS TABLAS DE MANERA INVERSA 

SELECT * FROM users
JOIN companies
ON users.company_id = companies.company_id;

SELECT * FROM companies
JOIN users
ON users.company_id = companies.company_id;

-- SELECCIONAMOS DOS COLUMNAS EN ESPECIFICO QUE QUERAMOS CONSULTAR

SELECT companies.name, users.name FROM companies
JOIN users
ON users.company_id = companies.company_id;

-- SE RECOMIENDA QUE AL REALIZAR UN JOIN SE COMIENZE POR LA TABLA DE UNION N:M
--Y DESPLAZARCE A LAS DEMAS TABLAS 
-- JOIN CON TRES TABLAS
SELECT users.name, languages.name
FROM users_languages 
INNER JOIN users ON users_languages.user_id = users.user_id
INNER JOIN languages ON users_languages.language_id = languages.language_id;

-- JOIN CON TRES TABLAS EMPEZANDO CON LA TABLA USER
SELECT users.name, languages.name
FROM users
INNER JOIN users_languages  ON users_languages.user_id = users.user_id
INNER JOIN languages ON users_languages.language_id = languages.language_id;



