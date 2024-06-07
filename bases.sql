/* mysql.exe -u root -p  */

SHOW DATABASES; /* para ver todas las base de datos actuales */

DROP DATABASE nombre_db; /* para eliminar una base de datos */

/* para crear una tabla en una base de datos */
CREATE TABLE "nombre de la base datos" (
    id INT AUTO_INCREMENT,
    nombre VARCHAR(50) NOT NULL,
    PRIMARY KEY(id)
);


/* para usar una base de datos */
USE nombre_db; 


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
