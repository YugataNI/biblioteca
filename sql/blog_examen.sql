create database blog_examen;

create table usuarios(
    id            int(255) auto_increment not null,
    nombre        varchar(100) not null,
    apellido      varchar(100) not null,
    email         varchar(255) not null,
    pass          varchar(255) not null,
    fecha         date not null,
    constraint pk_usuarios primary key (id),
    constraint uk_usuarios unique (email)
) engine=InnoDB;