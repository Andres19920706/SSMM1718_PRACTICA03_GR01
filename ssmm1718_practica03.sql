DROP DATABASE IF EXISTS andomus;
CREATE DATABASE andomus;
USE andomus;

DROP TABLE IF EXISTS usuarios; #por si existe la elimina
CREATE TABLE usuarios (
 nombre             VARCHAR(20),
 pass               VARCHAR(20),
 CONSTRAINT PKuser PRIMARY KEY (nombre)
 );
 
DROP TABLE IF EXISTS sessiones; #por si existe la elimina
CREATE TABLE sessiones (
 nombre             VARCHAR(20),
 sessionid               VARCHAR(100),
 dateExpired		timestamp,
 CONSTRAINT PKuser PRIMARY KEY (sessionid,nombre)
 );
 
DROP TABLE IF EXISTS dispositivos; #por si existe la elimina
CREATE TABLE dispositivos (
 id               int NOT NULL AUTO_INCREMENT,
 localizacion     VARCHAR(30),
 estado           boolean,
 CONSTRAINT PKuser PRIMARY KEY (id)
 );
 
 #Insercción de parámetros
INSERT INTO usuarios VALUES ('Andres','123');
INSERT INTO usuarios VALUES ('Juan','345');

ALTER TABLE dispositivos AUTO_INCREMENT=1;
INSERT INTO dispositivos VALUES (null,'mesita salon',false);
INSERT INTO dispositivos VALUES (null,'cocina',false);
INSERT INTO dispositivos VALUES (4,'sofa salon',false);
INSERT INTO dispositivos VALUES (null,'pasillo',false);
INSERT INTO dispositivos VALUES (null,'dormitorio',true);
INSERT INTO dispositivos VALUES (24,'led arduino',true);
 
describe usuarios;
describe dispositivos;

SELECT * FROM usuarios;
SELECT * FROM dispositivos;
SELECT localizacion FROM dispositivos;

UPDATE dispositivos SET estado =true where id = 1;
SELECT * FROM dispositivos;
SELECT * FROM sessiones;