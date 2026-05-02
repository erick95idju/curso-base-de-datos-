
SELECT name, dni_number
FROM users
RIGHT JOIN dni
ON users.user_id = dni.user_id;

SELECT *
FROM users
RIGHT JOIN dni
ON users.user_id = dni.user_id;

SELECT name, dni_number
FROM dni
RIGHT JOIN users
ON users.user_id = dni.user_id;

-- MUESTRA TODOS LOS REGISTROS DE LA DERECHA (USERS_LANGUAGES, LANGAGUES)
SELECT users.name, users_languages.language_id, languages.name
FROM users
RIGHT JOIN users_languages ON users.user_id = users_languages.user_id
RIGHT JOIN languages ON users_languages.language_id =  languages.language_id;


