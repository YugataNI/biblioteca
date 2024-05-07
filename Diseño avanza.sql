create database Avanza;

create table Ubicaciones(
    idUbicacion         int(11) auto_increment   not null,
    Ubicacion           varchar(255)             not null,
    Direccion           varchar(255)             not null,
    Localidad           varchar(100)             not null,
    Codigo_postal       varchar(5)               not null,
    Provincia           varchar(100)             not null,
    constraint pk_Ubicaciones_idUbicacion      primary key(idUbicacion)
);

create table Formadores(
    idFormador          int(11) auto_increment      not null,
    Nombre              varchar(255)                not null,
    Telefono            varchar(15)                 not null,    
    Email               varchar(255)                not null,
    constraint pk_Formadores_idFormador      primary key(idFormador)
);

create table Materias(
    idMateria          int(11) auto_increment       not null,
    Nombre              varchar(255)                not null,
    constraint pk_Materias_idMateria      primary key(idMateria)
);

create table Contactos(
    idContacto           int(11) auto_increment       not null,
    Nombre              varchar(255)                  not null,
    Telefono             varchar(15)                  not null,    
    Email                varchar(255)                 not null,
    constraint pk_Contactos_idContacto      primary key(idContacto)
);

create table Cursos(
    idCurso          int(11) auto_increment  not null,
    Nombre_curso     varchar(255)            not null,
    Horas_curso      int(4)                  not null,
    Num_alumnos      int(5)                      null,
    Fecha_inicio     date                    not null,
    Fecha_fin        date                    not null,
    idFormador       int(5)                  not null,
    idUbicacion      int(5)                  not null,
    idMateria        int(5)                     null,
    idContacto       int(5)                  not null,
    constraint pk_Cursos_idCurso            primary key(idCurso),
    constraint fk_Cursos_Formadores         foreign key (idFormador)        references Formadores(idFormador),
    constraint fk_Cursos_Ubicaciones        foreign key (idUbicacion)       references Ubicaciones(idUbicacion),
    constraint fk_Cursos_Materias           foreign key (idMateria)         references Materias(idMateria),
    constraint fk_Cursos_Contactos          foreign key (idContacto)        references Contactos(idContacto)
);

insert into Formadores (Nombre, Telefono, Email) values('Juan Sanchez','611223344','juan@gmail .com');
insert into Formadores (Nombre, Telefono, Email) values('Maria Girasol','666555777','marian@gmail .com');
insert into Formadores (Nombre, Telefono, Email) values('Samuel Lopez','699226587','samu@gmail .com');
insert into Formadores (Nombre, Telefono, Email) values('Luisa Rodriguez','686278941','luisa@gmail .com');

insert into Materias(Nombre) values ('Ofimatica');
insert into Materias(Nombre) values ('Dases de datos');
insert into Materias(Nombre) values ('Gestion de Proyectos');
insert into Materias(Nombre) values ('Servicios en la nube');

insert into Ubicaciones(Ubicacion, Direccion, Localidad, Codigo_postal, Provincia) values('Guadalinfo', 'Marquez de santillana,66', 'pilas', '41840', 'Sevilla');
insert into Ubicaciones(Ubicacion, Direccion, Localidad, Codigo_postal, Provincia) values('sala opaef','Marquez de santillana,66', 'pilas', '41840', 'Sevilla');
insert into Ubicaciones(Ubicacion, Direccion, Localidad, Codigo_postal, Provincia) values('Centro formativo - Aula 2','Marquez de santillana,66', 'pilas', '41840', 'Sevilla');
insert into Ubicaciones(Ubicacion, Direccion, Localidad, Codigo_postal, Provincia) values('Centro formativo - Aula 3','Marquez de santillana,66', 'pilas', '41840', 'Sevilla');

insert into Contactos(Nombre, Telefono,Email) values ('Eva manzano', '618212223', 'eva@gmail.com');
insert into Contactos(Nombre, Telefono,Email) values ('Victor Gomez', '620212223', 'victor@gmail.com');
insert into Contactos(Nombre, Telefono,Email) values ('Manuel Jesus', '654653211', 'manuel@gmail.com');
insert into Contactos(Nombre, Telefono,Email) values ('Ines camacho', '640861352', 'ines@gmail.com');