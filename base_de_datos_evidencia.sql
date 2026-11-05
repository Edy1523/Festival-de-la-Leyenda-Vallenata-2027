/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.6.23-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: festival_vallenato
-- ------------------------------------------------------
-- Server version	10.6.23-MariaDB-0ubuntu0.22.04.1

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add Categoría',7,'add_categoria'),(26,'Can change Categoría',7,'change_categoria'),(27,'Can delete Categoría',7,'delete_categoria'),(28,'Can view Categoría',7,'view_categoria'),(29,'Can add Edición',8,'add_edicion'),(30,'Can change Edición',8,'change_edicion'),(31,'Can delete Edición',8,'delete_edicion'),(32,'Can view Edición',8,'view_edicion'),(33,'Can add Votación',9,'add_votacion'),(34,'Can change Votación',9,'change_votacion'),(35,'Can delete Votación',9,'delete_votacion'),(36,'Can view Votación',9,'view_votacion'),(37,'Can add Opción',10,'add_opcion'),(38,'Can change Opción',10,'change_opcion'),(39,'Can delete Opción',10,'delete_opcion'),(40,'Can view Opción',10,'view_opcion'),(41,'Can add Voto',11,'add_voto'),(42,'Can change Voto',11,'change_voto'),(43,'Can delete Voto',11,'delete_voto'),(44,'Can view Voto',11,'view_voto');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$1000000$Nplwt4W3RM8e5PwAV1hJwB$48p9ftQg2ROaF77M0NzTnuHf+yO1CNImyTx0tgFvZiU=',NULL,1,'admin','','','',1,1,'2026-11-05 21:00:18.549641'),(2,'pbkdf2_sha256$1000000$M7BTXme9HdfEBeInXcmwLg$UopHzBYy1PmB41ggE3SnZfImkS4pIteA2Gp1LF70/C8=','2026-11-05 21:05:39.959600',0,'admin123','','','',0,1,'2026-11-05 21:05:30.552004');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(6,'sessions','session'),(7,'votaciones','categoria'),(8,'votaciones','edicion'),(10,'votaciones','opcion'),(9,'votaciones','votacion'),(11,'votaciones','voto');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2026-11-05 20:58:36.678781'),(2,'auth','0001_initial','2026-11-05 20:58:37.278641'),(3,'admin','0001_initial','2026-11-05 20:58:37.437509'),(4,'admin','0002_logentry_remove_auto_add','2026-11-05 20:58:37.447457'),(5,'admin','0003_logentry_add_action_flag_choices','2026-11-05 20:58:37.457479'),(6,'contenttypes','0002_remove_content_type_name','2026-11-05 20:58:37.541361'),(7,'auth','0002_alter_permission_name_max_length','2026-11-05 20:58:37.595012'),(8,'auth','0003_alter_user_email_max_length','2026-11-05 20:58:37.631876'),(9,'auth','0004_alter_user_username_opts','2026-11-05 20:58:37.639416'),(10,'auth','0005_alter_user_last_login_null','2026-11-05 20:58:37.690257'),(11,'auth','0006_require_contenttypes_0002','2026-11-05 20:58:37.692410'),(12,'auth','0007_alter_validators_add_error_messages','2026-11-05 20:58:37.700149'),(13,'auth','0008_alter_user_username_max_length','2026-11-05 20:58:37.734178'),(14,'auth','0009_alter_user_last_name_max_length','2026-11-05 20:58:37.767593'),(15,'auth','0010_alter_group_name_max_length','2026-11-05 20:58:37.801280'),(16,'auth','0011_update_proxy_permissions','2026-11-05 20:58:37.810253'),(17,'auth','0012_alter_user_first_name_max_length','2026-11-05 20:58:37.845262'),(18,'sessions','0001_initial','2026-11-05 20:58:37.901691'),(19,'votaciones','0001_initial','2026-11-05 20:58:38.131449'),(20,'votaciones','0002_voto','2026-11-05 20:58:38.301055'),(21,'votaciones','0003_remove_voto_un_voto_por_usuario_y_votacion_and_more','2026-11-05 20:58:38.632962');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('kvfznsvsv3qqw9cokuezn4n4dh9f7b2e','.eJxVjM0KwjAQBt8lZwnJEk3r0bvPEHbzbWxVEujPqfjuUuhBrzPDbCbxugxpnXVKI8zVkDn9MuH80roLPLk-ms2tLtModk_sYWd7b9D37Wj_BgPPw7510YtjHwBmj64PECERlCiFiNALAc4XRc4XpRDPPWUfciwOsVPz-QIMCDkI:1xP4eR:ejLJLdcQ1pbxAqothF53Pxa6zJp5q_Ej5eGH3ttFa0w','2026-11-19 21:05:39.962292');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `votaciones_categoria`
--

DROP TABLE IF EXISTS `votaciones_categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `votaciones_categoria` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` longtext DEFAULT NULL,
  `estado` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `votaciones_categoria`
--

LOCK TABLES `votaciones_categoria` WRITE;
/*!40000 ALTER TABLE `votaciones_categoria` DISABLE KEYS */;
INSERT INTO `votaciones_categoria` VALUES (1,'Acordeón Profesional – Rey de Reyes',NULL,1),(2,'Canción Vallenata Inédita – Rey de Reyes',NULL,1),(3,'Piquería Mayor – Rey de Reyes',NULL,1),(4,'Reina de Reinas',NULL,1);
/*!40000 ALTER TABLE `votaciones_categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `votaciones_edicion`
--

DROP TABLE IF EXISTS `votaciones_edicion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `votaciones_edicion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `año` int(11) NOT NULL,
  `nombre_edicion` varchar(100) NOT NULL,
  `activa` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `año` (`año`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `votaciones_edicion`
--

LOCK TABLES `votaciones_edicion` WRITE;
/*!40000 ALTER TABLE `votaciones_edicion` DISABLE KEYS */;
INSERT INTO `votaciones_edicion` VALUES (1,2027,'60.ª Edición - Rey de Reyes',1);
/*!40000 ALTER TABLE `votaciones_edicion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `votaciones_opcion`
--

DROP TABLE IF EXISTS `votaciones_opcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `votaciones_opcion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre_candidato` varchar(150) NOT NULL,
  `biografia` longtext DEFAULT NULL,
  `votacion_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `votaciones_opcion_votacion_id_1aa9bd68_fk_votaciones_votacion_id` (`votacion_id`),
  CONSTRAINT `votaciones_opcion_votacion_id_1aa9bd68_fk_votaciones_votacion_id` FOREIGN KEY (`votacion_id`) REFERENCES `votaciones_votacion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `votaciones_opcion`
--

LOCK TABLES `votaciones_opcion` WRITE;
/*!40000 ALTER TABLE `votaciones_opcion` DISABLE KEYS */;
INSERT INTO `votaciones_opcion` VALUES (1,'Hugo Carlos Granados','Participante de demostración para las pruebas académicas 2027.',1),(2,'Navín López','Participante de demostración para las pruebas académicas 2027.',1),(3,'Almes Granados','Participante de demostración para las pruebas académicas 2027.',1),(4,'El lamento del Valle (Paseo)','Participante de demostración para las pruebas académicas 2027.',2),(5,'Recuerdos de mi tierra (Merengue)','Participante de demostración para las pruebas académicas 2027.',2),(6,'Canto a la leyenda (Son)','Participante de demostración para las pruebas académicas 2027.',2),(7,'Julio Cárdenas','Participante de demostración para las pruebas académicas 2027.',3),(8,'José Félix Ariza','Participante de demostración para las pruebas académicas 2027.',3),(9,'Andrés Barros','Participante de demostración para las pruebas académicas 2027.',3),(10,'Loraine Lara Mercado','Participante de demostración para las pruebas académicas 2027.',4),(11,'Wendy Corzo','Participante de demostración para las pruebas académicas 2027.',4),(12,'Macarena Vallejo','Participante de demostración para las pruebas académicas 2027.',4);
/*!40000 ALTER TABLE `votaciones_opcion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `votaciones_votacion`
--

DROP TABLE IF EXISTS `votaciones_votacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `votaciones_votacion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `nombre_fase` varchar(150) NOT NULL,
  `estado_apertura` tinyint(1) NOT NULL,
  `categoria_id` bigint(20) NOT NULL,
  `edicion_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `votaciones_votacion_categoria_id_1945fb03_fk_votacione` (`categoria_id`),
  KEY `votaciones_votacion_edicion_id_4f687ff7_fk_votaciones_edicion_id` (`edicion_id`),
  CONSTRAINT `votaciones_votacion_categoria_id_1945fb03_fk_votacione` FOREIGN KEY (`categoria_id`) REFERENCES `votaciones_categoria` (`id`),
  CONSTRAINT `votaciones_votacion_edicion_id_4f687ff7_fk_votaciones_edicion_id` FOREIGN KEY (`edicion_id`) REFERENCES `votaciones_edicion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `votaciones_votacion`
--

LOCK TABLES `votaciones_votacion` WRITE;
/*!40000 ALTER TABLE `votaciones_votacion` DISABLE KEYS */;
INSERT INTO `votaciones_votacion` VALUES (1,'Fase Final - Demostración',1,1,1),(2,'Fase Final - Demostración',1,2,1),(3,'Fase Final - Demostración',1,3,1),(4,'Fase Final - Demostración',1,4,1);
/*!40000 ALTER TABLE `votaciones_votacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `votaciones_voto`
--

DROP TABLE IF EXISTS `votaciones_voto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `votaciones_voto` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fecha` datetime(6) NOT NULL,
  `opcion_id` bigint(20) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `votacion_id` bigint(20) NOT NULL,
  `categoria_id` bigint(20) NOT NULL,
  `edicion_id` bigint(20) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `un_voto_por_usuario_categoria_edicion` (`usuario_id`,`categoria_id`,`edicion_id`),
  KEY `votaciones_voto_opcion_id_7c3bc1e9_fk_votaciones_opcion_id` (`opcion_id`),
  KEY `votaciones_voto_votacion_id_fafee5f1_fk_votaciones_votacion_id` (`votacion_id`),
  KEY `votaciones_voto_usuario_id_e3dad44b` (`usuario_id`),
  KEY `votaciones_voto_categoria_id_5907bc53_fk_votaciones_categoria_id` (`categoria_id`),
  KEY `votaciones_voto_edicion_id_0f6cd3c1_fk_votaciones_edicion_id` (`edicion_id`),
  CONSTRAINT `votaciones_voto_categoria_id_5907bc53_fk_votaciones_categoria_id` FOREIGN KEY (`categoria_id`) REFERENCES `votaciones_categoria` (`id`),
  CONSTRAINT `votaciones_voto_edicion_id_0f6cd3c1_fk_votaciones_edicion_id` FOREIGN KEY (`edicion_id`) REFERENCES `votaciones_edicion` (`id`),
  CONSTRAINT `votaciones_voto_opcion_id_7c3bc1e9_fk_votaciones_opcion_id` FOREIGN KEY (`opcion_id`) REFERENCES `votaciones_opcion` (`id`),
  CONSTRAINT `votaciones_voto_usuario_id_e3dad44b_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `votaciones_voto_votacion_id_fafee5f1_fk_votaciones_votacion_id` FOREIGN KEY (`votacion_id`) REFERENCES `votaciones_votacion` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `votaciones_voto`
--

LOCK TABLES `votaciones_voto` WRITE;
/*!40000 ALTER TABLE `votaciones_voto` DISABLE KEYS */;
INSERT INTO `votaciones_voto` VALUES (1,'2026-11-05 21:05:53.639194',3,2,1,1,1),(2,'2026-11-05 21:06:07.563932',4,2,2,2,1);
/*!40000 ALTER TABLE `votaciones_voto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-11-05 16:19:19
