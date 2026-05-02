-- PARA REALIZAR UN FULL JOIN ESTA SERIA UNA FORMA DE REALIZARLO
-- RECORDAR QUE NO EXISTE EN MYSQL LA PALABRA FULL JOIN SI NO, 
-- SERIA UNION.

SELECT users.user_id AS U_USER_ID, dni.user_id AS D_USER_ID
FROM users
LEFT JOIN dni ON users.user_id = dni.user_id
UNION
SELECT users.user_id AS U_USER_ID, dni.user_id AS D_USER_ID
FROM users
RIGHT JOIN dni ON users.user_id = dni.user_id; 