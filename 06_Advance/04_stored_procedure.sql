/*
Un procedimiento almacenado (Stored Procedure) es básicamente un conjunto de instrucciones
SQL que se guardan en el servidor de la base de datos bajo un nombre específico. En lugar 
de enviar una y otra vez consultas largas desde tu aplicación, simplemente "llamas" al 
procedimiento y MySQL ejecuta todo el bloque de código de un tirón.

Piénsalo como una función o una "receta" programada que vive dentro de tu base de datos.
¿Para qué sirven?

    Eficiencia: Reduce el tráfico de red, ya que solo envías el comando de ejecución y no
    todo el código SQL.

    Seguridad: Puedes dar permisos a un usuario para ejecutar un procedimiento sin darle
    acceso directo a las tablas.

    Mantenibilidad: Si la lógica del negocio cambia, solo actualizas el procedimiento en
    la base de datos en lugar de modificar el código en todas tus aplicaciones.
*/

-- CREAMOS UN PROCEDIMIENTO ALMACENADO
DELIMITER //
CREATE PROCEDURE p_all_users()
BEGIN
SELECT * FROM users;
END//

-- LLAMAMOS A NUESTRO ALMACENAMIENTO ALMACENADO
CALL P_ALL_USERS;

-- PROCEDIMIENTO CON PARAMETROS
DELIMITER //
CREATE PROCEDURE p_age_users(IN age_PARAM INT)
BEGIN
SELECT * FROM users WHERE age = age_PARAM;
END//
DROP PROCEDURE p_age_users;
CALL p_age_users(30);




