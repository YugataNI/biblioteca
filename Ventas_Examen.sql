create database Ventas_Examen_Correccion; 

 create table Metodo_de_pago(
    idMetodo int(11) auto_increment not null,
    Nombre_metodo varchar(50) not null,
    constraint pk_Metodo_de_pago_idMetodo primary key(idMetodo)
);

create table Clientes(
    idCliente           int(11) auto_increment          not null,
    CIF                 varchar(15)                     not null,
    razon_social        varchar(100)                    not null,
    Direccion           varchar(15)                     not null,    
    Email               varchar(255)                    not null,
    Telefono            varchar(15)                     not null,
    Web                 varchar(150)                    not null,
    cp                  varchar(10)                     not null,
    Direccion_cl        varchar(100)                    not null,
    constraint pk_Clientes_idCliente      primary key(idCliente)
);

create table Productos(
    idProducto                  int(11) auto_increment   not null,
    Nombre_producto             varchar(255)             not null,
    Precio_produco              varchar(255)             not null,
    Stock_disponible            int(11)                  not null,
    Stock_min                   int(11)                  not null,
    Stock_max                   int(11)                  not null,
    constraint pk_Productos_idProducto      primary key(idProducto)
);

create table Ubicaciones(
    idUbicacion     int(11)     not null auto_increment,
    idCliente       int(11)     not null,
    Ubicaciones     varchar(200) not null,
    cp              varchar(10)  not null,
    localidad       varchar(100) not null,
    Provincia       varchar(100) not null,
constraint pk_Ubicaciones_idUbicacion      primary key(idUbicacion),
constraint fk_Ubicaciones_idCliente        foreign key (idCliente)        references Clientes(idCliente)
);

create table Pedidos(
    idPedido              int(11) auto_increment  not null,
    idCliente             int(11)                 not null,
    fecha                 date                    not null,
    Total                 float(8,2)              not null,
    Iva_porcent           int(5)                  not null default 21,
    idMetodo              int(11)                 not null,
    idUbicacion           int(11)                 not null,
    constraint pk_Pedidos_idPedido    primary key(idPedido),
    constraint fk_Pedidos_idMetodo   foreign key(idMetodo)           references Metodo_de_pago(idMetodo),
    constraint fk_Pedidos_idCliente  foreign key (idCliente)         references Clientes(idCliente),
    constraint fk_Pedidos_idUbicacion  foreign key (idUbicacion)     references Ubicaciones(idUbicacion)
);

create table Detalles_del_Pedido(
    idDetalle           int(11) auto_increment  not null,
    idPedido            int(11)                 not null,
    idProducto          int(5)                  not null,
    Precio_produco      float(8,2)              not null,
    Cantidad            int(5)                  not null,
    porcent_desc        float(5,2)              null,
    constraint pk_Detalles_del_Pedido_idDetalle            primary key(idDetalle),
    constraint fk_Detalles_del_Pedido_idPedido             foreign key (idPedido)        references Pedidos(idPedido),
    constraint fk_Detalles_del_Pedido_idProducto           foreign key (idProducto)      references Productos(idProducto)   
);