DROP IF EXISTS pedidos;

USE pedidos;
CREATE DATABASE IF NOT EXISTS pedidos;

CREATE TABLE usuarios(
    idUsuario BIGINT PRIMARY KEY AUTO_INCREMENT,
    usuario VARCHAR(255) NOT NULL,
    pass VARCHAR(255) NOT NULL,
    correo VARCHAR(255) NOT NULL,
    nombre VARCHAR(255) NOT NULL,
    apellido VARCHAR(255) NOT NULL,
    telefono VARCHAR(255) NOT NULL,
    direccion VARCHAR(255) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    fecha_registro DATE NOT NULL,
    fecha_modificacion DATE NOT NULL,
    estado VARCHAR(255) NOT NULL
);