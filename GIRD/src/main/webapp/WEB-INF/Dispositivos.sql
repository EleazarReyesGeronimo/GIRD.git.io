create database inventario;

use inventario;

create table dispositivos(
                             id int not null auto_increment,
                             numSerie varchar(20) not null,
                             tipo varchar(20) not null,
                             marca varchar(50) not null,
                             modelo varchar(50) not null,
                             unidades int not null,
                             caracteristicas varchar(250) not null,
                             estatus varchar(50),
                             observaciones varchar(250),
                             unique (numSerie),
                             primary key (id)
);

create table usuarios(
                         id int not null auto_increment,
                         nombre varchar(20) not null,
                         apellido varchar(20) not null,
                         email varchar(20) not null,
                         contra varchar (224) not null,
                         tipoUsr boolean,
                         unique (email),
                         primary key (id)
);

create table prestamos(   id int primary key not null auto_increment,
                          nomAl varchar (30) not null,
                          apellAl varchar (40) not null,
                          matriAl varchar (10) not null,
                          id_dispositivos int,
                          foreign key (id_dispositivos) references dispositivos(id)
);

/*Routers*/
insert into dispositivos(numSerie, tipo, marca, modelo, unidades, caracteristicas, estatus, observaciones) values('47-10498-04', 'Router', 'Cisco', 'Cisco 2600', '1','10/100 megabits por segundo, Fast Ethernet','Disponible','N/A');
insert into dispositivos(numSerie, tipo, marca, modelo, unidades, caracteristicas, estatus, observaciones) values('21401SW-20-008', 'Router', 'Cisco', 'Cisco 2811', '1','4 HWICS, 2PVDM, 2AIMS, IP base, 64F 256D','Disponible','N/A');
insert into dispositivos(numSerie, tipo, marca, modelo, unidades, caracteristicas, estatus, observaciones) values('FTX1440AKT3', 'Router', 'Cisco', 'Cisco 1841', '1','10Mbps, Ethernet 100Mbps, Fast Ethernet hasta 115,2Kbps','Disponible','N/A');
insert into dispositivos(numSerie, tipo, marca, modelo, unidades, caracteristicas, estatus, observaciones) values('5204TC-11-017', 'Router', 'Cisco', 'Cisco 1941', '1','Ethernet LAN (RJ-45),Puerto - RS-232,puertos USB, cantidad de puertos 2 (por cada uno)','Disponible','N/A');

/*Switches*/
insert into dispositivos(numSerie, tipo, marca, modelo, unidades, caracteristicas, estatus, observaciones) values('51501SW-18-008', 'Switch', 'Cisco', 'Catalyst 3650', '1', 'RJ-45 Ethernet, Gigabit Ethernet','Disponible','N/A');
insert into dispositivos(numSerie, tipo, marca, modelo, unidades, caracteristicas, estatus, observaciones) values('51501SW-18-009', 'Switch', 'Cisco', 'Catalyst 3650', '1', 'RJ-45 Ethernet, Gigabit Ethernet','Disponible','N/A');
insert into dispositivos(numSerie, tipo, marca, modelo, unidades, caracteristicas, estatus, observaciones) values('51501SW-18-003', 'Switch', 'Cisco', 'Catalyst 3650', '1', 'RJ-45 Ethernet, Gigabit Ethernet','Disponible','N/A');

/*laptops*/
insert into dispositivos(numSerie, tipo, marca, modelo, unidades, caracteristicas, estatus, observaciones) values('51501CP/14/001', 'Laptop', 'Dell', 'Portatil', '1', 'Puerto Ethernet RJ-45, Puertos USB','Disponible','N/A');
insert into dispositivos(numSerie, tipo, marca, modelo, unidades, caracteristicas, estatus, observaciones) values('51501CP/14/002', 'Laptop', 'Dell', 'Portatil', '1', 'Puerto Ethernet RJ-45, Puertos USB','Disponible','N/A');
insert into dispositivos(numSerie, tipo, marca, modelo, unidades, caracteristicas, estatus, observaciones) values('51501CP/14/003', 'Laptop', 'Dell', 'Portatil', '1', 'Puerto Ethernet RJ-45, Puertos USB','En reparacion','No funciona la pantalla');
insert into dispositivos(numSerie, tipo, marca, modelo, unidades, caracteristicas, estatus, observaciones) values('51501CP/14/004', 'Laptop', 'Dell', 'Portatil', '1', 'Puerto Ethernet RJ-45, Puertos USB','Disponible','N/A');
insert into dispositivos(numSerie, tipo, marca, modelo, unidades, caracteristicas, estatus, observaciones) values('51501CP/14/005', 'Laptop', 'Dell', 'Portatil', '1', 'Puerto Ethernet RJ-45, Puertos USB','Disponible','N/A');
insert into dispositivos(numSerie, tipo, marca, modelo, unidades, caracteristicas, estatus, observaciones) values('51501CP/14/006', 'Laptop', 'Dell', 'Portatil', '1', 'Puerto Ethernet RJ-45, Puertos USB','Disponible','N/A');
insert into dispositivos(numSerie, tipo, marca, modelo, unidades, caracteristicas, estatus, observaciones) values('51501CP/14/007', 'Laptop', 'Dell', 'Portatil', '1', 'Puerto Ethernet RJ-45, Puertos USB','Disponible','Fallan algunas teclas');
insert into dispositivos(numSerie, tipo, marca, modelo, unidades, caracteristicas, estatus, observaciones) values('51501CP/14/008', 'Laptop', 'Dell', 'Portatil', '1', 'Puerto Ethernet RJ-45, Puertos USB','Disponible','N/A');
insert into dispositivos(numSerie, tipo, marca, modelo, unidades, caracteristicas, estatus, observaciones) values('51501CP/14/009', 'Laptop', 'Dell', 'Portatil', '1', 'Puerto Ethernet RJ-45, Puertos USB','Disponible','N/A');
insert into dispositivos(numSerie, tipo, marca, modelo, unidades, caracteristicas, estatus, observaciones) values('51501CP/14/010', 'Laptop', 'Dell', 'Portatil', '1', 'Puerto Ethernet RJ-45, Puertos USB','Disponible','N/A');
insert into dispositivos(numSerie, tipo, marca, modelo, unidades, caracteristicas, estatus, observaciones) values('51501CP/14/011', 'Laptop', 'Dell', 'Portatil', '1', 'Puerto Ethernet RJ-45, Puertos USB','Disponible','N/A');
insert into dispositivos(numSerie, tipo, marca, modelo, unidades, caracteristicas, estatus, observaciones) values('51501CP/14/012', 'Laptop', 'Dell', 'Portatil', '1', 'Puerto Ethernet RJ-45, Puertos USB','Disponible','N/A');
insert into dispositivos(numSerie, tipo, marca, modelo, unidades, caracteristicas, estatus, observaciones) values('51501CP/14/013', 'Laptop', 'Dell', 'Portatil', '1', 'Puerto Ethernet RJ-45, Puertos USB','Disponible','N/A');
insert into dispositivos(numSerie, tipo, marca, modelo, unidades, caracteristicas, estatus, observaciones) values('51501CP/14/014', 'Laptop', 'Dell', 'Portatil', '1', 'Puerto Ethernet RJ-45, Puertos USB','Disponible','N/A');

/*otros dispositivos*/
insert into dispositivos(numSerie, tipo, marca, modelo, unidades, caracteristicas, estatus, observaciones) values('5401EL/13/032', 'Telefono', 'Cisco', 'Cisco IP Phone 7942', '1', ' ','Disponible','N/A');
insert into dispositivos(numSerie, tipo, marca, modelo, unidades, caracteristicas, estatus, observaciones) values('5401EL/13/061', 'Access Point', 'Cisco', 'AIR-CAP16021-N-K9', '1', 'Tasa de transferencia: 450 Mbit/s','Disponible','N/A');
insert into dispositivos(numSerie, tipo, marca, modelo, unidades, caracteristicas, estatus, observaciones) values('5401EL/13/011', 'AP Ligero', 'Cisco', 'AIR-LAP124AG-N-K9', '1', 'Punto de acceso inalámbrico, Protocolo de gestión remota: SNMP, Telnet, HTTP, HTTPS','Disponible','N/A');

/*Usuarios*/
insert into usuarios(nombre, apellido, email, contra, tipoUsr) values('Becario','Alcon', 'becario1@utez.edu.mx', sha2('123',224), 0);
insert into usuarios(nombre, apellido, email, contra, tipoUsr) values('Administrador','Alcon', 'admin1@utez.edu.mx', sha2('321',224), 1);

select * from dispositivos;
select * from usuarios;
select * from Prestamos;