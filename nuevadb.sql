-- MySQL dump 10.13  Distrib 8.0.31, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: nuevadb
-- ------------------------------------------------------
-- Server version	8.0.31-0ubuntu0.20.04.2

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

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imagenes`
--

DROP TABLE IF EXISTS `imagenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `imagenes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci,
  `enlace_grande` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enlace_miniatura` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `autor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `genero` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagenes`
--

LOCK TABLES `imagenes` WRITE;
/*!40000 ALTER TABLE `imagenes` DISABLE KEYS */;
INSERT INTO `imagenes` VALUES (1,'Skeletal Domain','«High Velocity Impact Spatter»	4:06 «Sadistic Embodiment»	3:17 «Kill or Become»	3:50 «A Skeletal Domain»	3:38 «Headlong into Carnage»	3:01 «The Murderer\'s Pact»	5:05 «Funeral Cremation»	3:41 «Icepick Lobotomy»	3:16 «Vector of Cruelty»	3:25 «Bloodstained Cement»	3:41 «Asphyxiate to Resuscitate»	3:47 «Hollowed Bodies»	3:05','https://i.pinimg.com/originals/38/0e/d5/380ed5c65d5a75f2a0bbfa3d7dc545a8.jpg','https://upload.wikimedia.org/wikipedia/hr/7/77/Cannibal_Skeletal.jpg',1,'2023-09-30 02:40:49','2023-10-29 03:28:01','Cannibal Corpse','Deathmetal'),(2,'The Black Crown','Banda: Suicide Silence Genero: Deathcore','https://i.discogs.com/yO56YAyZc0wBN1dAHVYgj3mjRYjXG9tpFWnHhdYlSMk/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQxODg1/NzAtMTQ2MjUzMDMy/NC0zOTk2LnBuZw.jpeg','https://i.discogs.com/lei8Uhf40ZPB8hFAhCH-k1tf4tLB8ebldpGwjLifv2U/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTQxODg1/NzAtMTQ2MjUzMDMy/NC0zOTk2LnBuZw.jpeg',10,'2023-09-30 02:40:49','2023-09-30 02:40:49','Suicide Silence','Deathmetal'),(4,'IOWA','Banda: Slipknot Genero: Nu Metal','https://i.discogs.com/F-0xh117aiN4ShA0_kXDMAYOURHm4UrCBJSOzNoOEs8/rs:fit/g:sm/q:90/h:600/w:600/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTYxNDM4/MjctMTUwNzE1MjM2/My0zNDIxLmpwZWc.jpeg','https://i.discogs.com/Ji9pV592dUGgHZJOi1hAnklTxbqWY_o1SSolNo_bKUk/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTM3MjQw/Mi0xMzkxNTI0NzY0/LTY5NzQuanBlZw.jpeg',9,'2023-09-30 02:40:49','2023-09-30 02:40:49','Slipknot','Nu Metal'),(5,'Eteneral Nightmare','Banda: Chelsea Grin Genero: Deathcore','https://th.bing.com/th/id/OIP.HRrKBpZb1I4yuU6r57-gGgHaHa?pid=ImgDet&rs=1','https://i.discogs.com/pScJK4k8kKM_nwYFm9Bj-a9IBJE2WmRKaKQ8gNCZ08c/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTE0NjYx/NDQ0LTE1NzkxMjEz/MjAtNzI0MS5qcGVn.jpeg',7,'2023-09-30 02:40:49','2023-09-30 02:40:49','Chelseagrin','Deathcore'),(6,'Panzerfaust','Banda: Darkthrone Genero: Black Metal','https://m.media-amazon.com/images/I/51iCsSUoTdL._UXNaN_FMjpg_QL85_.jpg','https://musicland.cl/wp-content/uploads/2016/09/DARKTHRONEPANZERFAUSTLP.jpg',7,'2023-09-30 02:40:49','2023-09-30 02:40:49','Darkthrone','Blackmetal'),(7,'Heartwork','Banda: Carcass Genero: Deathmetal','https://lastfm.freetls.fastly.net/i/u/500x500/5ad20942346f48d6b4e7f18d107c4a3b.jpg','https://i.discogs.com/o8eAqZdCKcm8RqhiPJndNiR8KCj6hHgr9_YWpSCDYm0/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTI1Njcz/NTctMTI5MDgyOTM0/Ni5qcGVn.jpeg',4,'2023-09-30 02:40:49','2023-09-30 02:40:49','Carcass','Deathmetal'),(8,'Leprosy','Banda: Death Genero: Deathmetal','https://th.bing.com/th/id/R.28ea938cbcb12d9550cff04a14deefda?rik=p5ydAeB2BfH3nw&pid=ImgRaw&r=0','https://suiciderecordschile.com/wp-content/uploads/2021/01/Leprosy_Album.jpg',1,'2023-09-30 02:40:49','2023-09-30 02:40:49','Death','Deathmetal'),(19,'Hate','Banda: Thy Art is Murder\nGenero: Deathcore','https://lastfm.freetls.fastly.net/i/u/500x500/3ab2aed8c5b20a330852debb1ce0295a.jpg','https://lastfm.freetls.fastly.net/i/u/300x300/3ab2aed8c5b20a330852debb1ce0295a.jpg',1,'2023-10-14 02:48:09','2023-10-14 02:48:09','Thy art is murder','Deathcore'),(28,'Filosofem','«Dunkelheit» – 7:05\n«Jesus\' Tod» – 8:39\n«Erblicket die Töchter des Firmaments» – 7:53\n«Gebrechlichkeit I» – 7:53\n«Rundgang um die Transzendentale Säule der Singularität» – 25:11\n«Gebrechlichkeit II» – 7:53','https://lastfm.freetls.fastly.net/i/u/500x500/31443e9d9fd94db7cdcd35e897954c30.jpg','https://i.discogs.com/_ncCdHOQokAfrX0nx_-yi3Ge_CGLAmwSCZMSsxqMIXo/rs:fit/g:sm/q:40/h:300/w:300/czM6Ly9kaXNjb2dz/LWRhdGFiYXNlLWlt/YWdlcy9SLTIyMDcz/NTk2LTE2NDU1MzAz/ODctNzg5MS5qcGVn.jpeg',1,'2023-10-27 18:32:08','2023-10-27 18:32:08','Burzum','Black Metal'),(30,'Ashes of the Wake','1.	\"Laid to Rest\"	3:50\n2.	\"Hourglass\"	4:00\n3.	\"Now You\'ve Got Something to Die For\"	3:39\n4.	\"The Faded Line\"	4:37\n5.	\"Omerta\"	4:45\n6.	\"Blood of the Scribe\"	4:23\n7.	\"One Gun\"	3:59\n8.	\"Break You\"	3:35\n9.	\"What I\'ve Become\"	3:28\n10.	\"Ashes of the Wake\"	5:45\n11.	\"Remorse is for the Dead\"	5:41','https://cdns-images.dzcdn.net/images/cover/f031b764974942b5daef2e40b99e9c32/500x500.jpg','https://www.nuclearblast.com/media/catalog/product/1/0/1000x1000_198_700x700_4.jpg?optimize=medium&bg-color=255,255,255&fit=bounds&height=300&width=300&canvas=300:300',1,'2023-10-27 18:53:38','2023-10-27 18:53:38','Lamb of God','Groove Metal'),(32,'Cowboys from hell','1.	\"Cowboys from Hell\"	4:06\n2.	\"Primal Concrete Sledge\"	2:13\n3.	\"Psycho Holiday\"	5:19\n4.	\"Heresy\"	4:47\n5.	\"Cemetery Gates\"	7:02\n6.	\"Domination\"	5:04\n7.	\"Shattered\"	3:22\n8.	\"Clash with Reality\"	5:16\n9.	\"Medicine Man\"	5:15\n10.	\"Message in Blood\"	5:10\n11.	\"The Sleep\"	5:47\n12.	\"The Art of Shredding\"	4:18','https://cdns-images.dzcdn.net/images/cover/b8e78de81ec615be64c9179589439d17/500x500.jpg','https://i.scdn.co/image/ab67616d00001e020ce52f4ba340a1e459e6a978',1,'2023-10-27 22:59:01','2023-10-27 22:59:01','Pantera','Thrash Metal');
/*!40000 ALTER TABLE `imagenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2023_09_30_011341_create_imagenes_table',1),(6,'2023_10_27_181437_autor_genero',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-29  3:41:11
