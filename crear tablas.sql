create table roles(
    id          int(11)         not null,
    descripcion varchar(100)    not null,
    CONSTRAINT pk_roles PRIMARY KEY (id)
)engine=InnoDb;


INSERT INTO roles (descripcion) VALUES('admin');

/OPERADORES DE COMPARACION/

select * from  usuarios WHERE email= 'admin@admin.com';

/*Otros Operadores
Igual           =
Distinto        !=
Menor/ menor o igual    </<=
Mayor/ mayor o igual    >/>=
Entre                   between A and B
En                      in
ES nulo/ no es nulo     isnull()/ not isnull()
Como                    like
No es como              not like */

/*Operadores Logicos
O       or
Y       and
NO      not */

/*Comodines
Cualquier cantidad de caracteres    %
Un solo caracter                    _ *
*/

## EJEMPLOS ##
1. Listados de usuarios que se han registrados en el año elegido
SELECT parametro dado FROM tabla elegida WHERE year(fecha) = año;

2. total  de parametros dados que se han registrados antes del año elegido
SELECT count(id) FROM tablas dadas WHERE year(fecha) != año;

3. Listado de usuarios que tengan el campo fecha con valor nulo (vacio)
SELECT *FROM usuarios where isnull(fecha);

4. Listados de roles donde la descripcion aparezca nula (vacio)
SELECT * FROM roles WHERE isnull(descripcion);

5. Listado de roles donde la descripcion no sea nula  (vacio)
SELECT * FROM roles WHERE Not isnull(descripcion);

6. Descripcion de aquellos roles en donde aparezca la letra a 
SELECT descripcion FROM roles WHERE descripcion LIKE '%a%'; /* % = conjunto de caracteres % _% */

7. Lo mismo, pero que NO aparezca la letra a 
SELECT descripcion FROM roles WHERE descripcion Not like '%a%';

8. Listado de usuarios cuyo año de ingreso en la td sea par 
SELECT * FROM usuarios WHERE (year(fecha)%2 = 0);

9. Listado de las 3 contraseñas de usuarios que tienen mas caracteres
SELECT email, upper (password) FROM usuarios WHERE length(password) > 7; /*cualquier numero sirve, convinar como desees*/

10. Listado de las 3 contraseñas de usuarios que tienen mas caracteres
SELECT password FROM usuarios ORDER BY length(password) DESC LIMIT 3; /*desc = descendente, ASC = ascendente*/

SELECT password FROM usuarios  ORDER BY length(password) DESC LIMIT 0,3;

11. Hacer consulta en la que muestre contenido de las dos tablas relacionadas:
select usuarios.id, email, password, idRol, descripcion from usuarios, roles where usuarios.idRol = roles.id;

12. hacer consulta con todas las restricciones anteriores:
select usuarios.id, email, password, descripcion from usuarios, roles where usuarios.idRol = roles.id order by length(email); /*por email*/
select usuarios.id, email, password, descripcion from usuarios, roles where usuarios.idRol = roles.id order by length(email) limit 4;/*por email*/
select usuarios.id, email, password, descripcion from usuarios, roles where usuarios.idRol = roles.id order by length(email) asc/desc limit 4;/*por email*/
select usuarios.id, email, password, idRol, descripcion from usuarios, roles where usuarios.idRol = roles.id order by length(descripcion) asc limit 4;/*por descripcion de rol*/

13. eliminar base de datos;
drop database (nombre de la base de datos);

14. mostrar el contenido de una tabla
select * from (tabla a elegir);


 Actualizar cosas:
1. Actualizar el campo elegido o seleccionado anteriormente de la tabla sleccionada con el campo actualizado:
update tabla elegida set campo elegido = 
ej: update usuarios set fecha = curdate();
ej: update usuarios set fecha = curdate()-5;/* le resto 5 dias*/
ej: update usuarios set fecha = curdate()+5;/*le sumo 5 dias*/

2. Actualizar el campo elegido a la situacion elegida:
ej: update usuarios set fecha = curdate() where id >= 5;/* actualizo solo los id seleccionados*/
ej: update usuarios set fecha = curdate()-1 where id < 5;
ej: update usuarios set fecha = '2023-01-01' where id  = 5;/*actualizo a fecha concreta*/


vreate database Avnaza

create table Paises(
    idPais int(11) auto_increment not null,
    Pais varchar(55) not null,
    Continente varchar(25) not null,
    CONSTRAINT pk_Paises_idPaises primary key (idPais)
);

create table Editoriales(
    idEditorial int(11) auto_increment  not null,
    Editorial   varchar(50)             not null,
    Web         varchar(50)             not null,
    idPais      int(11)                 not null,
    constraint pk_Editoriales_idEditorial   primary key(idEditorial),
    constraint fk_Editoriales_Paises        foreign key (idPais) references Paises(idPais)
);

create table Categorias(
    idCategoria     int(11) auto_increment  not null,
    Categoria       varchar(50)             not null,
    Fecha_creacion  date                    not null default curdate(),
    constraint pk_Categorias_idCategoria    primary key(idCategoria)
);

create table Autores(
    idAutor         int(11) auto_increment  not null,
    Autor           varchar(50)             not null,
    Web             varchar(50)             not null,
    idPais          int(11)                 not null,
    constraint pk_Autores_idAutor       primary key(idAutor),
    constraint fk_Autores_Paises        foreign key (idPais) references Paises(idPais)
);

create table Libros(
    idLibro             int(11) auto_increment  not null,
    Titulo              varchar(100)            not null,
    idAutor             int(11)                 not null,
    Isbn                varchar(20)             not null,
    Num_pagina          varchar(4)              null,
    Anio_publicacion    date                    null,
    idCategoria         int(11)                 not null,
    idEditorial         int(11)                 not null,
    constraint pk_Libros_idLibro        primary key(idLibro),
    constraint fk_Libros_Editoriales    foreign key (idEditorial)   references Editoriales(idEditorial),
    constraint fk_Libros_Categorias     foreign key (idCategoria)   references Categorias(idCategoria),
    constraint fk_Libros_Autores        foreign key (idAutor)       references Autores(idAutor)
);

create table Usuarios(
    idUsuario           int(11) auto_increment  not null,
    DNI                 varchar(15)             not null,
    Nombre              varchar(50)             not null,
    Apellido1           varchar(50)             not null, 
    Apellido2           varchar(50)             null,
    Email               varchar(50)             not null,
    Telefono            varchar(50)             not null,
    Fecha_nacimiento    date                    not null,
    constraint pk_Usuarios_idUsuario    primary key(idUsuario)
);

create table Prestamos(
    idPrestamo              int(11) auto_increment  not null,
    idLibro                 int(11)                 not null,
    idUsuario               int(11)                 not null,
    Fecha_Prestamo          date                    default curdate(),
    Fecha_prev_devolucion   date                    default DATE_ADD(CURRENT_DATE, INTERVAL 15 DAY),
    Fecha_devolucion        date                    null,
    constraint pk_Prestamos_idPrestamo       primary key (idPrestamo),
    constraint fk_Prestamos_idUsuario       foreign key (idUsuario) references Usuarios(idUsuario),
    constraint fk_Prestamos_idLibro         foreign key (idLibro) references Libros(idLibro)
);
 
 select * from Paises;
insert into Paises(Pais,Continente) values ('Spain','Europa');
insert into Paises(Pais,Continente) values ('Great Bretain','Europa');
insert into Paises(Pais,Continente) values ('Sudafrica','Africa');
insert into Paises(Pais,Continente) values ('Portugal','Europa');
insert into Paises(Pais,Continente) values ('Francia','Europa');
insert into Paises(Pais,Continente) values ('Italia','Europa');
insert into Paises(Pais,Continente) values ('Canada','America');

select * from Editoriales;

insert into Editoriales (Editorial, Web, idPais) values ('Planeta', 'www.Planeta.com',1);
insert into Editoriales (Editorial, Web, idPais) values ('Alfaguara', 'www.Alfaguara.com',1);
insert into Editoriales (Editorial, Web, idPais) values ('Planeta Agostini', 'www.Planetagostini.com',1);