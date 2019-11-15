create database peliculas;
create user peliculas identified by 'peliculas';
use peliculas;
grant all on peliculas.* to peliculas;
/*vamos a crear tablas*/
CREATE TABLE USUARIO (
dni varchar(9) NOT NULL PRIMARY KEY,
nombre varchar(25) not null,
apellidos varchar(50),
contraseña varchar(30) not null,
edad int(2) not null
);


/*VAMOS A CREAR LA TABLA DE TARJETAS DEL USUARIO*/
CREATE TABLE TARJETAS(
  NUMERO INT(10) PRIMARY KEY NOT NULL,
  CANTIDAD INT(7),
  dniusuario varchar(9),
  FOREIGN KEY (DNIUSUARIO)  REFERENCES USUARIO(dni)
);

/*Crearemos la tabla peliculas*/
CREATE TABLE PELICULAS(
  CODIGO INT(9) NOT NULL PRIMARY KEY,
  TITULO VARCHAR(50) NOT NULL,
  GENERO VARCHAR(50),
  DURACION INT(3),
  edad INT(2) NOT NULL,
  PRECIO INT(6) NOT NULL,
  descripcion text
);

/*CREAR TABLA COMPRAS*/
CREATE TABLE COMPRAS(
  CODCOMPRA INT(5) PRIMARY KEY NOT NULL,
  FECHA DATE NOT NULL,
  TOTALCOMPA INT(6),
  DNIUSUARIO VARCHAR(9), 
  FOREIGN KEY (DNIUSUARIO) REFERENCES USUARIO(dni)
);

/*CREAR LINEA DE COMRAS*/
CREATE TABLE Lineas(
  CODLINEA INT(5) PRIMARY KEY NOT NULL,
  CODCOMPRA INT(5),
  CODPELICULA INT(9),  
  FOREIGN KEY (CODCOMPRA) REFERENCES COMPRAS(CODCOMPRA),
  FOREIGN KEY (CODPELICULA) REFERENCES PELICULAS(CODIGO),
  CANTIDAD INT(6),
  PRECIOTOTAL INT(6)
);
/*********Insertar datos en la tabla*USUARIO******/
insert into USUARIO values("72904689W","bruno","Heernando Escobar","escobar123",19);
insert into USUARIO values("7903300v","abde","ourba","ourba123",26);
insert into USUARIO values("7965485F","alexito","el guapo","abdelalimiamorprecioso69",16);
insert into USUARIO values("72904886S","javier","homles","javier123",52);
insert into USUARIO values("25631752A","coli","crespo","coligg",90);

/***********Insertar datos la tabla*Peliculas***/

/**consulta**/
select p.titulo from usuario u, peliculas p, compras c, lineas l where u.dni=c.dniusuario and c.codcompra=l.codcompra and l.codpelicula=p.codigo and  u.nombre like 'bruno' and u.contraseña like 'escobar123'
