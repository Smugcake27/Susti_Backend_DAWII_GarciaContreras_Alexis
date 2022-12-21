DROP DATABASE IF EXISTS DAW2_Susti_GarciaContreras;

CREATE DATABASE DAW2_Susti_GarciaContreras;

USE DAW2_Susti_GarciaContreras;

DROP TABLE IF EXISTS `categoria`;
CREATE TABLE `categoria` (
  `idcategoria` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
PRIMARY KEY (`idcategoria`)
);

insert into	`categoria` values (1, 'Matematicas');
insert into	`categoria` values (2, 'Ciencias');
insert into	`categoria` values (3, 'Social');
insert into	`categoria` values (4, 'Deportes');
insert into	`categoria` values (5, 'Musica');
select * from `categoria`;


DROP TABLE IF EXISTS `docente`;
CREATE TABLE `docente` (
  `iddocente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `dni` char(8) DEFAULT NULL,
  `fechaNacimiento` date DEFAULT NULL,
  `sueldo` double DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `sexo` varchar(45) DEFAULT NULL,
  `idcategoria` int NOT NULL,
  PRIMARY KEY (`iddocente`),
  KEY `fk_docente_categoria_idx` (`idcategoria`),
  CONSTRAINT `fk_docente_categoria` FOREIGN KEY (`idcategoria`) REFERENCES `categoria` (`idcategoria`)
) ENGINE=InnoDB AUTO_INCREMENT=359;

insert into	`docente` values (1, 'Juanito Perez','89745715','2022-04-20',300.50,'Juanito.perez@susti.com','masculino',4);
insert into	`docente` values (2, 'Vera Mendoza','56278426','2021-05-11',1000.60,'Vera.Men@susti.com','femenino',1);
insert into	`docente` values (3, 'Rosario Ramirez','5678123','2022-07-07',2500.50,'Rosa.rami@susti.com','femenino',2);
insert into	`docente` values (4, 'Federico Martinez','56478154','2022-04-01',1500.99,'FedeMa@susti.com','masculino',5);
insert into	`docente` values (5, 'Ramiro Romero','26835487','2021-03-09',3000.50,'RAro@susti.com','masculino',3);

select * from `docente`;