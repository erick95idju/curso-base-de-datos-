/*
Los disparadores (o triggers) son objetos de la base de datos que se ejecutan automáticamente
en respuesta a ciertos eventos en una tabla o vista. Básicamente, son bloques de código que
"reaccionan" cuando ocurre un INSERT, UPDATE o DELETE.
¿Para qué sirven?

Los triggers son herramientas poderosas para mantener la integridad y automatizar procesos
sin intervención del usuario o de la aplicación:

    Integridad Referencial Compleja: Permiten implementar reglas de negocio que son
    demasiado difíciles para las restricciones (constraints) estándar.

    Auditoría y Registro: Son ideales para llevar un historial de cambios.
    Puedes registrar quién, cuándo y qué se modificó en una tabla específica.

    Sincronización de Datos: Pueden actualizar automáticamente una tabla relacionada cuando
    cambian los datos en la tabla principal (por ejemplo, actualizar el stock de un producto
    tras una venta).

    Validación de Datos: Pueden interceptar una operación y cancelarla si los datos no cumplen
    con ciertos criterios antes de que se guarden permanentemente.

*/

CREATE TABLE `email_history` (
  `email_history_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`email_history_id`),
  UNIQUE KEY `email_history_id_UNIQUE` (`email_history_id`));


delimiter |
CREATE TRIGGER tg_email
AFTER UPDATE ON users
FOR EACH ROW
BEGIN
	IF OLD.email <> NEW.email THEN
		INSERT INTO email_history (user_id, email) 
        VALUES (OLD.user_id, OLD.email);
        END IF;
END;
|
delimiter ;

UPDATE users SET email = 'erickFlores@gmail.com' WHERE user_id = 1;

-- COMO ELIMINAR UN TRIGGER
DROP TRIGGER tg_email;