CREATE TABLE personajes (
    per_act_id INT NOT NULL,
    per_peli_id INT NOT NULL,
    per_nombre VARCHAR(100)
)

INSERT INTO personajes(per_act_id, per_peli_id, per_nombre) VALUES
    (1, 1, 'spiderman'),
    (2, 1, 'MJ'),
    (3, 1, 'Dr. Strange'),
    (3, 2, 'Dr. Strange'),
    (4, 2, 'Bruja Escarlata'),
    (7, 5, 'Jack Torrance'),
    (8, 5, 'Wendy Torrance'),
    (9, 6, 'Jack'),
    (10, 6, 'Rose')


--  ⚡⚡ 2 TABLAS
SELECT *
    FROM peliculas, personajes
        WHERE peliculas.peli_id = personajes.per_peli_id

SELECT * 
    FROM personajes, actores
        WHERE personajes.per_act_id = actores.act_id

-- QUERY: NOMBRE LA PELICULA, NOMBRE DEL PERSONAJE, FECHA DE ESTRENO, LA RESTRICCION = PG

SELECT 
    peli_nombre,
    per_nombre,
    peli_fecha_estreno,
    peli_restricciones
    FROM peliculas, personajes
        WHERE peliculas.peli_id = personajes.per_peli_id
            AND peli_restricciones = 'PG'

-- NOMBRES Y APELLIDOS DEL ACTOR EN UN SOLO CAMPO, SU PERSONAJE, SU POSIBLE CORREO CORPORATIVO Y ORDENADO DE FORMA 
-- DESCENDENTE POR APELLIDOS

SELECT
    CONCAT(act_nombres, ' ', act_apellidos) AS actor,
    per_nombre,
    LOWER(CONCAT(SUBSTRING(act_nombres, 1, 1), act_apellidos, "@disney.com")) AS correo
    FROM personajes, actores
        WHERE personajes.per_act_id = actores.act_id
        ORDER BY act_apellidos DESC

-- ⚡⚡ 3 TABLAS
SELECT *
    FROM peliculas, personajes, actores
        WHERE peliculas.peli_id = personajes.per_peli_id
            AND personajes.per_act_id = actores.act_id

        
-------NOMBRES Y APELLIDOS DEL ACTOR EN UNA SOLA COLUMNA,PERSONAJE,PELICULA,RESTRICCIONES ORDENADAS DECENDENTE
SELECT 
    CONCAT(act_nombres, "" ,act_apellidos) AS actor,
    per_nombre,
    peli_nombre,
    peli_restricciones
    FROM peliculas, personajes, actores
        WHERE peliculas.peli_id = personajes.per_peli_id
            AND personajes.per_act_id = actores.act_id
        ORDER BY peli_restricciones DESC

-------NUEVA TABLA
CREATE TABLE directores(
    dire_id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    dire_nombres varchar(50) NOT NULL,
    dire_apellidos VARCHAR(50) NOT NULL
)
INSERT INTO directores(dire_nombres,dire_apellidos) VALUES
 ('Jon','Watts'),
  ('San','Raini'),
   ('Lana','Wachowski'),
    ('Chistopher','Nolen'),
     ('Stanly','Kubric'),
      ('James','Cameron')

ALTER TABLE peliculas ADD COLUMN peli_dire_id INT

UPDATE peliculas SET peli_dire_id = 1 WHERE peli_id=1
UPDATE peliculas SET peli_dire_id = 2 WHERE peli_id=2
UPDATE peliculas SET peli_dire_id = 3 WHERE peli_id=3
UPDATE peliculas SET peli_dire_id = 4 WHERE peli_id=4
UPDATE peliculas SET peli_dire_id = 5 WHERE peli_id=5
UPDATE peliculas SET peli_dire_id = 6 WHERE peli_id=6


SELECT *
    FROM peliculas,directores 
      WHERE peliculas.peli_dire_id = directores.peli_dire_id
        --------------------alias de TABLAS
SELECT * 
    FROM peliculas a, directores b
        WHERE a.peli_dire_id = b.dire_id


SELECT 
    a.peli_nombre,
    CONCAT(b.dire_nombres,' ',b.dire_apellidos) AS director
    FROM peliculas a, directores b
        WHERE a.peli_dire_id = b.dire_id

----NOMBRE DE PELICULA | DIRECTOR (APELLIDOS Y NOMBRES ) | CORREO DEL ACTOR DE LAS PELICULAS | PERSONAJES
----ORDENADO DE FORMA ASCENDENTE POR PERSONAJES

--- DE MI
SELECT 
    a.peli_nombre,
    CONCAT(b.dire_nombres,' ',b.dire_apellidos) AS DIRECTOR 
    AND LOWER(CONCAT(SUBSTRING(d.act_nombre,1,1),d.act_apellidos,'@disney.com')) AS CORREO,
    c.per_nombre
       FROM peliculas a,directores b,personajes c,actores d
            WHERE a.peli_dire_id = b.dire_id
                AND a.peli_dire_id  = c.personajes
                    AND c.peli_dire_id = d.actores
                    ORDER BY personajes ASC

---DEL PROFESOR

SELECT 
    d.peli_nombre,
    CONCAT(a.dire_nombres,' ',a.dire_apellidos) AS director,
    LOWER(CONCAT(SUBSTRING(c.act_nombre,1,1),c.act_apellidos,'@disney.com')) AS correo,
    b.per_nombre
    FROM directores a,personajes b,actores c,peliculas d
        WHERE a.dire_id = d.peli_dire_id
            AND b.per_act_id = c.act_id
            AND b.per_peli_id = d.peli_id
        ORDER BY b.per_nombre ASC