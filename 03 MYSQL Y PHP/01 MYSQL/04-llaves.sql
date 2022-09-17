ALTER TABLE peliculas CHANGE COLUMN peli_dire_id peli_dire_id INT(10) UNSIGNED

 /*
    ⚡⚡RESTRICCIONES⚡⚡
    --RESTRICT 
    -por defecto,impide realizar modificaciones que atenten la integridad referencial de las tablas ,no permite borrar
    
    --CASCADE
    al actualizar o borrar un dato referenciado,tambien se actualiza o se borra los datos de la tabla dependientes

    --SET NULL
    --Se estbalece campos "NULL" a la tabla dependiente al momento de cambiar a borrar

 */
ALTER TABLE peliculas 
    ADD CONSTRAINT fk_direid FOREIGN KEY (peli_dire_id) 
    REFERENCES directores (dire_id)
    ON DELETE RESTRICT ON UPDATE RESTRICT CASCADE
