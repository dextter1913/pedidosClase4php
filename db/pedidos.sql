DROP DATABASE IF EXISTS pedidos;

CREATE DATABASE IF NOT EXISTS pedidos;

USE pedidos;

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
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    fecha_modificacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    estado VARCHAR(255) NOT NULL
);

CREATE TABLE productos(
    idProducto BIGINT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255) NOT NULL,
    descripcion VARCHAR(255) NOT NULL,
    precio DOUBLE NOT NULL,
    iva DOUBLE NOT NULL,
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    fecha_modificacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    estado VARCHAR(255) NOT NULL,
    idUsuario BIGINT NOT NULL,
    INDEX(idUsuario),
    FOREIGN KEY(idUsuario) REFERENCES usuarios(idUsuario)
);

CREATE TABLE pedidosEncabezado(
    idPedidoEncabezado BIGINT PRIMARY KEY AUTO_INCREMENT,
    fecha_pedido DATE NOT NULL,
    fecha_entrega DATE NOT NULL,
    fecha_entregado DATE NOT NULL,
    fecha_cancelado DATE NOT NULL,
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    fecha_modificacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    estado VARCHAR(255) NOT NULL,
    idUsuario BIGINT NOT NULL,
    INDEX(idUsuario),
    FOREIGN KEY(idUsuario) REFERENCES usuarios(idUsuario)
);

CREATE TABLE pedidoCuerpo(
    idPedidoCuerpo BIGINT PRIMARY KEY AUTO_INCREMENT,
    cantidad INT NOT NULL,
    precio DOUBLE NOT NULL,
    iva DOUBLE NOT NULL,
    fecha_registro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    fecha_modificacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    estado VARCHAR(255) NOT NULL,
    idPedidoEncabezado BIGINT NOT NULL,
    idProducto BIGINT NOT NULL,
    INDEX(idPedidoEncabezado),
    INDEX(idProducto),
    FOREIGN KEY(idPedidoEncabezado) REFERENCES pedidosEncabezado(idPedidoEncabezado),
    FOREIGN KEY(idProducto) REFERENCES productos(idProducto)
);