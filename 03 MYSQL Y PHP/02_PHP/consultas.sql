SELECT 
    a.peli_nombre,
    CONCAT(b.dire_nombres, " ",b.dire_apellidos) AS director,
    a.peli_restricciones
    FROM peliculas a
    INNER JOIN directores b ON a.peli_dire_id = b.dire_id;

    ALTER TABLE peliculas ADD COLUMN peli_img TEXT AFTER peli_nombre

    ALTER TABLE directores ADD COLUMN dire_img TEXT AFTER dire_apellidos

    ALTER TABLE directores ADD COLUMN dire_pais TEXT AFTER dire_img