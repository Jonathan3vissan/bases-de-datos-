DROP DATABASE IF EXISTS gimnasio;

CREATE DATABASE gimnasio;

SHOW DATABASES;

use gimnasio;

CREATE TABLE clientes (
    id INT AUTO_INCREMENT ,
    nombre VARCHAR(50) NOT NULL,
    PRIMARY KEY(id)
    
);


ALTER TABLE clientes ADD COLUMN
fecha_de_naciemiento DATE NOT NULL;

SELECT * FROM clientes;

ALTER TABLE clientes ADD COLUMN
apto_fisico tinyint(1);

INSERT INTO clientes (nombre , fecha_de_naciemiento,apto_fisico)
VALUES ("juan lopez", "1988/01/31",false);

INSERT INTO clientes (nombre , fecha_de_naciemiento,apto_fisico)
VALUES ("elena tevez","2000/11/30",1);

INSERT INTO clientes (nombre , fecha_de_naciemiento,apto_fisico)
VALUES ("lucas pelon", "1980/09/21",false);

INSERT INTO clientes (nombre , fecha_de_naciemiento,apto_fisico)
VALUES ("estabna quito", "2010/05/04",false);

INSERT INTO clientes (nombre , fecha_de_naciemiento,apto_fisico)
VALUES ("julia vega", "1997/08/07",false);

INSERT INTO clientes (nombre , fecha_de_naciemiento,apto_fisico)
VALUES ("patricia perez", "1970/12/08",true);

INSERT INTO clientes (nombre , fecha_de_naciemiento,apto_fisico)
VALUES ("malene irar", "2003/01/23",true);

INSERT INTO clientes (nombre , fecha_de_naciemiento,apto_fisico)
VALUES ("martin gersi", "2000/06/18",true);

INSERT INTO clientes (nombre , fecha_de_naciemiento,apto_fisico)
VALUES ("florencia petat", "1989/08/23",true);

INSERT INTO clientes (nombre , fecha_de_naciemiento,apto_fisico)
VALUES ("gabriel flores", "2005/08/15",true);

SELECT * FROM clientes;

