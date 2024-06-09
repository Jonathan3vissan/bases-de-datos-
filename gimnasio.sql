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


ALTER TABLE clientes
ADD COLUMN ingresos_id INT;

SELECT * FROM clientes;


CREATE TABLE ingresos_clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    fecha_ingreso DATETIME DEFAULT CURRENT_TIMESTAMP,
    cliente_id INT
);

    ALTER TABLE ingresos_clientes ADD COLUMN historial INT;

    INSERT INTO ingresos_clientes (fecha_ingreso)
    VALUES(DEFAULT);
    
    INSERT INTO ingresos_clientes (fecha_ingreso)
    VALUES("2024/01/22");
    
    
    INSERT INTO ingresos_clientes (fecha_ingreso)
    VALUES("2024/02/22");
    
    
    INSERT INTO ingresos_clientes (fecha_ingreso)
    VALUES("2024/03/22");
    
    
    INSERT INTO ingresos_clientes (fecha_ingreso)
    VALUES("2023/12/22");

    INSERT INTO ingresos_clientes (fecha_ingreso)
    VALUES("2023/11/22");

    INSERT INTO ingresos_clientes (fecha_ingreso)
    VALUES("2023/09/22");

    INSERT INTO ingresos_clientes (fecha_ingreso)
    VALUES("2023/11/24");

    INSERT INTO ingresos_clientes (fecha_ingreso)
    VALUES("2023/12/28");

    INSERT INTO ingresos_clientes (fecha_ingreso)
    VALUES("2023/12/01");


    
  update ingresos_clientes
  set cliente_id = id
  where cliente_id is null;



 INSERT INTO clientes(ingresos_id)
 VALUES (cliente_id)
 
    
    
    
    
    
    