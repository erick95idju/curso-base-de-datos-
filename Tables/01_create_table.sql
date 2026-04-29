--DISTINTAS RESTRICCIONES A LAS TABLAS
--(NOT NULL, UNIQUE, PRIMARY KEY, CHECK, DEFAULT, ETC ETC ...)
CREATE TABLE personas(
id int,
name varchar(100),
age int,
email varchar(100),
created date
);

CREATE TABLE persons2(
id int NOT NULL,
name varchar(100) NOT NULL,
age int,
email varchar(100),
created date
);

CREATE TABLE persons3(
id int NOT NULL,
name varchar(100) NOT NULL,
age int,
email varchar(100),
created DATETIME,
UNIQUE (id)
);

CREATE TABLE persons4(
id int NOT NULL,
name varchar(100) NOT NULL,
age int,
email varchar(100),
created DATETIME,
UNIQUE (id)
);

CREATE TABLE persons5(
id int NOT NULL,
name varchar(100) NOT NULL,
age int,
email varchar(100),
created DATETIME DEFAULT CURRENT_TIMESTAMP(),
UNIQUE (id),
PRIMARY KEY(id),
CHECK (age>=18)
);

CREATE TABLE persons6(
id int NOT NULL AUTO_INCREMENT,
name varchar(100) NOT NULL,
age int,
email varchar(100),
created DATETIME DEFAULT CURRENT_TIMESTAMP(),
UNIQUE (id),
PRIMARY KEY(id),
CHECK (age>=18)
);

CREATE TABLE persons7(
id int NOT NULL AUTO_INCREMENT,
name varchar(100) NOT NULL,
age int,
email varchar(100),
created DATETIME DEFAULT CURRENT_TIMESTAMP(),
UNIQUE (id),
PRIMARY KEY(id),
CHECK (age>=18)
);

CREATE TABLE persons8(
id int NOT NULL AUTO_INCREMENT,
name varchar(100) NOT NULL,
age int,
email varchar(100),
created DATETIME DEFAULT CURRENT_TIMESTAMP(),
UNIQUE (id),
PRIMARY KEY(id),
CHECK (age>=18)
);