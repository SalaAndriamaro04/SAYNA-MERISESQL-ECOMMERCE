-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: ecommerce
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'highTech','les nouvelles technologies'),(2,'maison','outils menagere pour la famille'),(3,'auto','tout ce qui est automobile'),(4,'produits laitiers','produits originaire animal'),(5,'luxe','produits haut de gamme'),(6,'chaussures','couvreur extensible et souple');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clients`
--

DROP TABLE IF EXISTS `clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clients` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `ville` varchar(255) DEFAULT NULL,
  `rue` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `num_phone` varchar(255) DEFAULT NULL,
  `code_postal` varchar(255) DEFAULT NULL,
  `pays` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clients`
--

LOCK TABLES `clients` WRITE;
/*!40000 ALTER TABLE `clients` DISABLE KEYS */;
INSERT INTO `clients` VALUES (1,'Doe','John','New York','123 Main St','john.doe@example.com','123-456-7890','10001','USA'),(2,'Smith','Jane','Los Angeles','456 Elm St','jane.smith@example.com','987-654-3210','90001','USA'),(3,'Johnson','Alice','Chicago','789 Oak St','alice.johnson@example.com','555-555-5555','60601','USA'),(4,'Williams','Bob','Houston','567 Pine St','bob.williams@example.com','111-222-3333','77001','USA'),(5,'Martin','Eva','Miami','234 Beach Rd','eva.martin@example.com','777-888-9999','33101','USA'),(6,'Amissah-Arthur','Kwesi','Cape Coast','Pedu Rd','kwesi.arthur@example.com','233-244-567890','00233','Ghana'),(7,'Dos Santos','Isabel','Luanda','Miramar','isabel.dos.santos@example.com','244-926-123456','1000','Angola'),(8,'Déby','Idriss','NDjamena','Presidential Palace','idriss.deby@example.com','235-662-111222','01 BP 109','Chad'),(9,'Ravalomanana','Marc','Antananarivo','Iavoloha','marc.ravalomanana@example.com','261-20-1234567','101','Madagascar'),(10,'Christian','Ntsay','Antananarivo','Ambohitsorohitra','christian.ntsay@example.com','261-20-9876543','101','Madagascar'),(11,'Rajaonarimampianina','Jean','Antananarivo','Iavoloha','jean.rajaonarimampianina@example.com','261-20-5555555','101','Madagascar'),(12,'Rajoelina','Andry','Antananarivo','Ambohitsorohitra','andry.rajoelina@example.com','261-20-7777777','101','Madagascar'),(13,'Rajaonarimampianina','Hery','Antananarivo','Iavoloha','hery.rajaonarimampianina@example.com','261-20-8888888','101','Madagascar'),(14,'Ratsiraka','Didier','Toamasina','Toamasina I','didier.ratsiraka@example.com','261-53-1234567','501','Madagascar'),(15,'Nkrumah','Kwame','Accra','1 Independence Ave','kwame.nkrumah@example.com','233-244-123456','GA1','Ghana'),(16,'Mandela','Nelson','Johannesburg','46664 Vilakazi St','nelson.mandela@example.com','27-123-456789','2000','South Africa'),(17,'Selassie','Haile','Addis Ababa','Imperial Palace','haile.selassie@example.com','251-911-987654','1000','Ethiopia'),(18,'Maathai','Wangari','Nairobi','Karura Forest','wangari.maathai@example.com','254-722-555555','00100','Kenya'),(19,'Sédar Senghor','Léopold','Dakar','Avenue Léopold Sédar Senghor','leopold.senghor@example.com','221-777-111222','BP 98','Senegal');
/*!40000 ALTER TABLE `clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `commandes`
--

DROP TABLE IF EXISTS `commandes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commandes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date_commande` datetime DEFAULT NULL,
  `date_livraison` datetime DEFAULT NULL,
  `quantite` int NOT NULL,
  `id_clients` int DEFAULT NULL,
  `id_produits` int DEFAULT NULL,
  `etat_commande` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_clients` (`id_clients`),
  KEY `id_produits` (`id_produits`),
  CONSTRAINT `commandes_ibfk_1` FOREIGN KEY (`id_clients`) REFERENCES `clients` (`id`),
  CONSTRAINT `commandes_ibfk_2` FOREIGN KEY (`id_produits`) REFERENCES `produits` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commandes`
--

LOCK TABLES `commandes` WRITE;
/*!40000 ALTER TABLE `commandes` DISABLE KEYS */;
INSERT INTO `commandes` VALUES (1,'2023-08-01 10:00:00','2023-08-02 15:00:00',3,1,1,NULL),(2,'2023-08-02 11:30:00','2023-08-03 14:45:00',5,2,2,NULL),(3,'2023-08-03 09:15:00','2023-08-04 12:30:00',7,3,3,NULL),(4,'2023-08-04 13:00:00','2023-08-05 16:15:00',1,4,4,NULL),(5,'2023-08-05 14:30:00','2023-08-06 18:30:00',10,5,1,NULL),(6,'2023-08-06 10:45:00','2023-08-07 13:45:00',7,6,2,NULL),(7,'2023-08-07 12:00:00','2023-08-08 15:15:00',2,7,1,NULL),(8,'2023-08-08 08:15:00','2023-08-09 11:30:00',1,8,1,NULL),(9,'2023-08-09 14:00:00','2023-08-10 17:30:00',9,9,3,NULL),(10,'2023-08-10 09:30:00','2023-08-11 12:45:00',12,10,4,NULL),(11,'2023-08-11 11:45:00','2023-08-12 14:30:00',23,11,1,NULL),(12,'2023-08-12 13:30:00','2023-08-13 16:15:00',7,12,3,NULL),(13,'2023-08-13 15:00:00','2023-08-14 18:30:00',18,13,1,NULL),(14,'2023-08-14 10:15:00','2023-08-15 13:45:00',16,14,5,NULL),(15,'2023-08-15 12:30:00','2023-08-16 15:15:00',9,15,6,NULL),(16,'2023-08-16 08:45:00','2023-08-17 11:30:00',20,16,7,NULL),(17,'2023-08-17 14:15:00','2023-08-18 17:30:00',13,17,1,NULL),(18,'2023-08-18 09:00:00','2023-08-19 12:45:00',13,18,2,NULL),(19,'2023-08-19 10:45:00','2023-08-20 13:30:00',7,19,5,NULL);
/*!40000 ALTER TABLE `commandes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produits`
--

DROP TABLE IF EXISTS `produits`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produits` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `prix` int NOT NULL,
  `stock_dispo` int DEFAULT NULL,
  `id_categories` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_categories` (`id_categories`),
  CONSTRAINT `produits_ibfk_1` FOREIGN KEY (`id_categories`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produits`
--

LOCK TABLES `produits` WRITE;
/*!40000 ALTER TABLE `produits` DISABLE KEYS */;
INSERT INTO `produits` VALUES (1,'souris','pointeur pour pc',12,10,NULL),(2,'processeur','amd derniere generation 2023',56,5,NULL),(3,'ecran','full hd 32pouce',110,23,NULL),(4,'boulloir','chauffage a eau rapide',22,33,NULL),(5,'thermos','conteneur eau chaud de long duree',30,19,NULL),(6,'fer a repasser','ajuster les plis de vos vetements ',34,10,NULL),(7,'montre','montre special a frederic nadal',230,12,NULL),(8,'complet','tenue de ceremonie elegante',58,34,NULL),(9,'pneu mutsibishi','pneumamtique a adopter en cette annee',24,45,NULL),(10,'yzzi','yaourt de saveur vanille & fraise',4,78,NULL),(11,'nicas','chaussure de danse latine',20,35,NULL);
/*!40000 ALTER TABLE `produits` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `utilisateurs`
--

DROP TABLE IF EXISTS `utilisateurs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `utilisateurs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) DEFAULT NULL,
  `mot_de_passe` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `id_clients` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_clients` (`id_clients`),
  CONSTRAINT `utilisateurs_ibfk_1` FOREIGN KEY (`id_clients`) REFERENCES `clients` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `utilisateurs`
--

LOCK TABLES `utilisateurs` WRITE;
/*!40000 ALTER TABLE `utilisateurs` DISABLE KEYS */;
INSERT INTO `utilisateurs` VALUES (1,'Doe','Doe2023@','utilisateur',NULL),(2,'Smith','Smith@12','utilisateur',NULL),(3,'Johnson','John@2022','utilisateur',NULL),(4,'Williams','02dawili','administrateur',NULL);
/*!40000 ALTER TABLE `utilisateurs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-09-13 17:05:50
