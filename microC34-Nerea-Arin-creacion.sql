-- MariaDB dump 10.19  Distrib 10.4.28-MariaDB, for osx10.10 (x86_64)
--
-- Host: localhost    Database: MicrodesafioC34
-- ------------------------------------------------------
-- Server version	10.4.28-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bloques`
--

DROP TABLE IF EXISTS `bloques`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bloques` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `clase_id` int(10) unsigned NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `tipo` enum('texto','video','presentacion','pdf','archivo') NOT NULL,
  `contenido` text NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `clase_id` (`clase_id`),
  CONSTRAINT `bloques_ibfk_1` FOREIGN KEY (`clase_id`) REFERENCES `clases` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bloques`
--

LOCK TABLES `bloques` WRITE;
/*!40000 ALTER TABLE `bloques` DISABLE KEYS */;
INSERT INTO `bloques` VALUES (1,1,'Introducción al Curso','texto','Bienvenidos al curso de programación básica.',1),(2,1,'Video de Bienvenida','video','url_video_bienvenida.mp4',1),(3,2,'Variables en Java','video','url_video_variables.mp4',1),(4,2,'Documento PDF','pdf','variables_datos.pdf',1),(5,3,'Control de Flujo','presentacion','diapositivas_control.ppt',1),(6,3,'Ejemplo en Video','video','url_video_control.mp4',1),(7,4,'Funciones','texto','Explicación detallada de funciones.',1),(8,4,'Archivo de Ejemplo','archivo','ejemplo_funciones.zip',1),(9,5,'POO Introducción','video','url_video_poo.mp4',1),(10,5,'Clases en Python','texto','Descripción de clases en Python.',1),(11,6,'Herencia','presentacion','diapositivas_herencia.ppt',1),(12,6,'Polimorfismo en Acción','video','url_video_polimorfismo.mp4',1),(13,7,'Bases de Datos Relacionales','texto','Introducción a las bases de datos relacionales.',1),(14,7,'SQL Básico','video','url_video_sql_basico.mp4',1),(15,8,'Consultas SQL','texto','Ejemplos de consultas SQL.',1);
/*!40000 ALTER TABLE `bloques` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clases`
--

DROP TABLE IF EXISTS `clases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clases` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `unidad_id` int(10) unsigned NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `fecha_inicio` date NOT NULL,
  `visible` tinyint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `unidad_id` (`unidad_id`),
  CONSTRAINT `clases_ibfk_1` FOREIGN KEY (`unidad_id`) REFERENCES `unidades` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clases`
--

LOCK TABLES `clases` WRITE;
/*!40000 ALTER TABLE `clases` DISABLE KEYS */;
INSERT INTO `clases` VALUES (1,1,'Introducción a la Programación','Clase sobre los conceptos básicos de la programación.','2024-02-01',1),(2,1,'Variables y Tipos de Datos','Profundización en variables y tipos de datos.','2024-02-03',1),(3,1,'Estructuras de Control','Cómo controlar el flujo de un programa.','2024-02-05',1),(4,2,'Funciones y Procedimientos','Uso y definiciones de funciones.','2024-03-01',1),(5,2,'Clases y Objetos','Introducción a la Programación Orientada a Objetos.','2024-03-03',1),(6,2,'Herencia y Polimorfismo','Conceptos avanzados de OOP.','2024-03-05',1),(7,3,'Bases de Datos','Introducción a las bases de datos relacionales.','2024-04-01',1),(8,3,'SQL y Consultas','Aprendiendo a realizar consultas SQL efectivas.','2024-04-03',1),(9,3,'Normalización','Técnicas de normalización de bases de datos.','2024-04-05',1),(10,4,'Frontend Basics','Fundamentos de HTML, CSS y JS.','2024-05-01',1),(11,4,'Frameworks de Frontend','Introducción a React y Angular.','2024-05-03',1),(12,4,'Accesibilidad Web','Mejores prácticas para hacer sitios accesibles.','2024-05-05',1),(13,5,'Backend Development','Introducción a los conceptos del desarrollo backend.','2024-06-01',1),(14,5,'Node.js y Express','Creación de servidores con Node.js.','2024-06-03',1),(15,5,'Seguridad en Aplicaciones Web','Conceptos clave sobre seguridad.','2024-06-05',1);
/*!40000 ALTER TABLE `clases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cursos`
--

DROP TABLE IF EXISTS `cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cursos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `imagen` varchar(255) DEFAULT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `cupo_maximo` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cursos`
--

LOCK TABLES `cursos` WRITE;
/*!40000 ALTER TABLE `cursos` DISABLE KEYS */;
INSERT INTO `cursos` VALUES (1,'Curso de Python','Aprende Python desde cero','python.png','2024-05-01','2024-08-01',30),(2,'Curso de JavaScript','Desarrollo web con JavaScript','javascript.png','2024-06-01','2024-09-01',25),(3,'Curso de Diseño Gráfico','Fundamentos del diseño gráfico','design.png','2024-07-01','2024-10-01',20),(4,'Curso de React','Desarrollo de interfaces con React','react.png','2024-08-01','2024-11-01',15),(5,'Curso de SQL','Gestión de bases de datos con SQL','sql.png','2024-09-01','2024-12-01',30),(6,'Curso de Java','Programación en Java para principiantes','java.png','2024-10-01','2025-01-01',25),(7,'Curso de Ruby','Introducción a Ruby y Rails','ruby.png','2024-11-01','2025-02-01',15),(8,'Curso de C++','Programación avanzada con C++','cpp.png','2024-12-01','2025-03-01',20),(9,'Curso de Marketing Digital','Estrategias de marketing online','marketing.png','2025-01-01','2025-04-01',30),(10,'Curso de Fotografía','Técnicas profesionales de fotografía','photo.png','2025-02-01','2025-05-01',15),(11,'Curso de UX/UI','Diseño de experiencias y interfaces de usuario','uxui.png','2025-03-01','2025-06-01',20),(12,'Curso de Cloud Computing','Servicios en la nube con AWS','cloud.png','2025-04-01','2025-07-01',25),(13,'Curso de Data Science','Ciencia de datos aplicada','data_science.png','2025-05-01','2025-08-01',15),(14,'Curso de Machine Learning','Aprendizaje automático práctico','ml.png','2025-06-01','2025-09-01',25),(15,'Curso de Blockchain','Tecnologías y aplicaciones Blockchain','blockchain.png','2025-07-01','2025-10-01',30);
/*!40000 ALTER TABLE `cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unidades`
--

DROP TABLE IF EXISTS `unidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unidades` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `curso_id` int(10) unsigned NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `descripcion` text NOT NULL,
  `fecha_inicio` date NOT NULL,
  PRIMARY KEY (`id`),
  KEY `curso_id` (`curso_id`),
  CONSTRAINT `unidades_ibfk_1` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unidades`
--

LOCK TABLES `unidades` WRITE;
/*!40000 ALTER TABLE `unidades` DISABLE KEYS */;
INSERT INTO `unidades` VALUES (1,1,'Introducción a Python','Conceptos básicos de Python','2024-05-01'),(2,1,'Estructuras de Datos','Aprendiendo listas, diccionarios y más','2024-05-15'),(3,2,'Fundamentos de JavaScript','Variables, funciones y estructuras','2024-06-01'),(4,3,'Principios de Diseño','Entendiendo el color y la composición','2024-07-01'),(5,4,'React Básico','Componentes y estado en React','2024-08-01'),(6,5,'SQL para Principiantes','Consultas básicas de SQL','2024-09-01'),(7,6,'Java y POO','Programación orientada a objetos con Java','2024-10-01'),(8,7,'Ruby on Rails','Creación de aplicaciones con Rails','2024-11-01'),(9,8,'C++ Avanzado','Punteros y gestión de memoria','2024-12-01'),(10,9,'SEO y SEM','Optimización para motores de búsqueda','2025-01-01'),(11,10,'Técnicas de Fotografía','Uso de la cámara y técnicas de iluminación','2025-02-01'),(12,11,'Investigación UX','Métodos y herramientas de investigación','2025-03-01'),(13,12,'AWS y EC2','Configuración de instancias EC2 en AWS','2025-04-01'),(14,13,'Análisis de Datos','Análisis y visualización con Python','2025-05-01'),(15,14,'Algoritmos de ML','Introducción a algoritmos de clasificación','2025-06-01');
/*!40000 ALTER TABLE `unidades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `contraseña` varchar(255) NOT NULL,
  `categoria_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Ana','Torres','ana.torres@example.com','pass1234',1),(2,'Luis','Gómez','luis.gomez@example.com','pass1234',1),(3,'Carlos','Pérez','carlos.perez@example.com','pass1234',2),(4,'Lucía','Jiménez','lucia.jimenez@example.com','pass1234',2),(5,'María','López','maria.lopez@example.com','pass1234',1),(6,'David','Martín','david.martin@example.com','pass1234',1),(7,'Sofía','Hernández','sofia.hernandez@example.com','pass1234',2),(8,'Daniel','Santos','daniel.santos@example.com','pass1234',1),(9,'Laura','Castillo','laura.castillo@example.com','pass1234',1),(10,'Sergio','Sánchez','sergio.sanchez@example.com','pass1234',2),(11,'Carmen','Gil','carmen.gil@example.com','pass1234',1),(12,'Fernando','Romero','fernando.romero@example.com','pass1234',1),(13,'Gloria','Cruz','gloria.cruz@example.com','pass1234',2),(14,'Ricardo','Ortiz','ricardo.ortiz@example.com','pass1234',1),(15,'Isabel','Méndez','isabel.mendez@example.com','pass1234',2);
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios_cursos`
--

DROP TABLE IF EXISTS `usuarios_cursos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuarios_cursos` (
  `usuario_id` int(10) unsigned NOT NULL,
  `curso_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`usuario_id`,`curso_id`),
  KEY `curso_id` (`curso_id`),
  CONSTRAINT `usuarios_cursos_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`),
  CONSTRAINT `usuarios_cursos_ibfk_2` FOREIGN KEY (`curso_id`) REFERENCES `cursos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios_cursos`
--

LOCK TABLES `usuarios_cursos` WRITE;
/*!40000 ALTER TABLE `usuarios_cursos` DISABLE KEYS */;
INSERT INTO `usuarios_cursos` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(6,1),(6,2),(6,5),(7,1),(7,2),(7,5),(8,1),(8,2),(8,5),(9,1),(9,2),(9,5),(10,1),(10,2),(10,5),(11,1),(11,2),(11,5),(12,1),(12,2),(12,5),(13,1),(13,2),(13,5),(14,1),(14,2),(14,5),(15,1),(15,2),(15,5);
/*!40000 ALTER TABLE `usuarios_cursos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'MicrodesafioC34'
--
