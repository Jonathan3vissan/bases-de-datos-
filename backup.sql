/* mysql.exe -u root -p  */

SHOW DATABASES; /* para ver todas las base de datos actuales */

DROP DATABASE ; /* para eliminar una base de datos */

/* para crear una tabla en una base de datos */
CREATE TABLE hotel (
    id INT AUTO_INCREMENT PRIMARY KEY(id); ,
    nombre VARCHAR(20) NOT NULL,
    telefono INT not NULL,
    pago VARCHAR(20) DEFAULT 'efectivo',
    
);


/* para usar una base de datos */
USE hotel; 


/* para mostrar todas las tablas en una base de datos */
SHOW TABLES;

/* describe una tabla, muestra toda la tabla com */
DESCRIBE "nombre de la tabla";


/* muestra todo el contenido de los registros en una tabla */
SELECT * FROM nombre de la tabla;

/* inserta un nuevo registro en una tabla */
INSERT INTO nombre de la tabla (nombre) 
    VALUES (" el dato que quiero agregar ");

INSERT INTO nombre de la tabla (nombre) 
    VALUES (" el dato que quiero agregar ");
INSERT INTO nombre de la tabla (nombre) 
    VALUES (" el dato que quiero agregar ");


/* agregar una columna */
ALTER TABLE nombre de la tabla 
ADD COLUMN noombre de la columna que quiero agregar INT DEFAULT 0;

/*para agregar registro a la tabla */
insert into cliente (nombre, telefono, pago)
value ('pablo',456789132,'efectivo');

insert into cliente (nombre, telefono)
value ('esteban',456789132,);
 
 insert into cliente (nombre,telefono,pago)
 value ('estela',789798987,'bono');
 
 insert into cliente (nombre,telefono,pago)
 value ('hilda',789790007,'mercado pago');

/*veo los registro de la tabla*/
SELECT * from cliente


/*agrega una columna de estadia despues de telefono y antes de pago*/ 
ALTER cliente add estadia int not null default 1 after telefono;



