--devuelve todos los registro a execcion de miriam@gmail.com 
SELECT * FROM users WHERE NOT email = 'miriam@gmail.com' ORDER BY age ASC;

--DEVUELVE EL REGISTRO SIEMPRE Y CUANDO UNA DE ESTAS 2 SE CUMPLA
SELECT * FROM users WHERE NOT email = 'miriam@gmail.com' OR age = 29;

