-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: tecno_compra
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` binary(16) NOT NULL DEFAULT (unhex(replace(uuid(),_utf8mb3'-',_utf8mb4''))),
  `brand` varchar(25) NOT NULL,
  `image` text,
  `price` decimal(8,3) DEFAULT NULL,
  `stock` int DEFAULT NULL,
  `title` varchar(120) NOT NULL,
  `category` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (_binary '\\\–\ÓNé\Óç$/t\Z–ë','Philips','https://media.discordapp.net/attachments/1154525369672671388/1154529584746864680/241V8L-77.jpg?width=540&height=540',67.866,20,'Monitor Philips Led va 24 241v8l/77 V-Line Fhd 75hz Adaptative-Sync','Monitores'),(_binary '\\\–˜ré\Óç$/t\Z–ë','Lg','https://media.discordapp.net/attachments/1154525369672671388/1154537550023770122/24MK430H-B.jpg?width=540&height=540',99.099,3,'Monitor Lg Led Ips 24 24mk430h-B Full Hd 75hz Freesync','Monitores'),(_binary '\\\–˜≈é\Óç$/t\Z–ë','Hikvision','https://media.discordapp.net/attachments/1154525369672671388/1154538915542347828/D_NQ_NP_834803-MLU.jpg',59.953,0,'Monitor Hikvision Led 24 Vga Hdmi','Monitores'),(_binary '\\\–¯é\Óç$/t\Z–ë','Samsung','https://media.discordapp.net/attachments/1154525369672671388/1154539493395791872/concepto-5247146.jpg?width=540&height=540',101.462,20,'Monitor Samsung Led Ips 24 T350h Lf24t350fhl Fhd 75hz Freesync','Monitores'),(_binary '\\\–¯é\Óç$/t\Z–ë','Xiaomi','https://media.discordapp.net/attachments/1154525369672671388/1154541252113596517/6934177767166_800.jpg?width=540&height=540',144.074,40,'Smartphone Celular Xiaomi Redmi Note 11 4gb Ram 64gb Graphite Gray','Celulares'),(_binary '\\\–¯”é\Óç$/t\Z–ë','Xiaomi','https://media.discordapp.net/attachments/1154525369672671388/1154542164576051343/shome_yellow.jpg?width=540&height=540',224.116,20,'Smartphone Xiaomi Celular Poco M4 Pro 6gb Ram 128gb Yellow','Celulares'),(_binary '\\\–˘é\Óç$/t\Z–ë','Dell','https://media.discordapp.net/attachments/1154525369672671388/1154543856839307334/compragamer_.jpg',600.888,4,'Notebook Gamer Alienware 15.6 Core i7 11800H 16GB 512GB SSD NVMe RTX 3060 W10 144Hz','Notebooks'),(_binary '\\\–˘≥é\Óç$/t\Z–ë','Xiaomi','https://media.discordapp.net/attachments/1154525369672671388/1154544910985338960/xiaomi-12x-5g-dual-sim-gris.jpg?width=540&height=540',580.698,23,'Celular Xiaomi 12X 5G Dual Sim 8GB RAM + 128GB Gris','Celulares'),(_binary '\\\–˙é\Óç$/t\Z–ë','Xiaomi','https://media.discordapp.net/attachments/1154525369672671388/1154549158104019036/compragamer_Imganen_general_36159_Celular_Xiaomi.jpg',311.255,13,'Celular Xiaomi MI 11 Lite 5GNE Dual Sim 8GB RAM + 128GB Black','Celulares'),(_binary '\\\–˙né\Óç$/t\Z–ë','Xiaomi','https://media.discordapp.net/attachments/1154525369672671388/1154550213642555443/s-l640.jpg?width=450&height=540',182.899,9,'Celular Xiaomi Redmi 10 Dual Sim 4GB RAM + 128GB Carbon','Celulares'),(_binary '\\\–˙˜é\Óç$/t\Z–ë','Dell','https://media.discordapp.net/attachments/1154525369672671388/1154551856064892928/compragamerrerewrwerewrwerwerwerwer_.jpg',389.789,12,'Notebook Dell Vostro 3405 14 HD Ryzen 5 3450U 8GB 256GB SSD NVMe Freedos','Notebooks'),(_binary '\\\–˚;é\Óç$/t\Z–ë','Lenovo','https://media.discordapp.net/attachments/1154525369672671388/1154552628823466034/compragamer_Imganen_general_32912_Notebook_Lenovo_V14-ITL_14__Core_I5_1135ce-grn.jpg',456.959,19,'Notebook Lenovo V14-ITL 14 Core I5 1135G7 8GB 256GB SSD NVMe Freedos','Notebooks'),(_binary '\\\–˚ßé\Óç$/t\Z–ë','Asus','https://media.discordapp.net/attachments/1154525369672671388/1154553056868962345/D_NQ_NP_921162-MLA50306420846_062022-O.jpg',569.995,21,'Notebook Asus X515EA 15.6 FHD Core I7 1165G7 8GB 512GB SSD NVMe Freedos','Notebooks'),(_binary '\\\–˚\Ïé\Óç$/t\Z–ë','Asus','https://media.discordapp.net/attachments/1154525369672671388/1154553635938783252/compragamer_Imganen_general_3521_Home_5ea2a8d2-grn.jpg',717.992,10,'Notebook Asus Vivobook M3500 OLED FHD 15.6 Ryzen 7 5800H 16GB 512GB SSD NVMe W11 Home','Notebooks'),(_binary '\\\–¸3é\Óç$/t\Z–ë','Corsair','https://media.discordapp.net/attachments/1154525369672671388/1154555629143334942/CF-9010030-WW-1.jpg?width=540&height=540',259.492,8,'Silla Gamer Corsair T3 Rush Fabric Gris/Blanco','Sillas Gamers'),(_binary '\\\–¸~é\Óç$/t\Z–ë','Vertagear','https://media.discordapp.net/attachments/1154525369672671388/1154555962737311844/compragamer_Imganen_general_33421_Silla_grn.jpg',533.351,4,'Silla Gamer Vertagear Racing Series PL-4500 Crystals from Swarovski','Sillas Gamers'),(_binary '\\\–¸¯é\Óç$/t\Z–ë','HHGears','https://media.discordapp.net/attachments/1154525369672671388/1154556425956233266/compragamer_Imganen_general_16692_Silla_-grn.jpg',68.945,18,'Silla Gamer HHGears SM-115 Negro y Verde Hasta 90kg','Sillas Gamers'),(_binary '\\\–˝gé\Óç$/t\Z–ë','Silla Buena','C:fakepath1366_2000.jpg',170.000,25,'Silla Gamer Checkpoint FIFA MT-2000 Qatar','Sillas Gamers');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-12-08 17:19:21
