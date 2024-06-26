/*ejercicios de sqlbolt*/

/*ejercicio 2-1 consulta por condicion de columna especifica*/
SELECT * FROM movies where id=6;

 
/*ejercicio 2-2
Encuentra las películas estrenadas en la yeardécada de 2000 y 2010 
*/
SELECT * FROM movies where year BETWEEN 2000 and 2010;

/*ejercicio 2-3
Encuentra las películas no estrenadas en la yeardécada de 2000 y 2010.
*/
SELECT * FROM movies where year not BETWEEN 2000 and 2010;


/*ejercicio 2-4
Encuentra las primeras 5 películas de Pixar y su estreno year*/

SELECT title, year FROM movies WHERE year <= 2003;


ejercicio 3-1
Encuentra todas las películas de Toy Story
SELECT * FROM movies where title like "Toy Story%";

ejercicio 3-2
Encuentra todas las películas dirigidas por John Lasseter
SELECT * FROM movies where director like "John Lasseter";

ejercicio 3-3
Encuentra todas las películas (y directores) no dirigidas por John Lasseter
SELECT * FROM movies where director not like "John Lasseter";

ejercicio 3-4
Encuentra todas las películas de WALL-*
SELECT * FROM movies where title like "WALL-%";



ejercicio 4-1
Enumere todos los directores de las películas de Pixar (alfabéticamente), sin duplicados
SELECT distinct director FROM movies order by director asc;


ejercicio 4-2
Enumere las últimas cuatro películas de Pixar estrenadas (ordenadas de más reciente a menos)
SELECT title FROM movies order by year desc limit 4;

ejercicio 4-3
Enumere las cinco primeras películas de Pixar ordenadas alfabéticamente
select * from movies order by title asc limit 5 ;

ejercicio 4-4
Enumere las próximas cinco películas de Pixar ordenadas alfabéticamente
select * from movies order by title asc limit 5 offset 5 ;






ejercicio 5-1
Lista todas las ciudades canadienses y sus poblaciones.
SELECT city,population FROM north_american_cities where country like "canada" ;


ejercicio 5-2
Ordene todas las ciudades de Estados Unidos por su latitud de norte a sur
SELECT city,latitude FROM north_american_cities where country like "united states" order by latitude desc ;


ejercicio 5-3
Enumere todas las ciudades al oeste de Chicago, ordenadas de oeste a este
SELECT * FROM North_american_cities WHERE longitude < -87.629798 ORDER BY Longitude ASC;


ejercicio 5-4
Enumere las dos ciudades más grandes de México (por población)
select city,population from North_american_cities where country like "mexico" order by Population desc limit 2;


ejercicio 5-5
Enumere la tercera y cuarta ciudad más grande (por población) de los Estados Unidos y su población.
SELECT city, population FROM north_american_cities WHERE country LIKE "United States" ORDER BY population DESC LIMIT 2 OFFSET 2;








ejercicio 6-1
Encuentra las ventas nacionales e internacionales de cada película ✓
select distinct title,Domestic_sales,International_sales from Movies inner join Boxoffice  ON movies.id = boxoffice.movie_id;   

ejercicio 6-2
Muestre las cifras de ventas de cada película que obtuvo mejores resultados a nivel internacional que a nivel nacional.
select distinct title,Domestic_sales,International_sales from Movies inner join Boxoffice  ON movies.id = boxoffice.movie_id where international_sales > domestic_sales order by international_sales asc; 


ejercicio 6-3
Enumere todas las películas por clasificación en orden descendente.
select rating,title from Movies inner join Boxoffice  ON movies.id = boxoffice.movie_id order by rating desc;






ejercicio 7-1
Encuentre la lista de todos los edificios que tienen empleados.
SELECT distinct building FROM employees;


ejercicio 7-2
Encuentra la lista de todos los edificios y su capacidad.
SELECT * FROM Buildings ;


ejercicio 7-3
Enumere todos los edificios y las distintas funciones de los empleados en cada edificio (incluidos los edificios vacíos)
select distinct building_name,role from buildings left join employees on buildings.building_name=employees.building




ejercicio 8-1
Encuentre el nombre y la función de todos los empleados que no han sido asignados a un edificio
SELECT role,name,building FROM employees where building is null ;

ejercicio 8-1
Encuentre los nombres de los edificios que no tienen empleados.
SELECT DISTINCT building_name FROM buildings LEFT JOIN employees ON building_name = buildingWHERE role IS NULL;



ejercicio 9-1
Enumere todas las películas y sus ventas combinadas en millones de dólares
SELECT title, (domestic_sales + international_sales) / 1000000 AS gross_sales_millions FROM movies JOIN boxoffice ON movies.id = boxoffice.movie_id;



ejercicio 9-2
Enumere todas las películas y sus calificaciones en porcentaje.
select title, (rating *(100 /10)) as percentage from movies inner join boxoffice on movies.id=boxoffice.movie_id;


ejercicio 9-3
Enumere todas las películas que se estrenaron en años pares.
select title, (year %2 ==0) as condition from movies where condition ;


ejercicio 10-1
Encuentra el tiempo más largo que un empleado ha estado en el estudio


ejercicio 10-2
Para cada puesto, encuentre el número promedio de años empleados por los empleados en ese puesto.


ejercicio 10-3
Encuentre el número total de años de empleados trabajados en cada edificio.




/* con el primer comando distinct evita duplicados, con order by ordena los resultado y asc hace que eete orden sea alfabeticamente*/ 
SELECT distinct director FROM movies  order by director asc ;

/*con esta linea estoy motrando  columnas con la condicion de que el pais sea canada y solo muestra los registro donde country sea igual a canada", el LIKE muestra todos los resultados que sean igual a canada*/ 
select country,city,population from North_american_cities where country like "canada";



/*con esta consulta filtro con like y order by las ciudades de  estado unidos y las ordeno por su latitud de sur a norte*/
select latitude,country,city from North_american_cities where country like "United States" order by latitude desc;



/*en este ordende desde una longitud especifica donde seria chicago con el where donde el vvcalor es el valor de chicago y despues lo ordene en valor descendeteo */
select * from North_american_cities where longitude <-87.629798 order by longitude desc ;




