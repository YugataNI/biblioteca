
/* INSERTAMOS VALORES */

-- td: paises
insert into paises(pais, continente)    values    ('Spain', 'Europa');
insert into paises(pais, continente)    values    ('Great Britain', 'Europa');
insert into paises(pais, continente)    values    ('Francia', 'Europa');
insert into paises(pais, continente)    values    ('Sudafrica', 'Africa');
insert into paises(pais, continente)    values    ('Portugal', 'Europa');
insert into paises(pais, continente)    values    ('Canada', 'America');
insert into paises(pais, continente)    values    ('Italia', 'Europa');
insert into paises(pais, continente)    values    ('Estados Unidos', 'America');
insert into paises(pais, continente)    values    ('Irlanda', 'Europa');


-- td: editoriales
insert into editoriales (editorial, web, idPais)     values  ('Planeta', 'www.planeta.com', 1);
insert into editoriales (editorial, web, idPais)     values  ('Alfaguara', 'www.alfaguara.com', 1);

insert into editoriales (editorial, web, idPais)     values  ('Planeta Agostini', 'www.planetaagostini.com', 1);
insert into editoriales (editorial, web, idPais)     values  ('Panini', 'www.panini.com', 1);
insert into editoriales (editorial, web, idPais)     values  ('Mondadori', 'www.mondadori.com', 1);
insert into editoriales (editorial, web, idPais)     values  ('Siruela', 'www.siruela.com', 1);
insert into editoriales (editorial, web, idPais)     values  ('Anaya', 'www.anaya.com', 1);
insert into editoriales (editorial, web, idPais)     values  ('Anagrama', 'www.anagrama.com', 1);
insert into editoriales (editorial, web, idPais)     values  ('Trusquets', 'www.trusquets.com', 1);
insert into editoriales (editorial, web, idPais)     values  ('Blackie Books', 'www.blackiebooks.com', 1);
insert into editoriales (editorial, web, idPais)     values  ('Seix Barral', 'www.seixbarral.com', 1);

-- td:categorias
insert into categorias (categoria) values ('Novela');
insert into categorias (categoria) values ('Poesia');
insert into categorias (categoria) values ('Ensayo');
insert into categorias (categoria) values ('Teatro');
insert into categorias (categoria) values ('Cuento');
insert into categorias (categoria) values ('Ciencia Ficcion');
insert into categorias (categoria) values ('Misterio');
insert into categorias (categoria) values ('Aventura');
insert into categorias (categoria) values ('Romantica');
insert into categorias (categoria) values ('Historica');

-- td: autores
insert into autores(autor, idPais)  values ('Wiliam Faulkner', 8);
insert into autores(autor, idPais)  values ('Stephen King', 8);
insert into autores(autor, idPais)  values ('Gabriel Garcia Marquez', 9);
insert into autores(autor, idPais)  values ('Oscar Wilde', 10);
insert into autores(autor, idPais)  values ('James Joyce', 10);
insert into autores(autor, idPais)  values ('Carmen Martin Gaite', 1);
insert into autores(autor, idPais)  values ('Clara Sanchez', 1);
insert into autores(autor, idPais)  values ('Alice Munro', 4);
insert into autores(autor, idPais)  values ('Margaret Atwood', 4);
insert into autores(autor, idPais)  values ('Daniele Steel', 8);

-- td: libros
insert into libros(titulo, idAutor, isbn, anio_publicacion, num_paginas, idEditorial, idCategoria)  
    values ('Cementerio de Animales', 2, '987-84-253-6341-2', 1993, 428, 3, 7);
insert into libros(titulo, idAutor, isbn, anio_publicacion, num_paginas, idEditorial, idCategoria)  
    values ('Misery', 2, '987-84-253-6341-2', 1001, 514, 3, 7);
insert into libros(titulo, idAutor, isbn, anio_publicacion, num_paginas, idEditorial, idCategoria)  
    values ('Cien Años de Soledad', 3, '987-21-253-6361-2', 1981, 397, 1, 1);
insert into libros(titulo, idAutor, isbn, anio_publicacion, num_paginas, idEditorial, idCategoria)  
    values ('Cronica de una muerte anunciada', 3, '987-21-253-6361-2', 1990, 207, 3, 1);
insert into libros(titulo, idAutor, isbn, anio_publicacion, num_paginas, idEditorial, idCategoria)  
    values ('El Retrato de Dorian Gray', 4, '001-21-253-6361-3', 1820, 283, 2, 1);
insert into libros(titulo, idAutor, isbn, anio_publicacion, num_paginas, idEditorial, idCategoria)  
    values ('La importancia de llamarse Ernesto', 4, '981-21-433-6361-3', 1850, 292, 2, 4);
insert into libros(titulo, idAutor, isbn, anio_publicacion, num_paginas, idEditorial, idCategoria)  
    values ('El misterio de todos los dias', 7, '999-21-413-6351-3', 2008, 304, 6, 1);
insert into libros(titulo, idAutor, isbn, anio_publicacion, num_paginas, idEditorial, idCategoria)  
    values ('El amante silencioso', 7, '999-21-413-6351-3', 2014, 276, 6, 8);
insert into libros(titulo, idAutor, isbn, anio_publicacion, num_paginas, idEditorial, idCategoria)  
    values ('La vida de las mujeres', 8, '999-21-413-000-2', 2009, 301, 9, 9);
insert into libros(titulo, idAutor, isbn, anio_publicacion, num_paginas, idEditorial, idCategoria)  
    values ('Danza de las sombras', 8, '999-99-413-000-2', 2016, 187, 10, 10);
insert into libros(titulo, idAutor, isbn, anio_publicacion, num_paginas, idEditorial, idCategoria)  
    values ('El cuento de la criada', 9, '308-24-413-000-2', 2000, 591, 7, 3);
insert into libros(titulo, idAutor, isbn, anio_publicacion, num_paginas, idEditorial, idCategoria)  
    values ('Ulises', 5, '911-24-113-000-1', 1947, 178, 5, 6);
insert into libros(titulo, idAutor, isbn, anio_publicacion, num_paginas, idEditorial, idCategoria)  
    values ('Cuentos reunidos', 1, '981-00-0003-000-1', 1921, 298, 3, 4);
insert into libros(titulo, idAutor, isbn, anio_publicacion, num_paginas, idEditorial, idCategoria)  
    values ('Mientras agonizo', 1, '220-70-0003-000-7', 1953, 479, 6, 8);
insert into libros(titulo, idAutor, isbn, anio_publicacion, num_paginas, idEditorial, idCategoria)  
    values ('Lo raro es vivir', 6, '891-10-2513-000-7', 1945, 212, 7, 4);
insert into libros(titulo, idAutor, isbn, anio_publicacion, num_paginas, idEditorial, idCategoria)  
    values ('El cuento de nunca acabar', 6, '407-10-2513-000-7', 1967, 329, 4, 6);
insert into libros(titulo, idAutor, isbn, anio_publicacion, num_paginas, idEditorial, idCategoria)  
    values ('Ojo de gato', 9, '704-24-413-000-2', 2006, 211, 2, 6);

-- td: usuarios
insert into usuarios (dni, nombre, apellido1, apellido2, email, telefono, fecha_nacimiento)
    values('0000000-A', 'hola', 'hola', 'hola', 'hola@gmail.com', '600000000', '1999-12-31' );
insert into usuarios (dni, nombre, apellido1, apellido2, email, telefono, fecha_nacimiento)
    values('28897010-V', 'Magda', 'Escaja', 'Clavero', 'mmescajac@gmail.com', '600000000', '1999-12-31' );
insert into usuarios (dni, nombre, apellido1, apellido2, email, telefono, fecha_nacimiento)
    values('28750010-R', 'Maria Angeles', 'Alonso', 'Fernandez', 'angeles@gmail.com', '601000001', '2000-01-01' );
insert into usuarios (dni, nombre, apellido1, apellido2, email, telefono, fecha_nacimiento)
    values('29568010-P', 'Ismael', 'Cruz', 'Campos', 'ismael@gmail.com', '602000002', '2000-01-02' );
insert into usuarios (dni, nombre, apellido1, apellido2, email, telefono, fecha_nacimiento)
    values('54222010-A', 'Enrique', 'Moreno', 'Monsalves', 'enrique@gmail.com', '603000003', '2000-01-03' );
insert into usuarios (dni, nombre, apellido1, apellido2, email, telefono, fecha_nacimiento)
    values('45814010-P', 'Angela', 'Parrado', 'Romero', 'angela@gmail.com', '604000004', '2000-01-04' );
insert into usuarios (dni, nombre, apellido1, apellido2, email, telefono, fecha_nacimiento)
    values('29590010-R', 'Adrian', 'Salas', 'Suarez', 'adrian@gmail.com', '605000005', '2000-01-05' );
insert into usuarios (dni, nombre, apellido1, apellido2, email, telefono, fecha_nacimiento)
    values('28935010-B', 'Inmaculada', 'Venegas', 'Perera', 'inma@gmail.com', '606000006', '2000-01-06' );
insert into usuarios (dni, nombre, apellido1, apellido2, email, telefono, fecha_nacimiento)
    values('28334010-K', 'Jeronimo', 'Fernandez', 'Oropesa', 'jerponimo@gmail.com', '607000007', '2000-01-07' );
insert into usuarios (dni, nombre, apellido1, apellido2, email, telefono, fecha_nacimiento)
    values('26805010-N', 'Juan Antonio', 'Martinez', 'Mantero', 'juanantonio@gmail.com', '608000008', '2000-01-08' );
insert into usuarios (dni, nombre, apellido1, apellido2, email, telefono, fecha_nacimiento)
    values('48124010-K', 'Carlos', 'Bernal', 'Ruiz-Roso', 'carlos@gmail.com', '609000009', '2000-01-09' );

-- td: prestamos
insert into prestamos (idLibro, idUsuario) values (1, 5);
insert into prestamos (idLibro, idUsuario) values (2, 6);
insert into prestamos (idLibro, idUsuario) values (3, 7);
insert into prestamos (idLibro, idUsuario) values (4, 8);
insert into prestamos (idLibro, idUsuario) values (5, 9);
insert into prestamos (idLibro, idUsuario) values (6, 10);
insert into prestamos (idLibro, idUsuario) values (7, 11);
insert into prestamos (idLibro, idUsuario) values (8, 2);
insert into prestamos (idLibro, idUsuario) values (9, 3);
insert into prestamos (idLibro, idUsuario) values (10, 5);
insert into prestamos (idLibro, idUsuario) values (11, 5);
insert into prestamos (idLibro, idUsuario) values (12, 6);
insert into prestamos (idLibro, idUsuario) values (13, 7);
insert into prestamos (idLibro, idUsuario) values (14, 8);
insert into prestamos (idLibro, idUsuario) values (15, 9);
insert into prestamos (idLibro, idUsuario) values (16, 10);
insert into prestamos (idLibro, idUsuario) values (1, 11);
insert into prestamos (idLibro, idUsuario) values (2, 10);
insert into prestamos (idLibro, idUsuario) values (3, 9);
insert into prestamos (idLibro, idUsuario) values (4, 8);
insert into prestamos (idLibro, idUsuario) values (5, 7);
insert into prestamos (idLibro, idUsuario) values (6, 6);
insert into prestamos (idLibro, idUsuario) values (7, 5);
insert into prestamos (idLibro, idUsuario) values (8, 4);
insert into prestamos (idLibro, idUsuario) values (9, 3);
insert into prestamos (idLibro, idUsuario) values (10, 2);
insert into prestamos (idLibro, idUsuario) values (11, 5);
insert into prestamos (idLibro, idUsuario) values (12, 6);
insert into prestamos (idLibro, idUsuario) values (13, 7);
insert into prestamos (idLibro, idUsuario) values (14, 8);
insert into prestamos (idLibro, idUsuario) values (15, 9);
insert into prestamos (idLibro, idUsuario) values (16, 10);
insert into prestamos (idLibro, idUsuario) values (17, 11);
insert into prestamos (idLibro, idUsuario) values (1, 2);