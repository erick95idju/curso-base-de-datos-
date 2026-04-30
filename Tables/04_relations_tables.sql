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


DROP TABLE companies;

CREATE TABLE companies (
  company_id INT AUTO_INCREMENT,
  name varchar(100) NOT NULL,
  PRIMARY KEY (company_id)
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

--INSERT EN LA TABLA COMPANIES
INSERT INTO companies(name) VALUES ('todo code');
INSERT INTO companies(name) VALUES ('codigo facilito');
INSERT INTO companies(name) VALUES ('Edteam');
INSERT INTO companies(name) VALUES ('MoureDev');
INSERT INTO companies(name) VALUES ('Google');
INSERT INTO companies(name) VALUES ('Azure');

--UPDATES EN LA TABLA USERS
UPDATE USERS SET COMPANY_ID = 1 WHERE USER_ID = 1;
UPDATE USERS SET COMPANY_ID = 2 WHERE USER_ID = 2;
UPDATE USERS SET COMPANY_ID = 3 WHERE USER_ID = 3;
UPDATE USERS SET COMPANY_ID = 4 WHERE USER_ID = 4;
UPDATE USERS SET COMPANY_ID = 1 WHERE USER_ID = 5;
UPDATE USERS SET COMPANY_ID = 2 WHERE USER_ID = 6;
UPDATE USERS SET COMPANY_ID = 3 WHERE USER_ID = 7;
UPDATE USERS SET COMPANY_ID = 4 WHERE USER_ID = 8;

--INSERT EN LA TABLA LANGUAGES
INSERT INTO languages(name) VALUES ('PYTHON');
INSERT INTO languages(name) VALUES ('JAVA');
INSERT INTO languages(name) VALUES ('SQL');
INSERT INTO languages(name) VALUES ('C++');
INSERT INTO languages(name) VALUES ('C');
INSERT INTO languages(name) VALUES ('VISUAL BASIC');
INSERT INTO languages(name) VALUES ('C#');
INSERT INTO languages(name) VALUES ('COBOL');

--INSERTAR REGISTROS EN LA TABLA N:M USERS_LANGUAGES
INSERT INTO users_languages(user_id, language_id) values (1,1);
INSERT INTO users_languages(user_id, language_id) values (1,2);
INSERT INTO users_languages(user_id, language_id) values (1,3);
INSERT INTO users_languages(user_id, language_id) values (2,2);
INSERT INTO users_languages(user_id, language_id) values (2,4);
INSERT INTO users_languages(user_id, language_id) values (2,5);

