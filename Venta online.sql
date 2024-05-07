--CREAMOS LA BASE DE DATOS Y LAS TABLAS--

create database Venta_Online;

create table Productos(
    idProducto                  int(11) auto_increment   not null,
    Nombre_producto             varchar(255)             not null,
    Precio_produco              varchar(255)             not null,
    Stock_disponible           varchar(100)             not null,
    constraint pk_Productos_idProducto      primary key(idProducto)
);

create table Clientes(
    idCliente           int(11) auto_increment          not null,
    Nombre              varchar(100)                    not null,
    Apellidos           varchar(150)                    not null,
    DNi                 varchar(15)                     not null,    
    Email               varchar(255)                    not null,
    Direccion_envio     varchar(255)                    not null,
    constraint pk_Clientes_idCliente      primary key(idCliente)
);

create table Pedidos(
    idPedido              int(11) auto_increment  not null,
    Base_imponible        varchar(50)             not null,
    Iva_porcent           varchar(255)            not null,
    Metodo_de_pago        varchar(255)            not null,
    idProducto            int(11)                 not null,
    constraint pk_Pedidos_idPedido    primary key(idPedido),
    constraint fk_Pedidos_idProducto  foreign key(idProducto) references Productos(idProducto)
);

create table Detalles_del_Pedido(
    idDetalle           int(11) auto_increment  not null
    idPedido            int(11)                 not null,
    idProducto          int(5)                  not null,
    idCliente           int(5)                  not null,
    Cantiddad           int(15)                 not null,
    constraint pk_Detalles_del_Pedido_idDetalle            primary key(idDetalle),
    constraint fk_Detalles_del_Pedido_idPedido             foreign key (idPedido)        references Pedidos(idPedido),
    constraint fk_Detalles_del_Pedido_idProducto           foreign key (idProducto)       references Productos(idProducto),
    constraint fk_Detalles_del_Pedido_idCliente            foreign key (idCliente)         references Clientes(idCliente)
);
create table Detalles_del_Pedido(
    idDetalle           int(11) auto_increment  not null,
    idPedido            int(11)                 not null,
    idProducto          int(5)                  not null,
    idCliente           int(5)                  not null,
    Cantidad            int(15)                 not null,
    constraint pk_Detalles_del_Pedido_idDetalle            primary key(idDetalle),
    constraint fk_Detalles_del_Pedido_idPedido             foreign key (idPedido)        references Pedidos(idPedido),
    constraint fk_Detalles_del_Pedido_idProducto           foreign key (idProducto)       references Productos(idProducto),
    constraint fk_Detalles_del_Pedido_idCliente            foreign key (idCliente)         references Clientes(idCliente)
);

--añadimos cintenido a las tablas--

insert into Clientes (Nombre, Apellidos, DNi, Email, Direccion_envio) values('Juan', 'Sanchez Prada','61122334e','juan@gmail.com', 'Margarita,18,Aznalcazar,Sevilla');
insert into Clientes (Nombre, Apellidos, DNi, Email, Direccion_envio) values('Maria', 'Girasol Saldaña','66655577r','marian@gmail.com', 'Violeta,24,Aznalcazar,Sevilla');
insert into Clientes (Nombre, Apellidos, DNi, Email, Direccion_envio) values('Samuel', 'Lopez Perea','69922658g','samu@gmail.com', 'Lorca,9,Aznalcazar,Sevilla');
insert into Clientes (Nombre, Apellidos, DNi, Email, Direccion_envio) values('Luisa', 'Rodriguez Martin','68627894k','luisa@gmail.com', 'jazmin,66,Aznalcazar,Sevilla');
insert into Clientes (Nombre, Apellidos, DNi, Email, Direccion_envio) values('Carlos', 'Bernal Ruiz-Roso','48124462K','carlos@gmail.com', 'Menoba,3,Aznalcazar,Sevilla');

insert into Pedidos(Base_imponible, Iva_21, Metodo_de_pago, idProducto) values ('20','21','Bizzum','1');
insert into Pedidos(Base_imponible, Iva_21, Metodo_de_pago,idProducto) values ('500','21', 'Visa','2');
insert into Pedidos(Base_imponible, Iva_21, Metodo_de_pago,idProducto) values ('100','21', 'PayPal','3');
insert into Pedidos(Base_imponible, Iva_21, Metodo_de_pago,idProducto) values ('70','21', 'Tarjeta Bancaria','4');
insert into Pedidos(Base_imponible, Iva_21, Metodo_de_pago,idProducto) values ('130','21', 'Efectivo','5');

insert into Productos(Nombre_producto, Precio_produco, Stock_disponible) values('Televisor', '20', '20 uds');
insert into Productos(Nombre_producto, Precio_produco, Stock_disponible) values('Lavavajillas', '500', '30 uds');
insert into Productos(Nombre_producto, Precio_produco, Stock_disponible) values('Microndas', '100', '100 uds');
insert into Productos(Nombre_producto, Precio_produco, Stock_disponible) values('Alexa', '70', '50 uds');
insert into Productos(Nombre_producto, Precio_produco, Stock_disponible) values('Monitores', '130', '70 uds');

insert into Detalles_del_Pedido(idPedido, idProducto, idCliente, Cantidad) values ('4', '1', '2','1');
insert into Detalles_del_Pedido(idPedido, idProducto, idCliente, Cantidad) values ('5', '3', '4','2');
insert into Detalles_del_Pedido(idPedido, idProducto, idCliente, Cantidad) values ('6', '5', '3','8');
insert into Detalles_del_Pedido(idPedido, idProducto, idCliente, Cantidad) values ('7', '2', '1','6');
insert into Detalles_del_Pedido(idPedido, idProducto, idCliente, Cantidad) values ('8', '4', '5','12');