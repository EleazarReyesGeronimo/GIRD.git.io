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

create table prestamos(
    nomAl varchar (30) not null,
    apellAl varchar (40) not null,
    matriAl varchar (10) not null,
    entregaDisp timestamp,
    devolucionDisp timestamp,
    id_dispositivos int,
    foreign key (id_dispositivos) references dispositivos(id)
);

/*Routers*/
insert into dispositivos(numSerie, tipo, marca, modelo, unidades, caracteristicas, estatus, observaciones) values('47-10498-04', 'Router', 'cisco', 'cisco 2600', '1','10/100 megabits por segundo, Fast ethernet','disponible','N/A');
insert into dispositivos(numSerie, tipo, marca, modelo, unidades, caracteristicas, estatus, observaciones) values('21401SW-20-008', 'Router', 'cisco', 'cisco 2811', '1','4 HWICS, 2PVDM, 2AIMS, IP Base, 64F 256D','disponible','N/A');
insert into dispositivos(numSerie, tipo, marca, modelo, unidades, caracteristicas, estatus, observaciones) values('FTX1440AKT3', 'Router', 'cisco', 'cisco 1841', '1','10Mbps, Ethernet 100Mbps, Fast Ethernet Hasta 115,2Kbps','disponible','N/A');
insert into dispositivos(numSerie, tipo, marca, modelo, unidades, caracteristicas, estatus, observaciones) values('5204TC-11-017', 'Router', 'cisco', 'cisco 1941', '1','Ethernet LAN (RJ-45),Puerto - RS-232,puertos USB, cantidad de puertos 2 (por cada uno)','disponible','N/A');

/*Switches*/
insert into dispositivos(numSerie, tipo, marca, modelo, unidades, caracteristicas, estatus, observaciones) values('51501SW-18-008', 'Switch', 'cisco', 'catalyst 3650', '1', 'RJ-45 Ethernet, Gigabit Ethernet','disponible','N/A');
insert into dispositivos(numSerie, tipo, marca, modelo, unidades, caracteristicas, estatus, observaciones) values('51501SW-18-009', 'Switch', 'cisco', 'catalyst 3650', '1', 'RJ-45 Ethernet, Gigabit Ethernet','disponible','N/A');
insert into dispositivos(numSerie, tipo, marca, modelo, unidades, caracteristicas, estatus, observaciones) values('51501SW-18-003', 'Switch', 'cisco', 'catalyst 3650', '1', 'RJ-45 Ethernet, Gigabit Ethernet','disponible','N/A');

/*laptops*/
insert into dispositivos(numSerie, tipo, marca, modelo, unidades, caracteristicas, estatus, observaciones) values('51501CP/14/001', 'Laptop', 'Dell', 'portatil', '1', 'Puerto Ethernet RJ-45, Puertos USB','disponible','N/A');
insert into dispositivos(numSerie, tipo, marca, modelo, unidades, caracteristicas, estatus, observaciones) values('51501CP/14/002', 'Laptop', 'Dell', 'portatil', '1', 'Puerto Ethernet RJ-45, Puertos USB','disponible','N/A');
insert into dispositivos(numSerie, tipo, marca, modelo, unidades, caracteristicas, estatus, observaciones) values('51501CP/14/003', 'Laptop', 'Dell', 'portatil', '1', 'Puerto Ethernet RJ-45, Puertos USB','En reparacion','no finciona la pantalla');
insert into dispositivos(numSerie, tipo, marca, modelo, unidades, caracteristicas, estatus, observaciones) values('51501CP/14/004', 'Laptop', 'Dell', 'portatil', '1', 'Puerto Ethernet RJ-45, Puertos USB','disponible','N/A');
insert into dispositivos(numSerie, tipo, marca, modelo, unidades, caracteristicas, estatus, observaciones) values('51501CP/14/005', 'Laptop', 'Dell', 'portatil', '1', 'Puerto Ethernet RJ-45, Puertos USB','disponible','N/A');
insert into dispositivos(numSerie, tipo, marca, modelo, unidades, caracteristicas, estatus, observaciones) values('51501CP/14/006', 'Laptop', 'Dell', 'portatil', '1', 'Puerto Ethernet RJ-45, Puertos USB','disponible','N/A');
insert into dispositivos(numSerie, tipo, marca, modelo, unidades, caracteristicas, estatus, observaciones) values('51501CP/14/007', 'Laptop', 'Dell', 'portatil', '1', 'Puerto Ethernet RJ-45, Puertos USB','disponible','fallan unas teclas');
insert into dispositivos(numSerie, tipo, marca, modelo, unidades, caracteristicas, estatus, observaciones) values('51501CP/14/008', 'Laptop', 'Dell', 'portatil', '1', 'Puerto Ethernet RJ-45, Puertos USB','disponible','N/A');
insert into dispositivos(numSerie, tipo, marca, modelo, unidades, caracteristicas, estatus, observaciones) values('51501CP/14/009', 'Laptop', 'Dell', 'portatil', '1', 'Puerto Ethernet RJ-45, Puertos USB','disponible','N/A');
insert into dispositivos(numSerie, tipo, marca, modelo, unidades, caracteristicas, estatus, observaciones) values('51501CP/14/010', 'Laptop', 'Dell', 'portatil', '1', 'Puerto Ethernet RJ-45, Puertos USB','disponible','N/A');
insert into dispositivos(numSerie, tipo, marca, modelo, unidades, caracteristicas, estatus, observaciones) values('51501CP/14/011', 'Laptop', 'Dell', 'portatil', '1', 'Puerto Ethernet RJ-45, Puertos USB','disponible','N/A');
insert into dispositivos(numSerie, tipo, marca, modelo, unidades, caracteristicas, estatus, observaciones) values('51501CP/14/012', 'Laptop', 'Dell', 'portatil', '1', 'Puerto Ethernet RJ-45, Puertos USB','disponible','N/A');
insert into dispositivos(numSerie, tipo, marca, modelo, unidades, caracteristicas, estatus, observaciones) values('51501CP/14/013', 'Laptop', 'Dell', 'portatil', '1', 'Puerto Ethernet RJ-45, Puertos USB','disponible','N/A');
insert into dispositivos(numSerie, tipo, marca, modelo, unidades, caracteristicas, estatus, observaciones) values('51501CP/14/014', 'Laptop', 'Dell', 'portatil', '1', 'Puerto Ethernet RJ-45, Puertos USB','disponible','N/A');

/*otros dispositivos*/
insert into dispositivos(numSerie, tipo, marca, modelo, unidades, caracteristicas, estatus, observaciones) values('5401EL/13/032', 'Telefono', 'Cisco', 'Cisco IP Phone 7942', '1', ' ','disponible','N/A');
insert into dispositivos(numSerie, tipo, marca, modelo, unidades, caracteristicas, estatus, observaciones) values('5401EL/13/061', 'Access Point', 'Cisco', 'AIR-CAP16021-N-K9', '1', 'Tasa de transferencia: 450 Mbit/s','disponible','N/A');
insert into dispositivos(numSerie, tipo, marca, modelo, unidades, caracteristicas, estatus, observaciones) values('5401EL/13/011', 'AP Ligero', 'Cisco', 'AIR-LAP124AG-N-K9', '1', 'Punto de acceso inalámbrico, Protocolo de gestión remota: SNMP, Telnet, HTTP, HTTPS','disponible','N/A');

/*Usuarios*/
insert into usuarios(nombre, apellido, email, contra, tipoUsr) values('Becario','Alcon', 'becario1@utez.edu.mx', sha2('123',224), 0);
insert into usuarios(nombre, apellido, email, contra, tipoUsr) values('Administrador','Alcon', 'admin1@utez.edu.mx', sha2('321',224), 1);

select * from dispositivos;
select * from usuarios;
select * from Prestamos;