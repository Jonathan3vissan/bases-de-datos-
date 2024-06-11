
/* con el primer comando distinct evita duplicados, con order by ordena los resultado y asc hace que eete orden sea alfabeticamente*/ 
SELECT distinct director FROM movies  order by director asc ;

/*con esta linea estoy motrando  columnas con la condicion de que el pais sea canada y solo muestra los registro donde country sea igual a canada", el LIKE muestra todos los resultados que sean igual a canada*/ 
select country,city,population from North_american_cities where country like "canada";



/*con esta consulta filtro con like y order by las ciudades de  estado unidos y las ordeno por su latitud de sur a norte*/
select latitude,country,city from North_american_cities where country like "United States" order by latitude desc;



/*en este ordende desde una longitud especifica donde seria chicago con el where donde el vvcalor es el valor de chicago y despues lo ordene en valor descendeteo */
select * from North_american_cities where longitude <-87.629798 order by longitude desc ;




