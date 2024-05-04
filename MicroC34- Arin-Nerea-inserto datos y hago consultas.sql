USE Microdesafio C34


INSERT INTO `cursos` (`titulo`, `descripcion`, `imagen`, `fecha_inicio`, `fecha_fin`, `cupo_maximo`) VALUES
('Curso de Python', 'Aprende Python desde cero', 'python.png', '2024-05-01', '2024-08-01', 30),
('Curso de JavaScript', 'Desarrollo web con JavaScript', 'javascript.png', '2024-06-01', '2024-09-01', 25),
('Curso de Diseño Gráfico', 'Fundamentos del diseño gráfico', 'design.png', '2024-07-01', '2024-10-01', 20),
('Curso de React', 'Desarrollo de interfaces con React', 'react.png', '2024-08-01', '2024-11-01', 15),
('Curso de SQL', 'Gestión de bases de datos con SQL', 'sql.png', '2024-09-01', '2024-12-01', 30),
('Curso de Java', 'Programación en Java para principiantes', 'java.png', '2024-10-01', '2025-01-01', 25),
('Curso de Ruby', 'Introducción a Ruby y Rails', 'ruby.png', '2024-11-01', '2025-02-01', 15),
('Curso de C++', 'Programación avanzada con C++', 'cpp.png', '2024-12-01', '2025-03-01', 20),
('Curso de Marketing Digital', 'Estrategias de marketing online', 'marketing.png', '2025-01-01', '2025-04-01', 30),
('Curso de Fotografía', 'Técnicas profesionales de fotografía', 'photo.png', '2025-02-01', '2025-05-01', 15),
('Curso de UX/UI', 'Diseño de experiencias y interfaces de usuario', 'uxui.png', '2025-03-01', '2025-06-01', 20),
('Curso de Cloud Computing', 'Servicios en la nube con AWS', 'cloud.png', '2025-04-01', '2025-07-01', 25),
('Curso de Data Science', 'Ciencia de datos aplicada', 'data_science.png', '2025-05-01', '2025-08-01', 15),
('Curso de Machine Learning', 'Aprendizaje automático práctico', 'ml.png', '2025-06-01', '2025-09-01', 25),
('Curso de Blockchain', 'Tecnologías y aplicaciones Blockchain', 'blockchain.png', '2025-07-01', '2025-10-01', 30);




INSERT INTO `unidades` (`curso_id`, `titulo`, `descripcion`, `fecha_inicio`) VALUES
(1, 'Introducción a Python', 'Conceptos básicos de Python', '2024-05-01'),
(1, 'Estructuras de Datos', 'Aprendiendo listas, diccionarios y más', '2024-05-15'),
(2, 'Fundamentos de JavaScript', 'Variables, funciones y estructuras', '2024-06-01'),
(3, 'Principios de Diseño', 'Entendiendo el color y la composición', '2024-07-01'),
(4, 'React Básico', 'Componentes y estado en React', '2024-08-01'),
(5, 'SQL para Principiantes', 'Consultas básicas de SQL', '2024-09-01'),
(6, 'Java y POO', 'Programación orientada a objetos con Java', '2024-10-01'),
(7, 'Ruby on Rails', 'Creación de aplicaciones con Rails', '2024-11-01'),
(8, 'C++ Avanzado', 'Punteros y gestión de memoria', '2024-12-01'),
(9, 'SEO y SEM', 'Optimización para motores de búsqueda', '2025-01-01'),
(10, 'Técnicas de Fotografía', 'Uso de la cámara y técnicas de iluminación', '2025-02-01'),
(11, 'Investigación UX', 'Métodos y herramientas de investigación', '2025-03-01'),
(12, 'AWS y EC2', 'Configuración de instancias EC2 en AWS', '2025-04-01'),
(13, 'Análisis de Datos', 'Análisis y visualización con Python', '2025-05-01'),
(14, 'Algoritmos de ML', 'Introducción a algoritmos de clasificación', '2025-06-01');

-- Insert data into `clases`
INSERT INTO `clases` (`id`, `unidad_id`, `titulo`, `descripcion`, `fecha_inicio`, `visible`) VALUES
(1, 1, 'Introducción a la Programación', 'Clase sobre los conceptos básicos de la programación.', '2024-02-01', 1),
(2, 1, 'Variables y Tipos de Datos', 'Profundización en variables y tipos de datos.', '2024-02-03', 1),
(3, 1, 'Estructuras de Control', 'Cómo controlar el flujo de un programa.', '2024-02-05', 1),
(4, 2, 'Funciones y Procedimientos', 'Uso y definiciones de funciones.', '2024-03-01', 1),
(5, 2, 'Clases y Objetos', 'Introducción a la Programación Orientada a Objetos.', '2024-03-03', 1),
(6, 2, 'Herencia y Polimorfismo', 'Conceptos avanzados de OOP.', '2024-03-05', 1),
(7, 3, 'Bases de Datos', 'Introducción a las bases de datos relacionales.', '2024-04-01', 1),
(8, 3, 'SQL y Consultas', 'Aprendiendo a realizar consultas SQL efectivas.', '2024-04-03', 1),
(9, 3, 'Normalización', 'Técnicas de normalización de bases de datos.', '2024-04-05', 1),
(10, 4, 'Frontend Basics', 'Fundamentos de HTML, CSS y JS.', '2024-05-01', 1),
(11, 4, 'Frameworks de Frontend', 'Introducción a React y Angular.', '2024-05-03', 1),
(12, 4, 'Accesibilidad Web', 'Mejores prácticas para hacer sitios accesibles.', '2024-05-05', 1),
(13, 5, 'Backend Development', 'Introducción a los conceptos del desarrollo backend.', '2024-06-01', 1),
(14, 5, 'Node.js y Express', 'Creación de servidores con Node.js.', '2024-06-03', 1),
(15, 5, 'Seguridad en Aplicaciones Web', 'Conceptos clave sobre seguridad.', '2024-06-05', 1);


-- Insert data into `usuarios`
INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `email`, `contraseña`, `categoria_id`) VALUES
(1, 'Ana', 'Torres', 'ana.torres@example.com', 'pass1234', 1),
(2, 'Luis', 'Gómez', 'luis.gomez@example.com', 'pass1234', 1),
(3, 'Carlos', 'Pérez', 'carlos.perez@example.com', 'pass1234', 2),
(4, 'Lucía', 'Jiménez', 'lucia.jimenez@example.com', 'pass1234', 2),
(5, 'María', 'López', 'maria.lopez@example.com', 'pass1234', 1),
(6, 'David', 'Martín', 'david.martin@example.com', 'pass1234', 1),
(7, 'Sofía', 'Hernández', 'sofia.hernandez@example.com', 'pass1234', 2),
(8, 'Daniel', 'Santos', 'daniel.santos@example.com', 'pass1234', 1),
(9, 'Laura', 'Castillo', 'laura.castillo@example.com', 'pass1234', 1),
(10, 'Sergio', 'Sánchez', 'sergio.sanchez@example.com', 'pass1234', 2),
(11, 'Carmen', 'Gil', 'carmen.gil@example.com', 'pass1234', 1),
(12, 'Fernando', 'Romero', 'fernando.romero@example.com', 'pass1234', 1),
(13, 'Gloria', 'Cruz', 'gloria.cruz@example.com', 'pass1234', 2),
(14, 'Ricardo', 'Ortiz', 'ricardo.ortiz@example.com', 'pass1234', 1),
(15, 'Isabel', 'Méndez', 'isabel.mendez@example.com', 'pass1234', 2);

-- Insert data into `bloques`
INSERT INTO `bloques` (`id`, `clase_id`, `titulo`, `tipo`, `contenido`, `visible`) VALUES
(1, 1, 'Introducción al Curso', 'texto', 'Bienvenidos al curso de programación básica.', 1),
(2, 1, 'Video de Bienvenida', 'video', 'url_video_bienvenida.mp4', 1),
(3, 2, 'Variables en Java', 'video', 'url_video_variables.mp4', 1),
(4, 2, 'Documento PDF', 'pdf', 'variables_datos.pdf', 1),
(5, 3, 'Control de Flujo', 'presentacion', 'diapositivas_control.ppt', 1),
(6, 3, 'Ejemplo en Video', 'video', 'url_video_control.mp4', 1),
(7, 4, 'Funciones', 'texto', 'Explicación detallada de funciones.', 1),
(8, 4, 'Archivo de Ejemplo', 'archivo', 'ejemplo_funciones.zip', 1),
(9, 5, 'POO Introducción', 'video', 'url_video_poo.mp4', 1),
(10, 5, 'Clases en Python', 'texto', 'Descripción de clases en Python.', 1),
(11, 6, 'Herencia', 'presentacion', 'diapositivas_herencia.ppt', 1),
(12, 6, 'Polimorfismo en Acción', 'video', 'url_video_polimorfismo.mp4', 1),
(13, 7, 'Bases de Datos Relacionales', 'texto', 'Introducción a las bases de datos relacionales.', 1),
(14, 7, 'SQL Básico', 'video', 'url_video_sql_basico.mp4', 1),
(15, 8, 'Consultas SQL', 'texto', 'Ejemplos de consultas SQL.', 1);

INSERT INTO `usuarios_cursos` (`usuario_id`, `curso_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5);

/*
Obtener los 5 cursos con más unidades: Escribe una consulta que devuelva los títulos de los 5 cursos
que tienen más unidades. Los resultados deben estar ordenados en orden descendente por el número de unidades.
*/

SELECT
    cursos.titulo,
    COUNT(unidades.id) AS num_unidades
FROM
    cursos
JOIN
    unidades ON cursos.id = unidades.curso_id
GROUP BY
    cursos.id, cursos.titulo
ORDER BY
    num_unidades DESC
LIMIT 5;


/*
Obtener la media de unidades por curso: Escribe una consulta que calcule la media de unidades por curso. 
Los resultados deben estar agrupados por el título del curso.
*/

SELECT
    cursos.titulo AS titulo_curso,
    AVG(unidades.id) AS media_unidades
FROM
    cursos
JOIN
    unidades ON cursos.id = unidades.curso_id
GROUP BY
    cursos.titulo;

/*Obtener los usuarios asociados a más de 3 cursos: Escribe una consulta que devuelva los nombres de los usuarios que están asociados a más de 3 cursos. 
 * Los resultados deben estar ordenados en orden ascendente por el nombre del usuario.*/
   
   -- Obtener los nombres de los usuarios asociados a más de 3 cursos
SELECT
    usuarios.nombre,
    COUNT(usuarios_cursos.curso_id) AS num_cursos
FROM
    usuarios
JOIN
    usuarios_cursos ON usuarios.id = usuarios_cursos.usuario_id
GROUP BY
    usuarios.id, usuarios.nombre
HAVING
    COUNT(usuarios_cursos.curso_id) > 3
ORDER BY
    usuarios.nombre ASC;
   
 /*Obtener las 10 primeras clases que comienzan después de una fecha determinada: Escribe una consulta que devuelva las 10 primeras clases que comienzan después de una fecha determinada. 
  * Los resultados deben estar ordenados en orden ascendente por la fecha de inicio. fecha 1 de junio de 2024 */ 
SELECT
    clases.titulo,
    clases.descripcion,
    clases.fecha_inicio
FROM
    clases
WHERE
    clases.fecha_inicio > '2024-06-01'
ORDER BY
    clases.fecha_inicio ASC
LIMIT 10;
/*  Obtener el número de bloques por tipo para una clase específica: 
 * Escribe una consulta que devuelva el número de bloques por tipo para una clase específica.
 *  Los resultados deben estar agrupados por el tipo de bloque.

*/

SELECT * FROM bloques

SELECT
    bloques.tipo,
    COUNT(*) AS cantidad
FROM
    bloques
WHERE
    bloques.clase_id = 7
GROUP BY
    bloques.tipo
ORDER BY
    bloques.tipo;

   /*Obtener el nombre y el apellido de los usuarios, sustituyendo los valores nulos por una cadena vacía: 
    * Escribe una consulta que devuelva el nombre y el apellido de los usuarios, 
    * utilizando una función para sustituir los valores nulos por una cadena vacía.
 */
   
   
SELECT
    COALESCE(nombre, '') AS Nombre,
    COALESCE(apellido, '') AS Apellido
FROM
    usuarios;

/* Obtener los 3 cursos con la mayor cantidad de usuarios: Escribe una consulta que devuelva los títulos de los 3 cursos que tienen más usuarios asociados. 
 * Los resultados deben estar ordenados en orden descendente por el número de usuarios.*/
   
INSERT INTO `usuarios_cursos` (`usuario_id`, `curso_id`) VALUES
(6, 1), (7, 1), (8, 1), (9, 1), (10, 1), (11, 1), (12, 1), (13, 1), (14, 1), (15, 1),
(6, 2), (7, 2), (8, 2), (9, 2), (10, 2), (11, 2), (12, 2), (13, 2), (14, 2), (15, 2),
(6, 5), (7, 5), (8, 5), (9, 5), (10, 5), (11, 5), (12, 5), (13, 5), (14, 5), (15, 5);

   
   SELECT
    cursos.titulo,
    COUNT(usuarios_cursos.usuario_id) AS cantidad_usuarios
FROM
    cursos
JOIN
    usuarios_cursos ON cursos.id = usuarios_cursos.curso_id
GROUP BY
    cursos.id, cursos.titulo
ORDER BY
    cantidad_usuarios DESC
LIMIT 3;

SELECT cursos.titulo, COUNT(usuarios_cursos.curso_id) AS total_inscritos
FROM cursos
LEFT JOIN usuarios_cursos ON cursos.id = usuarios_cursos.curso_id
GROUP BY cursos.id, cursos.titulo
ORDER BY total_inscritos DESC;



/*Obtener el promedio de clases por unidad para cada curso: Escribe una consulta que calcule el promedio de clases por unidad para cada curso. 
 * Los resultados deben estar agrupados por el título del curso. */

SELECT
    cursos.titulo AS titulo_curso,
    AVG(num_clases_por_unidad) AS promedio_clases_por_unidad
FROM (
    SELECT
        cursos.id AS curso_id,
        unidades.id AS unidad_id,
        COUNT(clases.id) AS num_clases_por_unidad
    FROM
        cursos
    JOIN
        unidades ON cursos.id = unidades.curso_id
    LEFT JOIN
        clases ON unidades.id = clases.unidad_id
    GROUP BY
        cursos.id, unidades.id
) AS clases_por_unidad_por_curso
JOIN
    cursos ON clases_por_unidad_por_curso.curso_id = cursos.id
GROUP BY
    cursos.titulo;


/* Obtener los usuarios con más de 2 cursos que comienzan después de una fecha determinada: 
 * Escribe una consulta que devuelva los nombres de los usuarios que están asociados a más de 2 cursos que comienzan después de una fecha determinada.
 * Los resultados deben estar ordenados en orden ascendente por el nombre del usuario.*/
   
   
   SELECT
    usuarios.nombre,
    COUNT(usuarios_cursos.curso_id) AS num_cursos
FROM
    usuarios
JOIN
    usuarios_cursos ON usuarios.id = usuarios_cursos.usuario_id
JOIN
    cursos ON usuarios_cursos.curso_id = cursos.id
WHERE
    cursos.fecha_inicio > '2024-06-01'
GROUP BY
    usuarios.id, usuarios.nombre
HAVING
    COUNT(usuarios_cursos.curso_id) > 2
ORDER BY
    usuarios.nombre ASC;

   
   
   /* Obtener las 5 últimas unidades que comienzan después de una fecha determinada: 
    * Escribe una consulta que devuelva las 5 últimas unidades que comienzan después de una fecha determinada. 
    * Los resultados deben estar ordenados en orden descendente por la fecha de inicio.*/
   
   SELECT *
FROM unidades
WHERE fecha_inicio > '2024-06-01'
ORDER BY fecha_inicio DESC
LIMIT 5;

   /* Obtener el número de usuarios por categoría para un curso específico:
    *  Escribe una consulta que devuelva el número de usuarios por categoría para un curso específico. 
    * Los resultados deben estar agrupados por la categoría del usuario.*/

SELECT 
    usuarios.id AS id_usuario,
    usuarios.nombre AS nombre_usuario,
    usuarios.apellido AS apellido_usuario,
    usuarios.categoria_id,
    COUNT(*) AS cantidad_usuarios
FROM 
    cursos
JOIN 
    usuarios_cursos ON cursos.id = usuarios_cursos.curso_id
JOIN 
    usuarios ON usuarios_cursos.usuario_id = usuarios.id
WHERE 
    cursos.titulo = 'Curso de Python' 
GROUP BY 
    usuarios.id, usuarios.nombre, usuarios.apellido, usuarios.categoria_id;


   SELECT * FROM cursos
   
   SELECT 
    cursos.titulo AS nombre_curso,
    COUNT(usuarios_cursos.usuario_id) AS cantidad_usuarios
FROM 
    cursos
LEFT JOIN 
    usuarios_cursos ON cursos.id = usuarios_cursos.curso_id
GROUP BY 
    cursos.id, cursos.titulo;
