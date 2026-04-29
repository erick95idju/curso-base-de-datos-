
--con like y el signo de % se puede consultar datos
--

SELECT * FROM users WHERE email LIKE '%gmail.com';

SELECT * FROM users WHERE email LIKE 'mar%';

SELECT * FROM users WHERE email LIKE '__r%';
