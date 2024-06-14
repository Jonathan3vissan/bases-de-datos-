DROP DATABASE IF EXISTS aire;

create DATABASE aire;

show DATABASES;

use aire;

CREATE TABLE trabajos ( 
    id INT AUTO_INCREMENT ,
    nombre VARCHAR (50) NOT NULL,
    PRIMARY KEY (id)
     );

ALTER TABLE trabajos ADD COLUMN Direccion VARCHAR(80) ;

ALTER TABLE trabajos ADD COLUMN fecha DATE  ;

ALTER TABLE trabajos ADD COLUMN equipo VARCHAR(20) ;


INSERT INTO trabajos ( nombre, Direccion, fecha, equipo)
VALUES ("Esteban Estabenez", "poasdas 424,caba", "2010/12/02","bgh");

INSERT INTO trabajos ( nombre, Direccion, fecha, equipo)
VALUES ("Juana de Arco", "echendia 1424,caba", "2011/01/02","Surray");

INSERT INTO trabajos ( nombre, Direccion, fecha, equipo)
VALUES ("Eladio Carrion", "Sante Fe 24,caba", "2011/01/04","bgh");

INSERT INTO trabajos ( nombre, Direccion, fecha, equipo)
VALUES ("Brad Pit", "Anchorena 125,caba", "2011/01/04","LG");

INSERT INTO trabajos ( nombre, Direccion, fecha, equipo)
VALUES ("Eliana Perez", "avenida brasil 1024,caba", "2011/01/05","Hinense");

INSERT INTO trabajos ( nombre, Direccion, fecha, equipo)
VALUES ("Julio Petrov", "salta 255,caba", "2011/01/06","Kevineitor");

INSERT INTO trabajos ( nombre, Direccion, fecha, equipo)
VALUES ("Silvia Keiler", "moreno 508,caba", "2011/01/07","bgh");

INSERT INTO trabajos ( nombre, Direccion, fecha, equipo)
VALUES ("Raul Noe","Suipacha 501,Buenos aires", "2011/01/07","bgh");

INSERT INTO trabajos ( nombre, Direccion, fecha, equipo)
VALUES ("Mabel Sanchez", "virrey ceballos 108,caba", "2011/01/08","LG");

INSERT INTO trabajos ( nombre, Direccion, fecha, equipo)
VALUES ("Alejandro Papo", "cerrito 785,caba", "2011/01/07","Phillips");

SELECT * FROM trabajos;

