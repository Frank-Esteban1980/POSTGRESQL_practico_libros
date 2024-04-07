Ejercicios de Curso realizado de la profesora LINCY GONZALEZ ROJAS https://www.linkedin.com/learning/instructors/lincy-gonzalez-rojas?dApp=56230123&leis=LAA&u=74034196

--  ********* CREAR MOFIFICAR TABLAS


Las tablas autor y libro de este ejercicio se crean y relacionan mediante el sistema gráfico de POSTRESQL.
El resto de tablas están acontinuación.

----  ********** CREAR TABLAS *****


CREATE TABLE libro_autor
(
    autor_id integer NOT NULL,
    libro_id integer NOT NULL,
    CONSTRAINT libro_autor_pkey PRIMARY KEY (autor_id, libro_id),
    CONSTRAINT "FK_AUTOR" FOREIGN KEY (autor_id)
        REFERENCES autor (id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT "FK_LIBRO" FOREIGN KEY (libro_id)
        REFERENCES Libro (id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

CREATE TABLE usuario
(
    id serial NOT NULL,
    nombre character varying(50) COLLATE pg_catalog."default" NOT NULL,
    apellido character varying(50) COLLATE pg_catalog."default" NOT NULL,
    telefono character varying(20) COLLATE pg_catalog."default" NOT NULL,
    email character varying(50) COLLATE pg_catalog."default" NOT NULL,
    direccion text COLLATE pg_catalog."default",
    CONSTRAINT usuario_pkey PRIMARY KEY (id)
);

CREATE TABLE prestamo
(
    id serial NOT NULL,
    usuario_id integer NOT NULL,
    libro_id integer NOT NULL,
    fecha_salida date NOT NULL,
    fecha_devolucion date NOT NULL,
    CONSTRAINT prestamo_pkey PRIMARY KEY (id),
    CONSTRAINT "FK_PRESTAMO_LIBRO" FOREIGN KEY (libro_id)
        REFERENCES libro (id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE,
    CONSTRAINT "FK_PRESTAMO_USUARIO" FOREIGN KEY (usuario_id)
        REFERENCES usuario (id) MATCH SIMPLE
        ON UPDATE CASCADE
        ON DELETE CASCADE
);


----- ********* INSERTAR DATOS EN TABLAS *****

Se usa la sentencia:

INSERT INTO nombre_tabla(atributo1, atributo2,atributo_n)
 VALUES (datoatributo1, datoatributo2,datoatributo_n);


INSERT INTO autor(nombre, apellido) VALUES ('Katlynn', 'Katlynn');
INSERT INTO autor(nombre, apellido) VALUES ('Juanita', 'Lind');
INSERT INTO autor(nombre, apellido) VALUES ('Estrella', 'Reichel');
INSERT INTO autor(nombre, apellido) VALUES ('Marc', 'Emard');
INSERT INTO autor(nombre, apellido) VALUES ('Isidora', 'Valls');
INSERT INTO autor(nombre, apellido) VALUES ('Hugo', 'Cazorla');
INSERT INTO autor(nombre, apellido) VALUES ('Dionisio', 'Valencia');
INSERT INTO autor(nombre, apellido) VALUES ('Didac', 'Mejias');
INSERT INTO autor(nombre, apellido) VALUES ('Sandra', 'Zurita');
INSERT INTO autor(nombre, apellido) VALUES ('Anselmo', 'Gonzalez');
INSERT INTO autor(nombre, apellido) VALUES ('Ronny', 'Delgado');
INSERT INTO autor(nombre, apellido) VALUES ('Nancy', 'Monge');
INSERT INTO autor(nombre, apellido) VALUES ('Hortensia', 'Prieto');
INSERT INTO autor(nombre, apellido) VALUES ('Soraya', 'Calvo');
INSERT INTO autor(nombre, apellido) VALUES ('Heider', 'Chavarria');

INSERT INTO libro(titulo, "fecha_publicacion", isbn) VALUES ('Dragón Europeo', '2004-06-03', 23467);
INSERT INTO libro( titulo, "fecha_publicacion", isbn) VALUES ('Contemplador Matemático', '1981-09-26', 42843);
INSERT INTO libro( titulo, "fecha_publicacion", isbn) VALUES ('Descubre el maravilloso mundo de las flores', '1967-06-15', 81986);
INSERT INTO libro( titulo, "fecha_publicacion", isbn) VALUES ('Las diferentes fases de la luna', '1999-09-06', 73997);
INSERT INTO libro( titulo, "fecha_publicacion", isbn) VALUES ('Remedios caseros', '1965-08-23', 5824);
INSERT INTO libro( titulo, "fecha_publicacion", isbn) VALUES ('Recetas de cocina variada', '1975-12-16', 45670);
INSERT INTO libro( titulo, "fecha_publicacion", isbn) VALUES ('Técnicas de costura tradicional', '2015-03-26', 22115);
INSERT INTO libro( titulo, "fecha_publicacion", isbn) VALUES ('Todo lo que debes saber sobre carros', '1988-04-16', 77309);
INSERT INTO libro( titulo, "fecha_publicacion", isbn) VALUES ('Trucos para armar tus rompecabezas', '2001-05-14', 65445);
INSERT INTO libro( titulo, "fecha_publicacion", isbn) VALUES ('Aprende un nuevo deporte en 21 días', '1973-11-28', 14975);
INSERT INTO libro( titulo, "fecha_publicacion", isbn) VALUES ('Las maravillas del mundo', '1963-10-10', 40279);
INSERT INTO libro( titulo, "fecha_publicacion", isbn) VALUES ('Programa tus tareas diarias', '1954-05-08', 9708);
INSERT INTO libro( titulo, "fecha_publicacion", isbn) VALUES ('¿Cómo trabajar desde casa?', '2003-05-09', 32084);
INSERT INTO libro( titulo, "fecha_publicacion", isbn) VALUES ('Aprenda sobre PostgreSQL', '1963-06-03', 81083);
INSERT INTO libro( titulo, "fecha_publicacion", isbn) VALUES ('Fundamentos de programación', '1984-06-17', 38557);
INSERT INTO libro( titulo, "fecha_publicacion", isbn,autor_id) VALUES ('Fundamentos de programación', '1984-06-17', 38557,2);

INSERT INTO libro_autor(autor_id, libro_id) VALUES (2, 1);
INSERT INTO libro_autor(autor_id, libro_id) VALUES (13,1);
INSERT INTO libro_autor(autor_id, libro_id) VALUES (9,1);
INSERT INTO libro_autor(autor_id, libro_id) VALUES (12,2);
INSERT INTO libro_autor(autor_id, libro_id) VALUES (17,2);
INSERT INTO libro_autor(autor_id, libro_id) VALUES (6,3);
INSERT INTO libro_autor(autor_id, libro_id) VALUES (2,4);
INSERT INTO libro_autor(autor_id, libro_id) VALUES (8,4);
INSERT INTO libro_autor(autor_id, libro_id) VALUES (16,5);
INSERT INTO libro_autor(autor_id, libro_id) VALUES (3,5);
INSERT INTO libro_autor(autor_id, libro_id) VALUES (7,6);
INSERT INTO libro_autor(autor_id, libro_id) VALUES (4,7);
INSERT INTO libro_autor(autor_id, libro_id) VALUES (5,7);
INSERT INTO libro_autor(autor_id, libro_id) VALUES (13,8);
INSERT INTO libro_autor(autor_id, libro_id) VALUES (7,8);
INSERT INTO libro_autor(autor_id, libro_id) VALUES (9,9);
INSERT INTO libro_autor(autor_id, libro_id) VALUES (11,9);
INSERT INTO libro_autor(autor_id, libro_id) VALUES (11,10);
INSERT INTO libro_autor(autor_id, libro_id) VALUES (5,11);
INSERT INTO libro_autor(autor_id, libro_id) VALUES (10,12);
INSERT INTO libro_autor(autor_id, libro_id) VALUES (14,12);
INSERT INTO libro_autor(autor_id, libro_id) VALUES (13,12);
INSERT INTO libro_autor(autor_id, libro_id) VALUES (12,13);
INSERT INTO libro_autor(autor_id, libro_id) VALUES (7,13);
INSERT INTO libro_autor(autor_id, libro_id) VALUES (15,14);
INSERT INTO libro_autor(autor_id, libro_id) VALUES (14,14);
INSERT INTO libro_autor(autor_id, libro_id) VALUES (17,15);
INSERT INTO libro_autor(autor_id, libro_id) VALUES (13,16);
INSERT INTO libro_autor(autor_id, libro_id) VALUES (16,16);
INSERT INTO libro_autor(autor_id, libro_id) VALUES (10,16);

INSERT INTO usuario(nombre, apellido, telefono, email, direccion) VALUES ('Katlynn', 'Hyatt', '(123) 6567-9242', 'katlynnhyatt@test.com', 'Montreal, Canadá');
INSERT INTO usuario(nombre, apellido, telefono, email, direccion)VALUES ('Juanita', 'Lind', '(123) 8592-2238', 'juanitalind@test.com', 'Hannover, Alemania');
INSERT INTO usuario(nombre, apellido, telefono, email, direccion)VALUES ('Estrella', 'Reichel', '(123) 4696-4386', 'estrellareichel@test.com', 'Melbourne, Australia');
INSERT INTO usuario(nombre, apellido, telefono, email, direccion)VALUES ('Marc', 'Emard', '(123) 4322-4462', 'marcemard@test.com', 'San José, Costa Rica');
INSERT INTO usuario(nombre, apellido, telefono, email, direccion)VALUES ('Camren', 'Marks', '(123) 9291-7517', 'camrenmarks@test.com', 'Río de Janeiro, Brasil');
INSERT INTO usuario(nombre, apellido, telefono, email, direccion)VALUES ('Brandi', 'Dibbert', '(123) 6851-6846', 'brandidibbert@test.com', 'Guadalajara, México');
INSERT INTO usuario(nombre, apellido, telefono, email, direccion)VALUES ('Wallace', 'Lubowitz', '(123) 6432-2244', 'wallacelubowitz@test.com', 'San Miguelito, Panamá');
INSERT INTO usuario(nombre, apellido, telefono, email, direccion)VALUES ('Corene', 'Ullrich', '(123) 9749-6374', 'coreneullrich@test.com', 'San Francisco, Estados Unidos');
INSERT INTO usuario(nombre, apellido, telefono, email, direccion)VALUES ('Alexa', 'Lynch', '(123) 2314-9754', 'alexalynch@test.com', 'Cali, Colombia');
INSERT INTO usuario(nombre, apellido, telefono, email, direccion)VALUES ('Cleta', 'Gutmann', '(123) 6622-3153', 'cletagutmann@test.com', 'Cali, Colombia');
INSERT INTO usuario(nombre, apellido, telefono, email, direccion)VALUES ('Manuel', 'Walsh', '(123) 8263-6379', 'manuelwalsh@test.com', 'Guadalajara, México');
INSERT INTO usuario(nombre, apellido, telefono, email, direccion)VALUES ('Trudie', 'Pouros', '(123) 2162-2162', 'trudiepouros@test.com', 'Bogotá, Colombia');
INSERT INTO usuario(nombre, apellido, telefono, email, direccion)VALUES ('Gladyce', 'Trantow', '(123) 8744-9396', 'gladycetrantow@test.com', 'Toronto, Canadá');
INSERT INTO usuario(nombre, apellido, telefono, email, direccion)VALUES ('Mariam', 'Baumbach', '(123) 2383-7126', 'mariambaumbach@test.com', 'Venecia, Italia');
INSERT INTO usuario(nombre, apellido, telefono, email, direccion)VALUES ('Marilie', 'Metz', '(123) 7565-7264', 'mariliemetz@test.com', 'Sevilla, España');
INSERT INTO usuario(nombre, apellido, telefono, email, direccion)VALUES ('Angelina', 'Sawayn', '(123) 1287-8174', 'angelinasawayn@test.com', 'Sidney, Australia');
INSERT INTO usuario(nombre, apellido, telefono, email, direccion)VALUES ('Aiyana', 'Goldner', '(123) 8222-7892', 'aiyanagoldner@test.com', 'Kioto, Japón');
INSERT INTO usuario(nombre, apellido, telefono, email, direccion)VALUES ('Assunta', 'Raynor', '(123) 9238-2589', 'assuntaraynor@test.com', 'Lucerna, Suiza');
INSERT INTO usuario(nombre, apellido, telefono, email, direccion)VALUES ('Kennith', 'Blanda', '(123) 9825-2935', 'kennithblanda@test.com', 'Nueva York, Estados Unidos');
INSERT INTO usuario(nombre, apellido, telefono, email, direccion)VALUES ('George', 'Weissnat', '(123) 6599-8313', 'georgeweissnat@test.com', 'Berlin, Alemania');
INSERT INTO usuario(nombre, apellido, telefono, email, direccion)VALUES ('Terry', 'Russel', '(123) 4977-5266', 'terryrussel@test.com', 'Graz, Austria');

 
INSERT INTO prestamo(usuario_id, libro_id, fecha_salida, fecha_devolucion) VALUES (11,6,'2020-02-03','2020-07-12');
INSERT INTO prestamo(usuario_id, libro_id, fecha_salida, fecha_devolucion) VALUES (10,12,'2020-02-15','2020-06-01');
INSERT INTO prestamo(usuario_id, libro_id, fecha_salida, fecha_devolucion) VALUES (15,1,'2020-02-24','2020-04-13');
INSERT INTO prestamo(usuario_id, libro_id, fecha_salida, fecha_devolucion) VALUES (20,9,'2020-02-06','2020-04-26');
INSERT INTO prestamo(usuario_id, libro_id, fecha_salida, fecha_devolucion) VALUES (14,12,'2020-02-07','2020-06-17');
INSERT INTO prestamo(usuario_id, libro_id, fecha_salida, fecha_devolucion) VALUES (5,6,'2020-03-04','2020-08-27');
INSERT INTO prestamo(usuario_id, libro_id, fecha_salida, fecha_devolucion) VALUES (16,6,'2020-02-14','2020-04-10');
INSERT INTO prestamo(usuario_id, libro_id, fecha_salida, fecha_devolucion) VALUES (7,9,'2020-03-10','2020-07-15');
INSERT INTO prestamo(usuario_id, libro_id, fecha_salida, fecha_devolucion) VALUES (19,16,'2020-02-20','2020-06-29');
INSERT INTO prestamo(usuario_id, libro_id, fecha_salida, fecha_devolucion) VALUES (20,3,'2020-01-13','2020-09-28');
INSERT INTO prestamo(usuario_id, libro_id, fecha_salida, fecha_devolucion) VALUES (16,2,'2020-02-19','2020-06-17');
INSERT INTO prestamo(usuario_id, libro_id, fecha_salida, fecha_devolucion) VALUES (16,3,'2020-01-10','2020-10-06');
INSERT INTO prestamo(usuario_id, libro_id, fecha_salida, fecha_devolucion) VALUES (21,10,'2020-02-23','2020-09-30');
INSERT INTO prestamo(usuario_id, libro_id, fecha_salida, fecha_devolucion) VALUES (19,9,'2020-02-21','2020-08-19');
INSERT INTO prestamo(usuario_id, libro_id, fecha_salida, fecha_devolucion) VALUES (9,7,'2020-01-08','2020-07-16');
INSERT INTO prestamo(usuario_id, libro_id, fecha_salida, fecha_devolucion) VALUES (17,13,'2020-01-31','2020-06-12');
INSERT INTO prestamo(usuario_id, libro_id, fecha_salida, fecha_devolucion) VALUES (20,7,'2020-02-18','2020-04-14');
INSERT INTO prestamo(usuario_id, libro_id, fecha_salida, fecha_devolucion) VALUES (3,7,'2020-02-09','2020-10-07');
INSERT INTO prestamo(usuario_id, libro_id, fecha_salida, fecha_devolucion) VALUES (8,15,'2020-02-27','2020-05-30');
INSERT INTO prestamo(usuario_id, libro_id, fecha_salida, fecha_devolucion) VALUES (16,5,'2020-01-12','2020-05-19');
INSERT INTO prestamo(usuario_id, libro_id, fecha_salida, fecha_devolucion) VALUES (11,4,'2020-03-09','2020-06-27');
INSERT INTO prestamo(usuario_id, libro_id, fecha_salida, fecha_devolucion) VALUES (10,15,'2020-01-31','2020-08-19');
INSERT INTO prestamo(usuario_id, libro_id, fecha_salida, fecha_devolucion) VALUES (17,2,'2020-02-28','2020-09-20');
INSERT INTO prestamo(usuario_id, libro_id, fecha_salida, fecha_devolucion) VALUES (19,13,'2020-02-08','2020-07-13');
INSERT INTO prestamo(usuario_id, libro_id, fecha_salida, fecha_devolucion) VALUES (14,6,'2020-02-09','2020-05-23');
INSERT INTO prestamo(usuario_id, libro_id, fecha_salida, fecha_devolucion) VALUES (11,2,'2020-02-10','2020-09-25');
INSERT INTO prestamo(usuario_id, libro_id, fecha_salida, fecha_devolucion) VALUES (12,8,'2020-02-15','2020-08-21');
INSERT INTO prestamo(usuario_id, libro_id, fecha_salida, fecha_devolucion) VALUES (1,16,'2020-02-21','2020-06-09');
INSERT INTO prestamo(usuario_id, libro_id, fecha_salida, fecha_devolucion) VALUES (4,14,'2020-02-02','2020-08-11');
INSERT INTO prestamo(usuario_id, libro_id, fecha_salida, fecha_devolucion) VALUES (18,5,'2020-01-11','2020-09-03');
INSERT INTO prestamo(usuario_id, libro_id, fecha_salida, fecha_devolucion) VALUES (13,8,'2020-01-30','2020-09-20');
INSERT INTO prestamo(usuario_id, libro_id, fecha_salida, fecha_devolucion) VALUES (19,1,'2020-01-15','2020-04-28');
INSERT INTO prestamo(usuario_id, libro_id, fecha_salida, fecha_devolucion) VALUES (7,6,'2020-02-08','2020-05-13');
INSERT INTO prestamo(usuario_id, libro_id, fecha_salida, fecha_devolucion) VALUES (2,8,'2020-03-10','2020-04-07');
INSERT INTO prestamo(usuario_id, libro_id, fecha_salida, fecha_devolucion) VALUES (21,3,'2020-01-15','2020-04-20');
INSERT INTO prestamo(usuario_id, libro_id, fecha_salida, fecha_devolucion) VALUES (13,5,'2020-01-22','2020-09-11');
INSERT INTO prestamo(usuario_id, libro_id, fecha_salida, fecha_devolucion) VALUES (9,5,'2020-02-15','2020-04-01');
INSERT INTO prestamo(usuario_id, libro_id, fecha_salida, fecha_devolucion) VALUES (8,10,'2020-01-08','2020-09-11');
INSERT INTO prestamo(usuario_id, libro_id, fecha_salida, fecha_devolucion) VALUES (8,8,'2020-02-07','2020-09-01');
INSERT INTO prestamo(usuario_id, libro_id, fecha_salida, fecha_devolucion) VALUES (15,11,'2020-02-09','2020-07-10');
INSERT INTO prestamo(usuario_id, libro_id, fecha_salida, fecha_devolucion) VALUES (1,13,'2020-02-15','2020-06-12');
INSERT INTO prestamo(usuario_id, libro_id, fecha_salida, fecha_devolucion) VALUES (3,7,'2020-01-08','2020-10-09');
INSERT INTO prestamo(usuario_id, libro_id, fecha_salida, fecha_devolucion) VALUES (6,2,'2020-02-02','2020-04-25');
INSERT INTO prestamo(usuario_id, libro_id, fecha_salida, fecha_devolucion) VALUES (15,11,'2020-03-07','2020-10-04');
INSERT INTO prestamo(usuario_id, libro_id, fecha_salida, fecha_devolucion) VALUES (15,3,'2020-02-14','2020-09-13');
INSERT INTO prestamo(usuario_id, libro_id, fecha_salida, fecha_devolucion) VALUES (9,15,'2020-01-24','2020-04-20');
INSERT INTO prestamo(usuario_id, libro_id, fecha_salida, fecha_devolucion) VALUES (16,5,'2020-03-04','2020-08-16');
INSERT INTO prestamo(usuario_id, libro_id, fecha_salida, fecha_devolucion) VALUES (3,15,'2020-02-02','2020-07-25');
INSERT INTO prestamo(usuario_id, libro_id, fecha_salida, fecha_devolucion) VALUES (1,5,'2020-01-20','2020-04-21');
INSERT INTO prestamo(usuario_id, libro_id, fecha_salida, fecha_devolucion) VALUES (1,14,'2020-02-19','2020-07-10');



-- ********* Consultas con  SELECT

Para realizar consultas sencillas o básicas utilizamos:

SELECT columnas consultadas FROM nombre_tabla;

El * permite buscar todas las columnas de una tabla

select * from libro;
select titulo from libro;
select titulo, isbn from libro;
select usuario_id, fecha_salida, fecha_devolucion from prestamo order by usuario_id;

---SELECT DISTINCT para ver solo los resultado que no están duplicados
-- ORDER BY nos devuelve los resultados de forma ordenada sea ascendente o descente según un critero

select usuario_id, libro_id from prestamo order by usuario_id asc;

select distinct usuario_id, libro_id 
from prestamo
order by usuario_id asc;

    

-- ***** ****** SENTENCIA WHERE ******

--WHERE nos permite poner una condición en la consulta que estamos realizando
	
	SELECT columnas a consultar
	FROM nombre_tabla
	WHERE condicion
	ORDER BY criterio_ordenar

--Buscar el autor con id 16

select id, nombre, apellido from autor
where id=16;

--buscar el autor con id_autor 16

select autor_id, nombre, apellido from autor
where autor_id=16;

-- Buscar el autor con apellido Calvo
select id, nombre, apellido from autor
where nombre = 'Soraya';
select * from autor
where nombre = 'Soraya';

--Préstamos superiores al 4 de octubre de 2019 y desde 1 octubre de 2020

select * from prestamo
where fecha_devolucion>'2019-10-04';

select * from prestamo
where fecha_devolucion>='2020-10-01';

--Buscar por email y otra que no cumpla la condición

select * from usuario where email = 'terryrussel@test.com';

select * from libro where id = 50;



-- ******** VALUES list


--Permite generar una tabla constante que se puede utilizar en una consulta sin tener que crear y completar una tabla en el disco
-- Es decir son tablas de prueba que no se guardan en disco, tiene habilidata order by y limit.
--El ejemplo indica una tabla con dos columnas NUMERO, LETRA y cada una recoje el número y la forma de escribir en letras

select * from (VALUES(1, 'uno'), (2,'dos'), (2,'tres'), (2,'cuatro')) AS t(numero, letra);
select * from (VALUES(1, 'uno'), (2,'dos'), (2,'tres'), (2,'cuatro')) AS t(numero, letra) order by letra;
select * from (VALUES (1, 'uno'), (2,'dos'), (2,'tres'), (2,'cuatro')) AS t(numero, letra) order by numero;

-- se puede hacer lo mismo que utilizando la UNION ALL

select 1 as numero, 'uno' as letra
UNION ALL
select 2, 'dos'
union all
select 3, 'tres'
union all
select 4, 'cuatro'

-- Cinco alumnos y sus notas
select * from (VALUES ('Pedro', 9, 'Sobresaliente'),('María', 10, 'Sobresaliente'),('Miguel', 7, 'Notable'),
			  ('Luis', 5, 'Suficiente'),('Juan', 4, 'Suspenso'),('Ana', 6, 'Suficiente'))AS NOTAS (Alumno, Nota, Calificación);

select 1 as numero, 'uno' as letra
UNION ALL
select 2, 'dos'
union all
select 3, 'tres'
union all
select 4, 'cuatro'


-- ********* ACTUALIZAR INFORMACIÓN *****

-- UPDATE [tabla] SET [columna modificar] WHERE [condicion]

-- **Importante, hay que poner una clausula WHERE con la condicion deseada, sino se cambia toda la tabla

update usuario
set telefono ='(34)9130-21316'
where id=6;

-- Cambiar dos datos a la vez

update usuario
set telefono ='(42)9130-21355', email = 'brandi09@hotmaill.com'
where id=6;



-- ******** DELETE ---

-- Borra un registro o tada la información de una tabla
-- IMPORTANTE tiene que llevar la cláusula where con una condición, sino borra toda la tabla

delete from prestamo where id=50;
select *from prestamo;


--******** Devolver datos de filas modificadas ---

--Insertamos  datos y pedimos que muestre algúna columna o más insertadas
insert into prestamo (usuario_id, libro_id, fecha_salida, fecha_devolucion)
values (2, 14, '2020-02-19','2020-07-10')
returning id;


insert into prestamo (usuario_id, libro_id, fecha_salida, fecha_devolucion)
values (2, 14, '2020-02-19','2020-07-10')
returning id, usuario_id;

insert into prestamo (usuario_id, libro_id, fecha_salida, fecha_devolucion)
values (2, 14, '2020-02-19','2020-07-10')
returning *;

-- Acualizamos un dato en la columna de una tabla con una condición y pedimos en salida unos datos

update prestamo
set fecha_devolucion = '2020-08-10'
where id = 51
returning fecha_salida, fecha_devolucion as DEVOLUCION;

Delete from prestamo
where id = 51
returning *;


-- ******** OPERADORES LÓGICOS ******

-- *** OPERADOR AND ***

-- Realizará una consulta con dos condiciones y devolverá resultados que cumplan las dos condiciones.

-- Buscar los libros prestados con código libro_id 5 y fecha devolucion después del 1 de enero de 2020:

select * from prestamo 
where libro_id = 5  and fecha_devolucion > '2020-01-01';

select * from prestamo 
where libro_id = 3  and fecha_devolucion > '202-10-01';

-- Si no cumple los dos no da resultados

select * from libro
where fecha_publicacion > '1980-01-01' and autor_id =10;

select * from libro
where fecha_publicacion > '2000-01-01' and fecha_publicacion < '1964-01-01';


-- *** OR ***

-- La sentencia obliga a que uno de los dos sean verdaderos y devuelve todos los datos que cumplan una u otra o ambas:

select * from prestamo 
where libro_id = 5  or fecha_devolucion > '2020-01-01';

select * from prestamo 
where libro_id = 3  or fecha_devolucion > '2020-10-01';

select * from libro
where fecha_publicacion > '2000-01-01' or autor_id =10;

select * from libro
where fecha_publicacion > '2000-01-01' or fecha_publicacion < '1964-01-01';



-- ******** OPERADORES DE COMPARACIÓN ********

--Necesitamos conocer los préstamos con fecha de salida despues de 1 marzo 2020:

select * from prestamo 
where fecha_salida > '2020-03-01';

-- Buscamos los libros publicados antes de 1980
select * from libro 
where fecha_publicacion < '1980-01-01';

-- Queremo los libros que tengan id mayor a 10

select * from libro
where libro_id > 10;

-- Queremo los libros que tengan id mayor o igual a 10

select * from libro
where libro_id >= 10;

-- Queremo los libros que tengan id menor o igual a 10
select * from libro
where libro_id <= 10;

select * from libro
where fecha_publicacion > '2000-01-01' and fecha_publicacion < '1964-01-01';

-- Buscar los libros cuyo id sea distinto de 10
select * from libro
where libro_id != 10;

select * from libro
where libro_id <> 10;


-- ******** SELECCIÓN DE RANGOS *******

-- Nos sirve para hacer consultas de datos que están en un rango de números o de fechas
-- *** BETWEEN - NOT BETWEEN **

--Seleccionar los libro que fueron publicados entre  1 eneror 1960 y 1 de enero 1970.

select * from libro
where fecha_publicacion between '1960-01-01' and '1970-01-01'
order by fecha_publicacion;

--Seleccionar los libro que NO fueron publicados entre  1 eneror 1960 y 1 de enero 1970.

select * from libro
where fecha_publicacion not between '1960-01-01' and '1970-01-01'
order by fecha_publicacion;

-- COMPARACIÓN DE VALORES NULL

-- NULL no es un valor por lo que no se puede comparar con números o cadenas de caracteres.

--El resultado de intentos de comparaacion NULL con otros será NULL

--Insertamos un dato sin la dirección y veremos en la tabla que aparecerá y en dirección pone [null]

insert into usuario (nombre, apellido, telefono, email)
VALUES('Ross','Rojas','(123)7877-4267','rossrojas@test.com');

select * from usuario where nombre = 'Ross';

--si queremos buscar el usuario sin dirección, no habrá resultado, ya que siempre devuelve falso:

select * from usuario where direccion =null;

--Pero en lugar de hacer la comparación de igualdad, podemos usar IS NULL o isnull y nos aparecerán los registro con dirección null

select * from usuario where direccion is null;

-- y al contrario si queremos verificar los no nulos usamos IS NO NULL o NOTNULL

select * from usuario where direccion is NOT null;



-- ******** COMPARACIÓN DE DATOS BOOLEANOS ********

-- Los datos booleans tienen tres estados: true, false y null

select * from (VALUES(1, true),(2, false),(3, true),(4, null)) as disponible (libro, disponible);

-- La sentencia is true retorna las filas que son verdad.
select * from (VALUES(1, true),(2, false),(3, true),(4, null)) as disponible (libro, disponible)
where disponible is true;

-- La sentencia is not true devuelve los falso o null
select * from (VALUES(1, true),(2, false),(3, true),(4, null)) as disponible (libro, disponible)
where disponible is not true;

-- la sentencia is false, devuelve los falsos
select * from (VALUES(1, true),(2, false),(3, true),(4, null)) as disponible (libro, disponible)
where disponible is false;

-- tenemos las sentecia is not false, que nos da los verdaderos o desconocidos
select * from (VALUES(1, true),(2, false),(3, true),(4, null)) as disponible (libro, disponible)
where disponible is not false;

-- Para busar los desconocidos usamos IS UNKNONW. O con is not unknown tendremos los no null sea verdadero o falso
select * from (VALUES(1, true),(2, false),(3, true),(4, null)) as disponible (libro, disponible)
where disponible is UNKNOWN ;

select * from (VALUES(1, true),(2, false),(3, true),(4, null)) as disponible (libro, disponible)
where disponible is not UNKNOWN ;


-- ******** FUNCIONES *****----

-- ***FUNCIONES MATEMATICAS

-- abs() devuelve el valor absoluto de lo que tenemos en el paréntesis
select abs (-15.3)
select abs (-15+3) as resultado

-- ceil() devuelve el valor redondeado hacia arriba, entero más cercano mayor al argumento 
select ceil(22.2)
select abs (ceil(-15.3))

-- floor() devuelve el entero más cercano menor al valor dado o redondea hacia abajo
select floor (52.8)
select (floor(-15.3))
select abs (floor(-15.3))

-- round() redondea un número
select round(14.52)

-- factoria() devuelve el factorial de un número. Producto de los números anteriores al argumento
select factorial (5)

-- log() devuelve el logaritmo de un numero en base 10
select log(100)
select log(90)

-- mod(m, n) MODULO devuelve el resto de la división entre valores m, n
select mod(9, 4)

-- pi() da el valor de pi
select pi();

-- power(a, x) retorna el valor a elevado a la potencia x
select power (2, 3)

-- sqrt() devuelve la raiz cuadrada 
select sqrt(25) as  raiz



-- ******** FUNCIONES DE TEXTO ****

-- *** CONCAT permite unir el contenido de dos columnas de la misma tabla
select * from usuario;
select concat(nombre, ' ', apellido) from usuario;

-- *** CONCAT_WS concatena los datos de las dos columnas de una tabla, pero primero indicamos el tipo de separación
select concat_ws(' --> ', nombre, apellido)from usuario;

--*** INITCAP () convierte la primera letra de cada palabra en mayúscula y el resto a minúscula
select initcap(titulo) from libro;

--** md5() devuelve el argumento escrito en hexadecimal
select md5('password')
select md5('Enero')

--** substr(celda, numero caracteres) devuelve los n últimos caracteres de una celda
select substr(titulo, 14) from libro where id =3;
select titulo from libro where id=3;
select substr(titulo, 14) from libro;



-- ********* OPERADOR LIKE ****

--Permite buscar un dato poniendo los primeros caracteres buscados y al final el signo %
-- Sirve para la construcción de patrones
select * from libro where titulo like 'Aprend%';

select * from autor
where nombre like 'Nanc%';

select * from autor where nombre like 'Jua%';

select * from autor where nombre like 'S%';

-- Se puede usar otro comodín, %xxx% que busca unos datos sin importar su posición en el texto
--Buscar los registro que no contengan de y otra desde:
select * from libro where titulo like '%de%';
select * from libro where titulo like '%desde%';

-- El comodín _ nos devuelve una palabra que empiece con cualquier letra tenga la letra de referencia y continue con cualquier caracter
select * from libro where titulo like'_e%'

-- NOT LIKE devuelve verdadero cuando el valor no coincide con el patrón
--Buscar los registro que no contengan de y otra para ma

select * from libro where titulo not like '%de%';
select * from libro where titulo not like '%ma%';
select * from libro where titulo not like'_e%';



-- ******** OPERADOR SIMILAR TO - TRIM ********

-- Devuelve verdadero o falso dependiendo de si su valor coincide con el patrón de la cadena dada
-- La diferencia con like es que utiliza los patrones booleanos. se puede usar los comodines.
--Buscar el libro donde el título sea Remedios caseros

select * from libro where titulo similar to 'Remedios caseros';
select * from libro where titulo similar to '%(an|al)%';

-- *** TRIM elimina la cadena más larga que contiene un caracter específico de una cadena. 
-- Elmina los espacios si no se indica qué caracter eliminar

select 
trim (leading from '   Cursos SQL'),  --trim(leading ...) elimina los espacios caracteres de la izquierda
trim (trailing from 'Curso de postgre   '),-- trim(trailing...)elimina los espacios del final
trim('   Curso de MySql   '); -- trim elimina los espacios de izq y derecha, si no se especifica

-- *** LTRIM elimina todos los caracteres y espacios por defecto al inicio de la cadena

select ltrim ('Curso de SQLServer', 'Curso de ');
select rtrim('Curso de MySQL', 'SQL');

-- *** Rtrim elimina todos los caracteres y espacios por defecto al final de la cadena

select rtrim('Curso de MySQL', 'SQL')
select rtrim('Bibilioteca Jovellanos en Gijón', 'en Gijón');

-- *** BTRIM elimina el caracter específico al inicio y al final de la cadena origen

select btrim('aprende una nueva lengua', 'a');
select btrim('aprende una nueva lengua', 'a');
select btrim('Estudiar en frente de la playa en la bilioteca de Gijón', 'e');

-- *** LOWER convierte en minúscula los caracteres

select lower (nombre) from autor;
select lower('ASTURIAS: GIJON Y OVIEDO');

-- *** UPPER converte en mayúscula los caractres de una cadena

select upper (titulo) from libro;
select upper('madrid: el escorial y aranjuez');



-- ********* FUNCIONES DE TIEMPO *******

--Permiten conseguir el tiempo (años, meses, días,horas) que ha pasado desde una fecha a la fecha actual

-- AGE() devuelve el timpo en años meses dias desde el momento en el argumento hasta hoy
select titulo, AGE(fecha_publicacion) as ANIVERSARIO from libro;

-- CURRENT_DATE nos devuelve la fehca actual
-- CURRENT_TIME nos devuelve la hora actual
-- NOW combina las dos anteriore y nos devuelve la fecha y la hora actuales

select current_date
select current_time
select now()


-- ********* FUNCIONES PARA TIPOS DE DATOS ENUM ******

-- Los tipos ENUM deben crearse mediante del comando CREATE TYPE se almacena un conjunto de valores estático y ordenado.
-- como los puntos cardinales de una brújula (norte, sur, este, oeste), días de la semana.
-- Los valores deben ser del mismo tipo y estar recogido en el conjunto

-- El tipo enum se puede usar en las funciones o en las definiciones de tabla como otros tipos.

create type paises AS ENUM ('Portugal','España','Francia','Alemania','Italia','Grecia','Polonia')
create type Equipos AS ENUM ('Real Madrid','Barcelona','Valencia','Sevilla','Atletico de Madrid','Atletic de Bilbao','Deportivo de la Coruña')

-- ENUM_FIRST ENUM_LAST devueleven los primero y último elemento de un conjunto
select enum_first(null::paises);
select enum_last(null::paises);
select enum_range(null::paises);

--ENUM RANGE (ELEMENTO1::LISTA, ELEMENTO1::LISTA);
select enum_range('España'::paises,'Italia'::paises); 
select enum_range('Barcelona'::Equipos,'Athetic de Bilbao'::Equipos);

select enum_range(null::paises, 'Francia'::paises)-- si el parámetro 1 es null, devuelve todos los anteriores el valor indcado
select enum_range('Barcelona'::Equipos,null::Equipos); --devuelve todos lo elementos apartir de Barcelona, si el parámetro final es null


--********* FUNCIONES DE BÚSQUEDA *****---

-- TSVECTOR es un tipo de dato de PostgreSQL que son una lista de palabras extraídas de un documento eliminando signos de puntiación, tildes o palabras cortas
-- nos sibre para la búsqueda de datos con palabras clave específicas
-- Es decir quita todo los signos de puntuación, los plurales
-- Por ejemplo la búsqueda de usurariod segun la direccion

select to_tsvector(direccion) from usuario;

-- Para realizar la búsqueda se usa TSQUERRY que es otro tipo de dato que contiene un conjunto de palabra en texto simple y organizadas 
-- expresión booleana, puede tener and,or, not ;

select * from usuario where to_tsvector(direccion) @@ to_tsquery('Canadá');


-- ********** GROUP BY ********

--GROUP BY condensará los datos en una sola fila si comparten los mismos valores de la expresión de agrupamiento. Se puede aplicar la función de SUM o de COUNT

-- Cuántos préstamos de libros ha realizado cada usuario

select usuario_id, count(id)
from prestamo
group by usuario_id;

-- Saber si cuántos libros tiene los autores y ordenarlos ascendentemente según cantidad de libros

select autor_id,  count(autor_id)
from libro
group by autor_id
order by count(autor_id)desc;

-- ****** HAVING *******
-- Filtra o especifica una condición de búsqueda para un grupo o agragados según una condición.
-- Se usa con el group by para filtrar grupos o agregados con una condición específica 

-- Saber los usuario que han realizado más de 3 préstamos

select usuario_id, count(id)
from prestamo
group by usuario_id
having count(id)>3;

-- ******* GROUPING SET *******

-- Es una cláusula de groupby, permite definir varios grupos de conjuntos en la misma consulta
-- Cantidad de préstamos por usuario y por libro que se han realizado. para verlo mejor ordenamos en descendente

select usuario_id, libro_id, count(id)
from prestamo
group by GROUPING SETS(
	(usuario_id, libro_id),
	(usuario_id),
	(libro_id))
order by count(id)desc;


-- ***ROLLUP
-- 
select usuario_id, libro_id, count(id)
from prestamo
group by ROLLUP(usuario_id, libro_id);

select usuario_id, libro_id, count(id)
from prestamo
group by ROLLUP(libro_id, usuario_id );


--***CUBE Agrupa por las columnas especificadas en el paréntesis y además 

--Buscar cuántas veces un libro ha sido solicitado y la cantidad de veces que el usuario ha hecho un préstamo
select usuario_id, libro_id, count(id)
from prestamo
group by cube(libro_id, usuario_id );



-- ********** ORDENAMIENTO DE DATOS ********

-- ORDER BY ordena los datos según una expresión sea ascendente o descendente

select * from libro order by titulo asc;
select * from libro order by titulo desc;


-- ********** LIMIT - OFFSET ********

-- LIMIT limita la cantidad de resultados que devolverá. Si no ponemos nada o null aparecerán todos los registros
--ver usarios de tabla usuario
select * from usuario;
select  * from usuario limit 11;

-- OFFSET nos permite elegir desde que elemento empezará el rango para el resultado de la consulta
-- Si queremos ver los usuarios desde el id 4 que nos de 10 registros

select * from usuario limit 10 offset 4;
select * from usuario limit 6 offset 2;
select * from libro order by titulo desc limit 5 offset 2;
select * from autor order by nombre asc limit 10 offset 9;


-- ********** UNION DE TABLAS *******-----

-- *** CROSS JOIN *****
-- Permite crear un producto cartesiano entre dos o más tablas, es decir junta las filas incolumnas de todas las tablas
--sintaxis  
	--   	SELECT * FROM tabla1
	--	CROSS JOIN tabla2;

select * from prestamo
cross join usuario;

select * from libro
cross join autor;

select * from libro
cross join usuario;


-- ******** ** INNER JOIN ******

--Permite unir datos de diferentes tablas

-- Crea unanueva tabla con los resultados obtenidos de la comparación de cada registro de ambas tablas y devuelve lo que coinciden con el criterio establecido


--sintaxis  SELECT tabla1.columna, tabla1.columna2, tabla1.columnax, tabla2.columna, tabla2.columna2, tabla.columnay
	--		FROM tabla1
	-- 		INNER JOIN tabla2 ON tabla2.FK = tabla1.FK

--Necesitamos el nombre y apellidos del usuario y la fecha de devolución de cada libro	

select usuario.id,usuario.nombre,usuario.apellido, prestamo.libro_id, prestamo.fecha_devolucion
from usuario
inner join prestamo on prestamo.usuario_id = usuario.id
order by usuario.id;

-- Necesitamos los nombres y apellidos de los usuario y la fecha de salida de cada libro

select usuario.id, usuario.nombre, usuario.apellido, prestamo.libro_id, fecha_salida
from usuario
inner join prestamo on prestamo.usuario_id = usuario.id
order by id;

--Busamos el nombre y apellido de autores con los títulos escritos por cada uno y su publicación de 

select autor.autor_id, autor.nombre, autor.apellido, libro.titulo,libro.fecha_publicacion
from autor
inner join libro on libro.autor_id = autor.autor_id


-- ********* LEFT OUTER JOIN  ******

-- Permite realizar búsquedas de información en tablas de datos distintas
-- Se puede busar filas de la tabla a y otros de la tabla b
--Buscaremos el id, título de la tabla libro, y por otro lado la fecha de salida y devolución de préstamo


-- sintaxis: 

--		SELECT TABLAA.FILA1, TABLAA.FILA2, TABLAB.FILA1, TABLAB.FILA2
--		FROM TABLAA
--		LEFT JOIN tablaB ON tablaB.PK = tablaA.FK

select prestamo.id, libro.titulo, prestamo.fecha_salida, prestamo.fecha_devolucion
from libro
left join prestamo on prestamo.libro_id = libro.id
order by prestamo.id;

--********* RIGHT JOIN ****

-- RIGHT JOIN comienza a recoger los datos de la tabla de la derecha comprueba si el valor de fk de izquierda es igual a fk de izquierda
-- Es decir, selecciona todas la filas de la tabla de la derecha, y que coinciden con la izquierda. Sino crea otra fila con valores de izq null
-- sintaxix:

--		SELECT TABLAizq.FILA1, TABLAder.FILA2, TABLAizq.FILA1, TABLAizq.FILA2
--		FROM TABLAizq
--		RIGHT JOIN TABLAder ON TABLAizq.PK = TABLAder.FK


--Seleccionar información de préstamos y libros

select prestamo.id, libro.titulo, prestamo.fecha_salida, prestamo.fecha_devolucion
from prestamo
right join libro on prestamo.libro_id=libro.id
order by prestamo.id


-- ********* FULL OUTER JOIN ***

-- Combina los resultados de las JOIN left y right y devuelve todas las filas coincidentes o no de las tablas
-- Si una tabla no tiene una o unas filas, creará una fila nueva completando esos datos con NULL

-- Vamos a selecacionar la información del usuario y de prestamo el id y fecha


--		SELECT TABLAA.FILA1, TABLAA.FILA2, TABLAB.FILA1, TABLAB.FILA2
--		FROM TABLAA
--		FULL JOIN tablaB ON tablaB.PK = tablaA.FK

select usuario.id, usuario.nombre, usuario.apellido, prestamo.id, prestamo.fecha_devolucion
from usuario
full join prestamo on prestamo.usuario_id = usuario.id
order by usuario.id;


-- ********** NATURAL JOIN *****--

-- Primero crear dos nuevas tablas para el ejemplo

CREATE TABLE pais(
	pais_id serial PRIMARY KEY,
	pais_nombre varchar (250) not null);
	
CREATE TABLE ciudad(
	ciudad_id serial PRIMARY KEY,
	pais_id int not null,
	ciudad_nombre varchar (250) not null,
	FOREIGN KEY (pais_id)REFERENCES pais (pais_id)
);

-- Insertamos unos datos

INSERT INTO pais (pais_nombre)
VALUES
('Costa Rica'),
('Estados Unidos'),
('China'),
('Portugal'),
('Francia'),
('Italia'),
('España');

INSERT INTO ciudad (pais_id, ciudad_nombre)
VALUES
(1,'Alajuela'),
(1,'Cartago'),
(2,'New York'),
(2,'Los Angeles'),
(3,'Beijing '),
(3,'Shanghai'),
(4,'Lisboa'),
(5,'Paris'),
(6,'Milán'),
 (6,'Roma'),
 (6,'Venecia'),
 (7,'Madrid'),
(7,'Oviedo');

-- Natural join no utiliza la cláusula de referenci, la tiene implícita, por lo que solo
-- necesita que las tablas estén relacionadas con un FK. En este caso pais_id
-- el resultado
-- Reutiliza las columnas que tiene el mismo nombre en ambas tablas

select pais_id, pais_nombre, ciudad_nombre 
from pais
natural join ciudad;








