SELECT * 
    FROM peliculas a,directores b 
        WHERE a.peli_dire_id = b.dire_id 

----------------------------------------------------
--INNER JOIN
--🔒2 tablas

SELECT * 
    FROM peliculas a
        INNER JOIN directores b ON a.peli_dire_id = b.dire_id

SELECT * 
    FROM peliculas a
        INNER JOIN personajes b ON a.peli_id = b.per_peli_id

SELECT * 
    FROM actores a 
        INNER JOIN personajes b ON a.act_id = b.per_act_id


--🎈LEFT JOIN
SELECT * 
    FROM peliculas a
       LEFT JOIN directores b ON a.peli_dire_id = b.dire_id

SELECT * 
    FROM peliculas a
        LEFT JOIN personajes b ON a.peli_id = b.per_peli_id

SELECT * 
    FROM personajes a
        LEFT JOIN peliculas b ON b.peli_id = a.per_peli_id

INSERT INTO personajes(per_nombres) VALUES
    ('Batman'),
    ('Superman'),
    ('Capitan America')

SELECT * 
    FROM actores a 
    LEFT JOIN personajes b ON a.act_id = b.per_act_id


-------RIGHT JOIN
SELECT * 
    FROM actores a 
    RIGHT JOIN personajes b ON a.act_id = b.per_act_id

----------------------------------------------------

--🎈3 TABLAS
SELECT * 
    FROM peliculas a 
        INNER JOIN personajes b ON a_peli_id = b.per_peli_id
        INNER JOIN actores c ON b.per_act_id = c.act_id

SELECT * 
    FROM peliculas a 
        INNER JOIN personajes b ON a_peli_id = b.per_peli_id
        RIGHT JOIN actores c ON b.per_act_id = c.act_id

    --------------------------------------------
--🎈4 TABLAS
SELECT * 
    FROM directores a 
    INNER JOIN peliculas b ON a.dire_id = b.peli_dire_id
    INNER JOIN personajes c ON b.peli_id = c.per_peli_id
    INNER JOIN actore d ON d.act_id = c.per_act_id

