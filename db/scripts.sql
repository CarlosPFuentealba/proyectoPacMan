-- creación de tablas

create table trabajador(
	rut varchar(9) primary key,
    nombre varchar(99) not null,
    telefono int not null
);

create table mesa(
	id_mesa varchar(4) primary key,
    numero int not null,
    estado int not null default 0
);

create table consumible (
	id_consumible varchar(4) primary key,
    nombre varchar(99) not null,
    descripcion varchar(99) not null,
    precio int not null
);

create table cuenta(
	id_cuenta varchar(10) primary key,
    estado_cuenta int default 0,
    id_mesa varchar(4) references mesa(id_mesa)
);

create table comanda(
	id_lista int not null auto_increment primary key,
	id_cuenta varchar(10) references cuenta(id_cuenta),
    id_consumible varchar(4) references consumible(id_consumible)
);
	
-- inserciones

insert into trabajador values
('194027613','CARLOS ALARCON',945162640),
('190832562','MARCELO ASTORGA',912345678);

insert into mesa values
('0001',1,0),
('0002',2,0),
('0003',3,0),
('0004',4,0);

insert into consumible values
('0001','COCA COLA 1 LITRO','BEBIDA SABOR COLA',1500),
('0002','HAMBURGUESA MAS SABOR','HAMBURGUESA PALTA TOMATE QUESO',2500),
('0003','COMPLETO ITALIANO','COMPLETO PALTA TOMATE MAYO',1500);

insert into cuenta values 
('0000000001',0,'0001'),
('0000000002',0,'0002');

insert into comanda (id_cuenta,id_consumible)  values
('0000000001','0001');

