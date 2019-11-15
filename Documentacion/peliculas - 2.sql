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
  descripcion text,
  stock int(3) not null
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
INSERT INTO `peliculas`(`CODIGO`, `TITULO`, `GENERO`, `DURACION`, `edad`, `PRECIO`, `descripcion`, `stock`) VALUES (1,"Joker","drama",122,16,20,"peliculas/pelicula.html",15);
INSERT INTO `peliculas`(`CODIGO`, `TITULO`, `GENERO`, `DURACION`, `edad`, `PRECIO`, `descripcion`, `stock`) VALUES (2,"Frozen 2","fantasía",120,3,19,"peliculas/pelicula.html",10);
INSERT INTO `peliculas`(`CODIGO`, `TITULO`, `GENERO`, `DURACION`, `edad`, `PRECIO`, `descripcion`, `stock`) VALUES (3,"Terminator","ciencia ficción",134,16,15,"peliculas/pelicula.html",9);
INSERT INTO `peliculas`(`CODIGO`, `TITULO`, `GENERO`, `DURACION`, `edad`, `PRECIO`, `descripcion`, `stock`) VALUES (4,"Toy Story 4","aventura",100,3,12,"peliculas/pelicula.html",6);
INSERT INTO `peliculas`(`CODIGO`, `TITULO`, `GENERO`, `DURACION`, `edad`, `PRECIO`, `descripcion`, `stock`) VALUES (5,"Cristal","drama",129,16,21,"peliculas/pelicula.html",20);
INSERT INTO `peliculas`(`CODIGO`, `TITULO`, `GENERO`, `DURACION`, `edad`, `PRECIO`, `descripcion`, `stock`) VALUES (6,"Capitana Marvel","ciencia ficción",125,3,14,"peliculas/pelicula.html",5);
INSERT INTO `peliculas`(`CODIGO`, `TITULO`, `GENERO`, `DURACION`, `edad`, `PRECIO`, `descripcion`, `stock`) VALUES (7,"IT Capítulo 2","terror",170,18,11,"peliculas/pelicula.html",8);
INSERT INTO `peliculas`(`CODIGO`, `TITULO`, `GENERO`, `DURACION`, `edad`, `PRECIO`, `descripcion`, `stock`) VALUES (8,"Spider-man","ciencia ficción",129,3,17,"peliculas/pelicula.html",15);
INSERT INTO `peliculas`(`CODIGO`, `TITULO`, `GENERO`, `DURACION`, `edad`, `PRECIO`, `descripcion`, `stock`) VALUES (9,"Aladin","romántico",128,12,9,"peliculas/pelicula.html",4);
INSERT INTO `peliculas`(`CODIGO`, `TITULO`, `GENERO`, `DURACION`, `edad`, `PRECIO`, `descripcion`, `stock`) VALUES (10,"Dumbo","Fantasía",112,3,8,"peliculas/pelicula.html",10);
INSERT INTO `peliculas`(`CODIGO`, `TITULO`, `GENERO`, `DURACION`, `edad`, `PRECIO`, `descripcion`, `stock`) VALUES (11,"Men in Black","Ciencia ficción",115,16,11,"peliculas/pelicula.html",10);
INSERT INTO `peliculas`(`CODIGO`, `TITULO`, `GENERO`, `DURACION`, `edad`, `PRECIO`, `descripcion`, `stock`) VALUES (12,"Pikachu","Fanteasía",105,3,12,"peliculas/pelicula.html",6);
INSERT INTO `peliculas`(`CODIGO`, `TITULO`, `GENERO`, `DURACION`, `edad`, `PRECIO`, `descripcion`, `stock`) VALUES (13,"Zombieland","acción",109,18,21,"peliculas/pelicula.html",20);
INSERT INTO `peliculas`(`CODIGO`, `TITULO`, `GENERO`, `DURACION`, `edad`, `PRECIO`, `descripcion`, `stock`) VALUES (14,"El Rey León","aventura",118,3,15,"peliculas/pelicula.html",5);
INSERT INTO `peliculas`(`CODIGO`, `TITULO`, `GENERO`, `DURACION`, `edad`, `PRECIO`, `descripcion`, `stock`) VALUES (15,"IT Capítulo 2","terror",170,18,11,"peliculas/pelicula.html",8);
INSERT INTO `peliculas`(`CODIGO`, `TITULO`, `GENERO`, `DURACION`, `edad`, `PRECIO`, `descripcion`, `stock`) VALUES (16,"Spider-man","ciencia ficción",129,3,17,"peliculas/pelicula.html",15);
INSERT INTO `peliculas`(`CODIGO`, `TITULO`, `GENERO`, `DURACION`, `edad`, `PRECIO`, `descripcion`, `stock`) VALUES (17,"Shazam","ciencia ficción",132,12,4,"peliculas/pelicula.html",15);
INSERT INTO `peliculas`(`CODIGO`, `TITULO`, `GENERO`, `DURACION`, `edad`, `PRECIO`, `descripcion`, `stock`) VALUES (18,"Gemini Man","acción",140,16,12,"peliculas/pelicula.html",10);
INSERT INTO `peliculas`(`CODIGO`, `TITULO`, `GENERO`, `DURACION`, `edad`, `PRECIO`, `descripcion`, `stock`) VALUES (19,"Fast & Furious: Hobbs & Shaw","acción",136,16,15,"peliculas/pelicula.html",9);
INSERT INTO `peliculas`(`CODIGO`, `TITULO`, `GENERO`, `DURACION`, `edad`, `PRECIO`, `descripcion`, `stock`) VALUES (20,"Fast & Furious 8 ","acción",134,16,14,"peliculas/pelicula.html",9);
INSERT INTO `peliculas`(`CODIGO`, `TITULO`, `GENERO`, `DURACION`, `edad`, `PRECIO`, `descripcion`, `stock`) VALUES (21,"Fast & Furious 7","acción",140,16,13,"peliculas/pelicula.html",10);
INSERT INTO `peliculas`(`CODIGO`, `TITULO`, `GENERO`, `DURACION`, `edad`, `PRECIO`, `descripcion`, `stock`) VALUES (22,"Fast & Furious 6","acción",130,16,12,"peliculas/pelicula.html",20);
INSERT INTO `peliculas`(`CODIGO`, `TITULO`, `GENERO`, `DURACION`, `edad`, `PRECIO`, `descripcion`, `stock`) VALUES (23,"Fast & Furious 5","acción",137,16,11,"peliculas/pelicula.html",3);
INSERT INTO `peliculas`(`CODIGO`, `TITULO`, `GENERO`, `DURACION`, `edad`, `PRECIO`, `descripcion`, `stock`) VALUES (24,"Fast & Furious: Bandoleros","acción",136,16,10,"peliculas/pelicula.html",5);
INSERT INTO `peliculas`(`CODIGO`, `TITULO`, `GENERO`, `DURACION`, `edad`, `PRECIO`, `descripcion`, `stock`) VALUES (25,"Fast & Furious: más rápido","acción",120,16,9,"peliculas/pelicula.html",9);
INSERT INTO `peliculas`(`CODIGO`, `TITULO`, `GENERO`, `DURACION`, `edad`, `PRECIO`, `descripcion`, `stock`) VALUES (26,"Fast & Furious: Tokyo ","acción",126,16,8,"peliculas/pelicula.html",7);
INSERT INTO `peliculas`(`CODIGO`, `TITULO`, `GENERO`, `DURACION`, `edad`, `PRECIO`, `descripcion`, `stock`) VALUES (27,"Fast & Furious 2","acción",115,16,7,"peliculas/pelicula.html",21);
INSERT INTO `peliculas`(`CODIGO`, `TITULO`, `GENERO`, `DURACION`, `edad`, `PRECIO`, `descripcion`, `stock`) VALUES (28,"Fast & Furious","acción",107,16,20,"peliculas/pelicula.html",10);
