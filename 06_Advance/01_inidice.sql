-- un indice es un elemento que nos permite indexar una tabla es como un indice de un libro
-- nos permite mejorar la busqueda de los registros
-- tipos de indices:
-- INDICES PK:
-- INDICES UNIQUE: ASEGURA QUE LOS INDICES NO ESTEN DUPLICADOS
-- INDICES COMPUESTOS

CREATE INDEX idx_name ON USERS(name);

CREATE UNIQUE INDEX idx_name ON USERS(name);
-- EN ESTA QUERY SI CREAMOS QUE EL NAME SE UNICO, PODEMOS ENFRENTARNOS A PROBLEMAS 
-- CUANDO SE QUIERA REGISTRAR UN USUARIO REPETIDO 
CREATE UNIQUE INDEX idx_name ON USERS(name, apellidos);

--CREA INDICES EN MULTIPLES COLUNAS DE UNA MISMA TABLA
CREATE UNIQUE INDEX idx_surname ON users(name, apellidos);
-- COMO BORRAR UN INDICE 
DROP INDEX idx_name ON users;


select  * from users where name = "erick";

