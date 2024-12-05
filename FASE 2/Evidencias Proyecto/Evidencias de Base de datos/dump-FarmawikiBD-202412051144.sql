-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: farmawiki.c5yew0gcemb0.sa-east-1.rds.amazonaws.com    Database: FarmawikiBD
-- ------------------------------------------------------
-- Server version	8.0.39

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN= 0;

--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED=/*!80000 '+'*/ '';

--
-- Table structure for table `Alergia`
--

DROP TABLE IF EXISTS `Alergia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Alergia` (
  `id_alergia` int NOT NULL AUTO_INCREMENT,
  `tipo_alergia` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `usuario_id` int DEFAULT NULL,
  PRIMARY KEY (`id_alergia`),
  KEY `Alergia_Usuario_FK` (`usuario_id`),
  CONSTRAINT `Alergia_Usuario_FK` FOREIGN KEY (`usuario_id`) REFERENCES `Usuario` (`id_usuario`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Alergia`
--

LOCK TABLES `Alergia` WRITE;
/*!40000 ALTER TABLE `Alergia` DISABLE KEYS */;
INSERT INTO `Alergia` VALUES (28,'Dermatitis alérgica por contacto','Alergia al sol',27),(29,'Alergias alimentarias','Inflamación al consumir maricos \n',27),(38,'Alergias alimentarias','Alergico al zinc',31),(40,'Alergias alimentarias','No puedo tomar lactosa',37),(41,'Poliposis nasal','Alergico al polen',28),(42,'Alergias a fármacos','no puedo tomar paracetamol\n',33);
/*!40000 ALTER TABLE `Alergia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Comuna`
--

DROP TABLE IF EXISTS `Comuna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Comuna` (
  `id_comuna` int NOT NULL AUTO_INCREMENT,
  `nombre_comuna` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `region_id` int DEFAULT NULL,
  PRIMARY KEY (`id_comuna`),
  KEY `Comuna_Region_FK` (`region_id`),
  CONSTRAINT `Comuna_Region_FK` FOREIGN KEY (`region_id`) REFERENCES `Region` (`id_region`)
) ENGINE=InnoDB AUTO_INCREMENT=594 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Comuna`
--

LOCK TABLES `Comuna` WRITE;
/*!40000 ALTER TABLE `Comuna` DISABLE KEYS */;
INSERT INTO `Comuna` VALUES (250,'Arica',1),(251,'Putre',1),(252,'General Lagos',1),(253,'Camarones',1),(254,'Iquique',2),(255,'Alto Hospicio',2),(256,'Camiña',2),(257,'Colchane',2),(258,'Huara',2),(259,'Pica',2),(260,'Pozo Almonte',2),(261,'Antofagasta',3),(262,'Calama',3),(263,'Tocopilla',3),(264,'Mejillones',3),(265,'María Elena',3),(266,'Taltal',3),(267,'Sierra Gorda',3),(268,'San Pedro de Atacama',3),(269,'Ollagüe',3),(270,'Chañaral',4),(271,'Diego de Almagro',4),(272,'Caldera',4),(273,'Copiapó',4),(274,'Tierra Amarilla',4),(275,'Huasco',4),(276,'Freirina',4),(277,'Vallenar',4),(278,'Alto del Carmen',4),(279,'Andacollo',5),(280,'Coquimbo',5),(281,'La Higuera',5),(282,'La Serena',5),(283,'Paihuano',5),(284,'Vicuña',5),(285,'Combarbalá',5),(286,'Monte Patria',5),(287,'Ovalle',5),(288,'Punitaqui',5),(289,'Río Hurtado',5),(290,'Canela',5),(291,'Illapel',5),(292,'Los Vilos',5),(293,'Salamanca',5),(294,'Valparaíso',6),(295,'Viña del Mar',6),(296,'Concón',6),(297,'Quintero',6),(298,'Puchuncaví',6),(299,'Casablanca',6),(300,'Juan Fernández',6),(301,'Los Andes',6),(302,'Calle Larga',6),(303,'Rinconada',6),(304,'San Esteban',6),(305,'Quillota',6),(306,'La Calera',6),(307,'Hijuelas',6),(308,'La Cruz',6),(309,'Nogales',6),(310,'Cabildo',6),(311,'La Ligua',6),(312,'Papudo',6),(313,'Petorca',6),(314,'Zapallar',6),(315,'San Antonio',6),(316,'Algarrobo',6),(317,'Cartagena',6),(318,'El Quisco',6),(319,'El Tabo',6),(320,'San Felipe',6),(321,'Catemu',6),(322,'Llay-Llay',6),(323,'Panquehue',6),(324,'Putaendo',6),(325,'Santa María',6),(326,'Quilpué',6),(327,'Limache',6),(328,'Olmué',6),(329,'Villa Alemana',6),(330,'Colina',7),(331,'Lampa',7),(332,'Til Til',7),(333,'Pirque',7),(334,'Puente Alto',7),(335,'San José de Maipo',7),(336,'Buin',7),(337,'Calera de Tango',7),(338,'Paine',7),(339,'San Bernardo',7),(340,'Alhué',7),(341,'Curacaví',7),(342,'María Pinto',7),(343,'Melipilla',7),(344,'San Pedro',7),(345,'Cerrillos',7),(346,'Cerro Navia',7),(347,'Conchalí',7),(348,'El Bosque',7),(349,'Estación Central',7),(350,'Huechuraba',7),(351,'Independencia',7),(352,'La Cisterna',7),(353,'La Granja',7),(354,'La Florida',7),(355,'La Pintana',7),(356,'La Reina',7),(357,'Las Condes',7),(358,'Lo Barnechea',7),(359,'Lo Espejo',7),(360,'Lo Prado',7),(361,'Macul',7),(362,'Maipú',7),(363,'Ñuñoa',7),(364,'Pedro Aguirre Cerda',7),(365,'Peñalolén',7),(366,'Providencia',7),(367,'Pudahuel',7),(368,'Quilicura',7),(369,'Quinta Normal',7),(370,'Recoleta',7),(371,'Renca',7),(372,'San Miguel',7),(373,'San Joaquín',7),(374,'San Ramón',7),(375,'Santiago',7),(376,'Vitacura',7),(377,'El Monte',7),(378,'Isla de Maipo',7),(379,'Padre Hurtado',7),(380,'Peñaflor',7),(381,'Talagante',7),(382,'Codegua',8),(383,'Coinco',8),(384,'Coltauco',8),(385,'Doñihue',8),(386,'Graneros',8),(387,'Las Cabras',8),(388,'Machalí',8),(389,'Malloa',8),(390,'Mostazal',8),(391,'Olivar',8),(392,'Peumo',8),(393,'Pichidegua',8),(394,'Quinta de Tilcoco',8),(395,'Rancagua',8),(396,'Rengo',8),(397,'Requínoa',8),(398,'San Vicente de Tagua Tagua',8),(399,'La Estrella',8),(400,'Litueche',8),(401,'Marchigüe',8),(402,'Navidad',8),(403,'Paredones',8),(404,'Pichilemu',8),(405,'Chépica',8),(406,'Chimbarongo',8),(407,'Lolol',8),(408,'Nancagua',8),(409,'Palmilla',8),(410,'Peralillo',8),(411,'Placilla',8),(412,'Pumanque',8),(413,'San Fernando',8),(414,'Santa Cruz',8),(415,'Cauquenes',9),(416,'Chanco',9),(417,'Pelluhue',9),(418,'Curicó',9),(419,'Hualañé',9),(420,'Licantén',9),(421,'Molina',9),(422,'Rauco',9),(423,'Romeral',9),(424,'Sagrada Familia',9),(425,'Teno',9),(426,'Vichuquén',9),(427,'Colbún',9),(428,'Linares',9),(429,'Longaví',9),(430,'Parral',9),(431,'Retiro',9),(432,'San Javier de Loncomilla',9),(433,'Villa Alegre',9),(434,'Yerbas Buenas',9),(435,'Constitución',9),(436,'Curepto',9),(437,'Empedrado',9),(438,'Maule',9),(439,'Pelarco',9),(440,'Pencahue',9),(441,'Río Claro',9),(442,'San Clemente',9),(443,'San Rafael',9),(444,'Talca',9),(445,'Chillán',10),(446,'Chillán Viejo',10),(447,'Quillón',10),(448,'Bulnes',10),(449,'San Ignacio',10),(450,'El Carmen',10),(451,'Pinto',10),(452,'Pemuco',10),(453,'Yungay',10),(454,'San Carlos',10),(455,'Coihueco',10),(456,'San Nicolás',10),(457,'San Fabián',10),(458,'Ñiquén',10),(459,'Quirihue',10),(460,'Cobquecura',10),(461,'Ninhue',10),(462,'Treguaco',10),(463,'Coelemu',10),(464,'Portezuelo',10),(465,'Ránquil',10),(466,'Florida',11),(467,'Penco',11),(468,'Tomé',11),(469,'Talcahuano',11),(470,'Hualpén',11),(471,'Chiguayante',11),(472,'Concepción',11),(473,'Hualqui',11),(474,'Santa Juana',11),(475,'San Pedro de la Paz',11),(476,'Coronel',11),(477,'Lota',11),(478,'Arauco',11),(479,'Cañete',11),(480,'Contulmo',11),(481,'Curanilahue',11),(482,'Lebu',11),(483,'Los Álamos',11),(484,'Tirúa',11),(485,'Los Ángeles',11),(486,'Cabrero',11),(487,'Tucapel',11),(488,'Antuco',11),(489,'Quilleco',11),(490,'Santa Bárbara',11),(491,'Quilaco',11),(492,'Mulchén',11),(493,'Negrete',11),(494,'Nacimiento',11),(495,'Laja',11),(496,'San Rosendo',11),(497,'Alto Biobío',11),(498,'Yumbel',11),(499,'Carahue',12),(500,'Cholchol',12),(501,'Cunco',12),(502,'Curarrehue',12),(503,'Freire',12),(504,'Galvarino',12),(505,'Gorbea',12),(506,'Lautaro',12),(507,'Loncoche',12),(508,'Melipeuco',12),(509,'Nueva Imperial',12),(510,'Padre Las Casas',12),(511,'Perquenco',12),(512,'Pitrufquén',12),(513,'Pucón',12),(514,'Saavedra',12),(515,'Temuco',12),(516,'Teodoro Schmidt',12),(517,'Toltén',12),(518,'Vilcún',12),(519,'Villarrica',12),(520,'Angol',12),(521,'Collipulli',12),(522,'Curacautín',12),(523,'Ercilla',12),(524,'Lonquimay',12),(525,'Los Sauces',12),(526,'Lumaco',12),(527,'Purén',12),(528,'Renaico',12),(529,'Traiguén',12),(530,'Victoria',12),(531,'Panguipulli',13),(532,'Futrono',13),(533,'Río Bueno',13),(534,'Lago Ranco',13),(535,'La Unión',13),(536,'Corral',13),(537,'Paillaco',13),(538,'Valdivia',13),(539,'Máfil',13),(540,'Lanco',13),(541,'Mariquina',13),(542,'Los Lagos',13),(543,'Ancud',14),(544,'Castro',14),(545,'Chonchi',14),(546,'Curaco de Vélez',14),(547,'Dalcahue',14),(548,'Puqueldón',14),(549,'Queilén',14),(550,'Quemchi',14),(551,'Quellón',14),(552,'Quinchao',14),(553,'Calbuco',14),(554,'Cochamó',14),(555,'Fresia',14),(556,'Frutillar',14),(557,'Los Muermos',14),(558,'Llanquihue',14),(559,'Maullín',14),(560,'Puerto Montt',14),(561,'Puerto Varas',14),(562,'Osorno',14),(563,'Puerto Octay',14),(564,'Purranque',14),(565,'Puyehue',14),(566,'Río Negro',14),(567,'San Juan de la Costa',14),(568,'San Pablo',14),(569,'Chaitén',14),(570,'Futaleufú',14),(571,'Hualaihué',14),(572,'Palena',14),(573,'Guaitecas',15),(574,'Cisnes',15),(575,'Lago Verde',15),(576,'Coyhaique',15),(577,'Aysén',15),(578,'Río Ibáñez',15),(579,'Chile Chico',15),(580,'Cochrane',15),(581,'O\'Higgins',15),(582,'Tortel',15),(583,'Antártica',16),(584,'Cabo de Hornos',16),(585,'Laguna Blanca',16),(586,'Punta Arenas',16),(587,'Río Verde',16),(588,'San Gregorio',16),(589,'Porvenir',16),(590,'Primavera',16),(591,'Timaukel',16),(592,'Natales',16),(593,'Torres del Paine',16);
/*!40000 ALTER TABLE `Comuna` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Detalle_receta`
--

DROP TABLE IF EXISTS `Detalle_receta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Detalle_receta` (
  `id_det_receta` int NOT NULL AUTO_INCREMENT,
  `dosis` varchar(100) NOT NULL,
  `dias_tratamiento` int NOT NULL,
  `unidades_medicamento` varchar(100) NOT NULL,
  `via_administracion` varchar(255) NOT NULL,
  `receta_id` int DEFAULT NULL,
  PRIMARY KEY (`id_det_receta`),
  KEY `Detalle_receta_Recetas_FK` (`receta_id`),
  CONSTRAINT `Detalle_receta_Recetas_FK` FOREIGN KEY (`receta_id`) REFERENCES `Receta` (`id_receta`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Detalle_receta`
--

LOCK TABLES `Detalle_receta` WRITE;
/*!40000 ALTER TABLE `Detalle_receta` DISABLE KEYS */;
INSERT INTO `Detalle_receta` VALUES (9,'1 cada 6 horas ',2,'3','oral',14),(10,'1 cada dia ',1,'1','Oral',15),(11,'1 cada 6 horas ',2,'500','Oral',16),(13,'2',2,'12','Oral',18),(14,'500',0,'12','Oral',19);
/*!40000 ALTER TABLE `Detalle_receta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Especialidad`
--

DROP TABLE IF EXISTS `Especialidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Especialidad` (
  `id_especialidad` int NOT NULL AUTO_INCREMENT,
  `nomb_especialidad` varchar(100) NOT NULL,
  `func_sal_id` int DEFAULT NULL,
  PRIMARY KEY (`id_especialidad`),
  KEY `Especialidad_Func_salud_FK` (`func_sal_id`),
  CONSTRAINT `Especialidad_Func_salud_FK` FOREIGN KEY (`func_sal_id`) REFERENCES `Func_salud` (`id_funcionario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Especialidad`
--

LOCK TABLES `Especialidad` WRITE;
/*!40000 ALTER TABLE `Especialidad` DISABLE KEYS */;
/*!40000 ALTER TABLE `Especialidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Func_salud`
--

DROP TABLE IF EXISTS `Func_salud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Func_salud` (
  `id_funcionario` int NOT NULL AUTO_INCREMENT,
  `nume_colegiatura` varchar(100) NOT NULL,
  `usuario_id` int DEFAULT NULL,
  PRIMARY KEY (`id_funcionario`),
  KEY `Func_salud_Usuario_FK` (`usuario_id`),
  CONSTRAINT `Func_salud_Usuario_FK` FOREIGN KEY (`usuario_id`) REFERENCES `Usuario` (`id_usuario`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Func_salud`
--

LOCK TABLES `Func_salud` WRITE;
/*!40000 ALTER TABLE `Func_salud` DISABLE KEYS */;
/*!40000 ALTER TABLE `Func_salud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Medicamento`
--

DROP TABLE IF EXISTS `Medicamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Medicamento` (
  `id_medicamento` int NOT NULL AUTO_INCREMENT,
  `nombre_comercial` varchar(100) NOT NULL,
  `nombre_generico` varchar(100) NOT NULL,
  `det_rec_id` int DEFAULT NULL,
  PRIMARY KEY (`id_medicamento`),
  KEY `fk_det_rec_id` (`det_rec_id`),
  CONSTRAINT `fk_det_rec_id` FOREIGN KEY (`det_rec_id`) REFERENCES `Detalle_receta` (`id_det_receta`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Medicamento`
--

LOCK TABLES `Medicamento` WRITE;
/*!40000 ALTER TABLE `Medicamento` DISABLE KEYS */;
INSERT INTO `Medicamento` VALUES (7,'Paracetamol','Paracetamol',9),(8,'Ibupofeno','Ibuprofeno',10),(9,'Ibupofeno','Ibuprofeno',11),(11,'Tylenol','Paracetamol',13),(12,'Panadol','Paracetamol',14);
/*!40000 ALTER TABLE `Medicamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Perfil_user`
--

DROP TABLE IF EXISTS `Perfil_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Perfil_user` (
  `id_perfil` int NOT NULL AUTO_INCREMENT,
  `n_doc_identificacion` varchar(100) NOT NULL,
  `telefono` int NOT NULL,
  `fecha_nac` date NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `usuario_id` int DEFAULT NULL,
  `comuna_id` int DEFAULT NULL,
  PRIMARY KEY (`id_perfil`),
  KEY `Perfil_user_Comuna_FK` (`comuna_id`),
  KEY `Perfil_user_Usuario_FK` (`usuario_id`),
  CONSTRAINT `Perfil_user_Comuna_FK` FOREIGN KEY (`comuna_id`) REFERENCES `Comuna` (`id_comuna`),
  CONSTRAINT `Perfil_user_Usuario_FK` FOREIGN KEY (`usuario_id`) REFERENCES `Usuario` (`id_usuario`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Perfil_user`
--

LOCK TABLES `Perfil_user` WRITE;
/*!40000 ALTER TABLE `Perfil_user` DISABLE KEYS */;
INSERT INTO `Perfil_user` VALUES (25,'1234567890',987654322,'2024-10-29','Calle Ficticia 123',27,542),(26,'',0,'0000-00-00','',28,NULL),(27,'',0,'0000-00-00','',29,NULL),(28,'',0,'0000-00-00','',30,NULL),(29,'1234567890',987654322,'2024-11-04','Calle Ficticia 123',31,256),(30,'',0,'0000-00-00','',32,NULL),(31,'1234567890',987654322,'2024-11-05','Calle Ficticia 123',33,430),(32,'',0,'0000-00-00','',34,NULL),(34,'',0,'0000-00-00','',36,NULL),(35,'',0,'0000-00-00','',37,NULL),(36,'12345678',978456123,'2024-11-10','Calle Ficticia 123',38,324);
/*!40000 ALTER TABLE `Perfil_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Receta`
--

DROP TABLE IF EXISTS `Receta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Receta` (
  `id_receta` int NOT NULL AUTO_INCREMENT,
  `fecha_emision` date NOT NULL,
  `observaciones` varchar(255) NOT NULL,
  `usuario_id` int DEFAULT NULL,
  PRIMARY KEY (`id_receta`),
  KEY `Recetas_Usuario_FK` (`usuario_id`),
  CONSTRAINT `Recetas_Usuario_FK` FOREIGN KEY (`usuario_id`) REFERENCES `Usuario` (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Receta`
--

LOCK TABLES `Receta` WRITE;
/*!40000 ALTER TABLE `Receta` DISABLE KEYS */;
INSERT INTO `Receta` VALUES (14,'2024-11-06','Paracetamol de 500 mg',31),(15,'2024-11-13','Medico',31),(16,'2024-11-04','tUKI',33),(18,'2024-11-05','Dolor de cabeza por cansancio.',27),(19,'2024-11-04','Dolor de cabeza por cansancio',27);
/*!40000 ALTER TABLE `Receta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Region`
--

DROP TABLE IF EXISTS `Region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Region` (
  `nombre_region` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `id_region` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_region`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Region`
--

LOCK TABLES `Region` WRITE;
/*!40000 ALTER TABLE `Region` DISABLE KEYS */;
INSERT INTO `Region` VALUES ('Región de Arica y Parinacota',1),('Región de Tarapacá',2),('Región de Antofagasta',3),('Región de Atacama',4),('Región de Coquimbo',5),('Región de Valparaíso',6),('Región Metropolitana ',7),('Región de O’Higgins',8),('Región del Maule',9),('Región de Ñuble',10),('Región del Biobío',11),('Región de La Araucanía',12),('Región de Los Ríos',13),('Región de Los Lagos',14),('Región de Aysén ',15),('Región de Magallanes y de la Antártica Chilena',16);
/*!40000 ALTER TABLE `Region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Usuario`
--

DROP TABLE IF EXISTS `Usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Usuario` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `nombre_usuario` varchar(100) NOT NULL,
  `correo_elec` varchar(100) NOT NULL,
  `contrasena` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `func_salud` int NOT NULL,
  `administrador` int DEFAULT '0',
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Usuario`
--

LOCK TABLES `Usuario` WRITE;
/*!40000 ALTER TABLE `Usuario` DISABLE KEYS */;
INSERT INTO `Usuario` VALUES (27,'Carlos Gaete','gascarlos15@gmail.com','$2b$10$dVXyp0kjiWkxgy4rLhAyzu61wROnnJb/wNC2xYF0uJ7q7PTiQTUWy',1,1),(28,'Jhon Doe','johndoe1234@gmail.com','$2b$10$VpaSbkZAl0CHVa.9wz5u/e4XOrcrB8JPeddhDW7YdDNp9MPwNbJeW',1,0),(29,'Emily Smith','emily.smith987@gmail.com','$2b$10$MCLg26uRyzrHH2pt3cf2xOdv2jSe5swOeNbcyARZXF/AZt65.CrZ.',0,0),(30,'Alex Jones','alex.jones5678@gmail.com','$2b$10$5xYcQLfW0w0/6cTBLMrKwuSS78KzezkJN1RK9Lv7xOTwTlxJXmgky',1,0),(31,'Samuel Green','samuel.green321@gmail.com','$2b$10$AgYDq8tZDaaIh3P7nAH0UuDUSjCqa/5tiyP9k9MASWtmelNwozxhO',0,0),(32,'Laura Brown','laura.brown4567@gmail.com','$2b$10$YZ2..ObqriXYSUgjQYyT4.Mr7wJ0UKEHYYbUYkHAST6r6PKKq/KM2',0,0),(33,'Mike Johnson','mike.johnson890@gmail.com','$2b$10$PhLO5IRoI5hKJjuPdxda4O8HnwiucJnoUjz2/l8pX8EOhaB2nvDhC',0,0),(34,'Olivia Williams','olivia.williams23@gmail.com','$2b$10$3gmxS7YDkOIYqUXUQvD4UeK0cFmt1yJS20yVn7EZtO2ZA0q3wXwcO',0,0),(36,'Usuario nuevo','usuarioficticio@gmail.com','$2b$10$f7lci94/bJTGzAdzd7FmE.RcqlSw00viDmvDUUGRhCm0ig5Oc.Bf6',0,0),(37,'Ignacio Dude','ignaciodude@gmail.com','$2b$10$WM.ytYahSlo5l5HMZaA6buhUvnA.pUCaKvYUjN.Y227YRID.77Qoi',0,0),(38,'Sarah Miller','sarah.miller1245@gmail.com','$2b$10$qbUz6CVxTxaFskVow.D0uetgC39VON4to6nL4fizWgyd3GHuUlByS',0,0);
/*!40000 ALTER TABLE `Usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Via_administracion`
--

DROP TABLE IF EXISTS `Via_administracion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Via_administracion` (
  `id_via_admn` int NOT NULL AUTO_INCREMENT,
  `descripcion_via` varchar(255) NOT NULL,
  `det_rec_id` int DEFAULT NULL,
  PRIMARY KEY (`id_via_admn`),
  KEY `Via_administracion_Detalle_receta_FK` (`det_rec_id`),
  CONSTRAINT `Via_administracion_Detalle_receta_FK` FOREIGN KEY (`det_rec_id`) REFERENCES `Detalle_receta` (`id_det_receta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Via_administracion`
--

LOCK TABLES `Via_administracion` WRITE;
/*!40000 ALTER TABLE `Via_administracion` DISABLE KEYS */;
/*!40000 ALTER TABLE `Via_administracion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'FarmawikiBD'
--
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-05 11:44:23
