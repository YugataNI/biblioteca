/* creamos primero la BD: biblioteca */
CREATE DATABASE biblioteca;

/* TABLAS DE DATOS */
-- td: paises 
CREATE TABLE paises (
    idPais      INT(11)       NOT NULL AUTO_INCREMENT,
    pais        VARCHAR(50)   NOT NULL,
    continente  VARCHAR(25)   NOT NULL,
    CONSTRAINT pk_paises  PRIMARY KEY(idPais)
);

-- td: editoriales 
CREATE TABLE editoriales (
    idEditorial    INT(11)        NOT NULL AUTO_INCREMENT,
    editorial      VARCHAR(50)    NOT NULL,
    web            VARCHAR(50)    NULL,
    idPais         INT(11)        NOT NULL,
    CONSTRAINT pk_editoriales    PRIMARY KEY(idEditorial),
    CONSTRAINT fk_editoriales_paises  FOREIGN KEY(idPais) REFERENCES paises(idPais)
); 

-- td: categorias
CREATE TABLE categorias (
    idCategoria       INT(11)       NOT NULL AUTO_INCREMENT,
    categoria         VARCHAR(50)   NOT NULL,
    fecha_creacion    DATE          NOT NULL DEFAULT CURDATE(),
    CONSTRAINT pk_categorias      PRIMARY KEY(idCategoria)
);

-- td:autores
CREATE TABLE autores (
    idAutor     INT(11)        NOT NULL AUTO_INCREMENT,
    autor       VARCHAR(150)   NOT NULL,
    idPais      INT(11)        NOT NULL,
    CONSTRAINT pk_autores      PRIMARY KEY(idAutor),
    CONSTRAINT fk_autores_paises  FOREIGN KEY(idPais) REFERENCES paises(idPais)
);

-- td: libros
CREATE TABLE libros (
     idLibro              INT(11)       NOT NULL AUTO_INCREMENT,
     titulo               VARCHAR(100)  NOT NULL,
     idAutor              INT(11)       NOT NULL,
     isbn                 VARCHAR(20)   NOT NULL,
     anio_publicacion     DATE          NULL,
     num_paginas          INT(4)        NULL,
     idEditorial          INT(11)       NOT NULL,
     idCategoria          INT(11)       NOT NULL,
     CONSTRAINT pk_libros               PRIMARY KEY(idLibro),
     CONSTRAINT fk_libros_autores       FOREIGN KEY(idAutor) REFERENCES autores(idAutor),
     CONSTRAINT fk_libros_editoriales   FOREIGN KEY(idEditorial) REFERENCES editoriales(idEditorial),
     CONSTRAINT fk_libros_categorias    FOREIGN KEY(idCategoria) REFERENCES categorias(idCategoria)
);

-- td: usuarios
CREATE TABLE usuarios (
    idUsuario          INT(11)       NOT NULL AUTO_INCREMENT,
    dni                VARCHAR(15)   NOT NULL,
    nombre             VARCHAR(50)   NOT NULL,
    apellido1          VARCHAR(50)   NOT NULL,
    apellido2          VARCHAR(50)   NULL,
    email              VARCHAR(100)  NOT NULL,
    telefono           INT           NOT NULL,
    fecha_nacimiento   DATE          NOT NULL,
    CONSTRAINT pk_usuarios     PRIMARY KEY(idUsuario)
);
    
CREATE TABLE prestamos (
    idPrestamo                    INT(11)       NOT NULL AUTO_INCREMENT,
    idLibro                       INT(11)       NOT NULL,
    idUsuario                     INT(11)       NOT NULL,
    fecha_prestamo                DATE          DEFAULT CURDATE(),
    fecha_prevista_devolucion     DATE          DEFAULT (CURDATE() + INTERVAL 15 DAY),
    fecha_devolucion              DATE          NULL,
    CONSTRAINT pk_prestamos      PRIMARY KEY(idPrestamo),
    CONSTRAINT fk_prestamos_libros   FOREIGN KEY(idLibro) REFERENCES libros(idLibro),
    CONSTRAINT fk_prestamos_usuarios FOREIGN KEY(idUsuario) REFERENCES usuarios(idUsuario)
);

