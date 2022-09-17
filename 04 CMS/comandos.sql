CREATE DATABASE soporte;

CREATE TABLE sectionh(
    sh_titulo_top VARCHAR(50) NOT NULL,
    sh_titulo VARCHAR(100) NOT NULL,
    sh_descri VARCHAR(100) NOT NULL,
    sh_img TEXT NOT NULL,
    sh_telefono CHAR(9) NOT NULL
)

INSERT INTO sectionh (sh_titulo_top, sh_titulo, sh_descri, sh_img, sh_telefono) VALUES
    ("15 años de experiencia", "Reparación de PC & Servicios de TI", "Lorem ipsum dolor sit amet consectetur adipisicing elit. Cum, qui ipsa.", "itservice6-slider-pic1.png", "965897452");

CREATE TABLE usuarios (
    user_id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    user_nombres VARCHAR(255) NOT NULL,
    user_apellidos VARCHAR(255) NOT NULL,
    user_email VARCHAR(255) NOT NULL,
    user_img TEXT,
    user_pass VARCHAR(255) NOT NULL,
    user_token TEXT,
    user_status TINYINT DEFAULT 0 COMMENT 'status 0: usuario no activado, status 1: usuario activado',
    user_rol INT NOT NULL
);


CREATE TABLE roles(
    r_id INT UNSIGNED NOT NULL PRIMARY KEY AUTO_INCREMENT,
    r_nombre VARCHAR(20) NOT NULL
);

INSERT INTO roles (r_nombre) VALUES
    ("admin"),
    ("suscriptor")