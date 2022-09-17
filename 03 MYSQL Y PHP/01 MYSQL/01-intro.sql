-- mysql -u root
-- mysql -u root -p

-- ⚡⚡ COMANDOS INICIALES ⚡⚡
show databases;
SHOW DATABASES;

CREATE DATABASE dw2022_4

DROP DATABASE dw2022_4

USE dw2022_4

-- ⚡⚡ CREACION DE TABLAS
CREATE TABLE personas (
    per_id INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    per_nombres VARCHAR(100) NOT NULL,
    per_apellidos VARCHAR(100) NOT NULL,
    per_dni CHAR(8) NOT NULL,
    per_img TEXT,
    per_fecha_nac DATE
)

SHOW TABLES

DESC personas

DROP TABLE personas -- 🔥🔥🔥🔥🔥🔥

ALTER TABLE personas ADD COLUMN per_genero VARCHAR(10) -- JYSGD

ALTER TABLE personas CHANGE COLUMN per_genero per_generos VARCHAR(5) NOT NULL -- 🔥🔥🔥

ALTER TABLE personas DROP COLUMN per_genero

ALTER TABLE personas ADD COLUMN per_genero VARCHAR(10) NOT NULL AFTER per_apellidos

-- ⚡⚡ INSERTAR DATOS - CAMPOS
INSERT INTO personas (per_nombres, per_apellidos, per_genero, per_dni, per_fecha_nac)
    VALUES ('Juan', 'Casas', 'masculino', 12345678, '2000-12-12')

SELECT * FROM personas

INSERT INTO personas (per_dni, per_apellidos, per_fecha_nac, per_nombres) VALUES
    ('12345671', 'Salas', '2016-10-10', 'Sofia'),
    ('12345672', 'Quispe', '2020-01-01', 'Martin'),
    ('12345673', 'Poma', '2019-02-02', 'María')

-- MUCHO CUIDADO CON ESTE QUERY 💣💣😢😢
DELETE FROM personas WHERE per_id = 8

<<<<<<< HEAD
TRUNCATE personas;
=======
TRUNCATE personas
>>>>>>> 0dc5c9f48ca8ed19a51e2becfb344838f72289a0

--------------------------------------------------------------
CREATE TABLE peliculas (
    peli_id INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    peli_nombre VARCHAR(255) NOT NULL COMMENT 'aqui va el nombre de la peli',
    peli_genero VARCHAR(100) NOT NULL,
    peli_fecha_estreno DATE NOT NULL,
    peli_restricciones VARCHAR(20) NOT NULL COMMENT 'ejem PG = publico en general'
);

INSERT INTO peliculas (peli_nombre, peli_genero, peli_fecha_estreno, peli_restricciones) VALUES
    ('Spiderman: No way home', 'ciencia ficcion', '2021-12-15', 'PG'),
    ('Dr. Strange: En el multiverso de la locura', 'ciencia ficción', '2022-05-05', 'PG-16'),
    ('Matrix', 'Ciencia Ficción', '1999-12-24', 'PG-13'),
    ('Interestellar', 'Drama', '2014-10-10', 'PG-18'),
    ('El Resplandor', 'Terror', '1980-02-02', 'PG-18'),
    ('Titanic', 'Drama Romantico', '1997-07-07', 'PG'),
    ('El código enigma', 'bélica', '2017-08-19', 'PG-16');


-- ⚡⚡ CONSULTAS
SELECT * FROM peliculas;

-- ⚡⚡ WHERE
SELECT * FROM peliculas WHERE peli_restricciones = 'PG-18';

SELECT * FROM peliculas WHERE peli_id = 6;

SELECT * FROM peliculas WHERE peli_genero = 'drama';

------------------------------------------------------------
-- ⚡⚡ ORDER BY
SELECT * FROM peliculas ORDER BY peli_id;

SELECT * FROM peliculas ORDER BY peli_id DESC;
<<<<<<< HEAD
0/0:dw2022_4/0:dw2022_4/0:tables/0:actores/0:columns/0:act_apellidos
SELECT * FROM peliculas ORDER BY peli_nombre DESC;

SELECT peli_nombre, peli_restricciones FROM peliculas WHERE peli_restricciones = 'pg-16' ORDER BY peli_nombre DESC;

------------------------------------------------------------
CREATE TABLE actores (
    act_id INT UNSIGNED PRIMARY KEY NOT NULL AUTO_INCREMENT,
    act_nombres VARCHAR(100) NOT NULL,
    act_apellidos VARCHAR(100) NOT NULL
);

INSERT INTO actores (act_nombres, act_apellidos) VALUES
    ('Tom', 'Holland'),
    ('Zendaya', 'Colleman'),
    ('Benedict', 'Cumberbach'),
    ('Elizabeth', 'Olsen'),
    ('Keanu', 'Reeves'),
    ('Carrie-Anne', 'Moss'),
    ('Jack', 'Nicolson'),
    ('Shelly', 'Duvall'),
    ('Leonardo', 'DiCaprio'),
    ('Kate', 'Winslet');

-- UNA CONSULTA (QUERY) DONDE MUESTRE EN UNA SOLA COLUMNA COMO RESULTADO LOS NOMBRES Y APELLIDOS DEL ACTOR JUNTOS
SELECT * FROM actores;

SELECT CONCAT(act_nombres, ' ', act_apellidos) FROM actores

SELECT CONCAT(act_nombres, ' ', act_apellidos) FROM actores ORDER BY act_nombres

-- ⚡⚡ ALIAS

SELECT CONCAT(act_nombres, ' ', act_apellidos) AS actor FROM actores ORDER BY act_nombres

SELECT act_nombres AS actorNombre FROM actores ORDER BY act_nombres

SELECT CONCAT(act_nombres, ' ', act_apellidos) AS actor de reparto FROM actores ORDER BY act_nombres

SELECT CONCAT(act_nombres, ' ', act_apellidos) AS "actor de reparto" FROM actores ORDER BY act_nombres

SELECT CONCAT(act_nombres, ' ', act_apellidos) AS actor_reparto FROM actores ORDER BY act_nombres

-- QUE EL QUERY ME DE COMO RESULTADO EL POSIBLE CORREO CORPORATIVO DEL ACTOR EN UN SOLO CAMPO
-- EDUARDO ARROYO -> earroyo@continental.edu.pe
-- SUBSTRING

SELECT SUBSTRING(act_nombres, 2, 2) FROM actores

SELECT CONCAT(SUBSTRING(act_nombres,1,1), act_apellidos, '@continental.edu.pe') AS correo FROM actores

-- LOWER
SELECT LOWER(CONCAT(SUBSTRING(act_nombres,1,1), act_apellidos, '@continental.edu.pe')) AS correo FROM actores

-- ⚡⚡ GROUP BY

SELECT COUNT(*) AS cantidad, peli_genero FROM peliculas GROUP BY peli_genero

SELECT COUNT(*) AS cantidad, peli_restricciones FROM peliculas GROUP BY peli_restricciones

SELECT COUNT(*) AS cantidad, peli_genero FROM peliculas GROUP BY peli_genero ORDER BY peli_genero

-- ⚡⚡ COMODINES %
SELECT * FROM peliculas WHERE peli_nombre LIKE 'e%' AND peli_restricciones = 'PG'

SELECT * FROM peliculas WHERE peli_nombre LIKE '%r'

SELECT * FROM peliculas WHERE peli_nombre LIKE '%r%'



=======

SELECT * FROM peliculas ORDER BY peli_nombre DESC;

SELECT peli_nombre, peli_restricciones FROM peliculas WHERE peli_restricciones = 'pg-16' ORDER BY peli_nombre DESC
>>>>>>> 0dc5c9f48ca8ed19a51e2becfb344838f72289a0

