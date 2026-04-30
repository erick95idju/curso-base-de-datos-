--RELACION DE TABLAS DE 1:1

-------------------------------------
-    NOTA CREAR LA TABLA USERS      -
-------------------------------------
create table dni(
dni_id int auto_increment primary key,
dni_number int not null,
user_id int,
unique (dni_id),
foreign key (user_id) references users(user_id)
);


CREATE TABLE COMPANIES(
company_id INT PRIMARY KEY,
name VARCHAR(100) NOT NULL
);

--TABLAS REALACIONALES CON LA TABLA USER

CREATE TABLE languages(
language_id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100) NOT NULL
);

CREATE TABLE users_languages(
users_languages_id INT AUTO_INCREMENT PRIMARY KEY,
user_id INT NOT NULL,
language_id INT NOT NULL,
FOREIGN KEY (user_id) REFERENCES users (user_id),
FOREIGN KEY (language_id) REFERENCES languages (language_id),
UNIQUE (user_id, language_id)
);


--INSERCIONES EN LA TABLA DNI
INSERT INTO dni(dni_number, user_id) VALUES (11,1);
INSERT INTO dni(dni_number, user_id) VALUES (12,2);
INSERT INTO dni(dni_number, user_id) VALUES (13,3);
INSERT INTO dni(dni_number, user_id) VALUES (14,4);

SELECT * FROM dni;

--