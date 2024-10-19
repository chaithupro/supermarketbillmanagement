-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: gs
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_details` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `quantity` double NOT NULL,
  `total_price` double NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `fk_product_id_idx` (`product_id`),
  CONSTRAINT `fk_orderid` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON UPDATE RESTRICT,
  CONSTRAINT `fk_product_id` FOREIGN KEY (`product_id`) REFERENCES `products` (`product_id`) ON UPDATE RESTRICT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='	';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `order_id` int NOT NULL AUTO_INCREMENT,
  `customer_name` varchar(100) NOT NULL,
  `total` double NOT NULL,
  `dateime` datetime DEFAULT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='		';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (101,'Chaithantya',240,'2020-11-15 00:00:00');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `uom_id` int DEFAULT NULL,
  `price_per_unit` double DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  KEY `uom_id_idx` (`uom_id`),
  CONSTRAINT `fk_uom_id` FOREIGN KEY (`uom_id`) REFERENCES `uom` (`uom_id`) ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=312 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (11,'apple',2,200),(12,'milk',3,10),(13,'potatoes',1,10),(14,'Colgate',1,50),(15,'Book',1,100),(16,'Rice',2,50),(17,'juice',3,40),(18,'pen',1,10),(19,'Notebook',1,20),(20,'Pencil',1,5),(21,'Eraser',1,3),(22,'Ruler',1,10),(23,'Marker',1,15),(24,'Glue',1,25),(25,'Sharpener',1,5),(26,'Highlighter',1,12),(27,'Stapler',1,30),(28,'Paper Clip',1,8),(29,'Folder',1,10),(30,'Scissors',1,35),(31,'Tape',1,10),(32,'Calculator',1,50),(33,'Notebook Set',1,60),(34,'Textbook',1,150),(35,'Sketch Pad',1,40),(36,'Post-It Notes',1,20),(37,'Index Cards',1,15),(38,'Drawing Pad',1,30),(39,'Protractor',1,15),(40,'Compass',1,20),(41,'Art Supplies Kit',1,80),(42,'Whiteboard Marker',1,5),(43,'Chalk',1,5),(44,'Bulletin Board',1,100),(45,'Sticky Notes',1,10),(46,'Binding Machine',1,120),(47,'File Organizer',1,25),(48,'Paper Cutter',1,45),(49,'Drawing Pencils',1,15),(50,'Paint Brush',1,10),(51,'Colored Pencils',1,25),(52,'Markers Set',1,50),(53,'Glitter Pens',1,30),(54,'Craft Scissors',1,15),(55,'Watercolor Set',1,40),(56,'Sketching Set',1,60),(57,'Art Easel',1,70),(58,'Canvas Board',1,25),(59,'Laser Pointer',1,40),(60,'Laminator',1,100),(61,'3D Pen',1,50),(62,'Bullet Journal',1,30),(63,'Filofax Planner',1,45),(64,'Art Portfolio',1,60),(65,'Business Card Holder',1,20),(66,'Postcard Set',1,15),(67,'Crafting Tools',1,80),(68,'Rice',2,50),(69,'Sugar',2,45),(70,'Flour',2,30),(71,'Salt',2,10),(72,'Oats',2,25),(73,'Quinoa',2,80),(74,'Lentils',2,40),(75,'Barley',2,35),(76,'Chickpeas',2,50),(77,'Pulses Mix',2,60),(78,'Brown Rice',2,55),(79,'Couscous',2,30),(80,'Semolina',2,25),(81,'Buckwheat',2,45),(82,'Mung Beans',2,50),(83,'Split Peas',2,30),(84,'Pasta',2,40),(85,'Noodles',2,35),(86,'Cornmeal',2,30),(87,'Polenta',2,20),(88,'Peanut Butter',2,100),(89,'Almonds',2,200),(90,'Walnuts',2,250),(91,'Pistachios',2,300),(92,'Cashews',2,250),(93,'Sunflower Seeds',2,150),(94,'Pumpkin Seeds',2,200),(95,'Flax Seeds',2,250),(96,'Chia Seeds',2,300),(97,'Granola',2,80),(98,'Breakfast Cereal',2,60),(99,'Instant Noodles',2,40),(100,'Bread Crumbs',2,30),(101,'Cake Mix',2,40),(102,'Pudding Mix',2,25),(103,'Jelly Powder',2,20),(104,'Corn Starch',2,15),(105,'Yeast',2,10),(106,'Baking Powder',2,5),(107,'Baking Soda',2,5),(108,'Orange Juice',3,50),(109,'Apple Juice',3,55),(110,'Grape Juice',3,60),(111,'Lemonade',3,40),(112,'Coconut Water',3,80),(113,'Mineral Water',3,20),(114,'Soft Drink',3,35),(115,'Iced Tea',3,30),(116,'Coffee',3,100),(117,'Milk',3,40),(118,'Soy Milk',3,50),(119,'Almond Milk',3,60),(120,'Cream',3,80),(121,'Cooking Oil',3,120),(122,'Vinegar',3,15),(123,'Soy Sauce',3,25),(124,'Ketchup',3,20),(125,'Mustard',3,15),(126,'Hot Sauce',3,30),(127,'Salad Dressing',3,40),(128,'Pasta Sauce',3,45),(129,'Tomato Sauce',3,30),(130,'BBQ Sauce',3,50),(131,'Syrup',3,25),(132,'Honey',3,150),(133,'Maple Syrup',3,200),(134,'Fruit Smoothie',3,80),(135,'Yogurt',3,40),(136,'Ice Cream',3,100),(137,'Frozen Juice',3,60),(138,'Sports Drink',3,35),(139,'Protein Shake',3,80),(140,'Tea',3,20),(141,'Herbal Tea',3,25),(142,'Fruit Punch',3,30),(143,'Beer',3,150),(144,'Wine',3,300),(145,'Spirits',3,500),(146,'Cocktail Mix',3,80),(147,'Lemon Juice',3,30),(148,'Peach Juice',3,60),(149,'Pineapple Juice',3,55),(150,'Tomato Juice',3,40),(151,'Vegetable Juice',3,45),(152,'Notebook 200 Pages',1,30),(153,'Mechanical Pencil',1,10),(154,'Whiteboard Eraser',1,7),(155,'Wooden Ruler',1,15),(156,'Permanent Marker',1,12),(157,'Spray Adhesive',1,22),(158,'Pencil Case',1,15),(159,'Coloring Book',1,12),(160,'Sketching Pencils',1,18),(161,'Chalkboard Markers',1,25),(162,'Binder Clips',1,5),(163,'File Folders',1,10),(164,'Scotch Tape',1,8),(165,'Graph Paper',1,20),(166,'Dot Grid Notebook',1,25),(167,'Paint Palette',1,20),(168,'Watercolor Pencils',1,35),(169,'Acrylic Paint Set',1,45),(170,'Canvas Stretchers',1,30),(171,'Color Mixing Guide',1,10),(172,'Calligraphy Set',1,40),(173,'Letter Stencils',1,15),(174,'Origami Paper',1,20),(175,'Charcoal Pencils',1,25),(176,'Color Chart',1,5),(177,'Watercolor Paper',1,30),(178,'Oil Pastels',1,40),(179,'Drawing Charcoal',1,15),(180,'Art Smock',1,25),(181,'Table Easel',1,50),(182,'Craft Knife',1,10),(183,'Sewing Kit',1,15),(184,'Stitching Paper',1,12),(185,'Sewing Patterns',1,20),(186,'Knitting Yarn',1,30),(187,'Embroidery Thread',1,10),(188,'Button Maker',1,45),(189,'Fabric Glue',1,8),(190,'Beading Kit',1,25),(191,'Crafting Foam',1,10),(192,'Paper Mache',1,15),(193,'Resin Kit',1,50),(194,'Clay Modeling Set',1,40),(195,'Crayons',1,10),(196,'Felt Sheets',1,15),(197,'Glitter',1,12),(198,'Foil Sheets',1,20),(199,'Candle Making Kit',1,35),(200,'Soap Making Kit',1,40),(201,'Baking Tray',1,15),(202,'Measuring Cups',1,20),(203,'Rolling Pin',1,30),(204,'Whisk',1,10),(205,'Mixing Bowl',1,25),(206,'Cookie Cutter Set',1,15),(207,'Pastry Brush',1,10),(208,'Silicone Baking Mat',1,20),(209,'Cake Molds',1,30),(210,'Pastry Bag',1,15),(211,'Cupcake Liners',1,10),(212,'Cake Stand',1,40),(213,'Baking Sheet',1,20),(214,'Bread Pan',1,25),(215,'Muffin Tin',1,20),(216,'Pizza Cutter',1,15),(217,'Slicing Knife',1,30),(218,'Grater',1,10),(219,'Peeler',1,10),(220,'Spatula',1,12),(221,'Potato Masher',1,15),(222,'Tongs',1,20),(223,'Meat Tenderizer',1,25),(224,'Salad Spinner',1,30),(225,'Thermometer',1,20),(226,'Frying Pan',1,60),(227,'Saucepan',1,40),(228,'Stock Pot',1,80),(229,'Wok',1,50),(230,'Griddle',1,70),(231,'Electric Mixer',1,150),(232,'Food Processor',1,200),(233,'Blender',1,100),(234,'Juicer',1,120),(235,'Coffee Maker',1,80),(236,'Toaster',1,40),(237,'Rice Cooker',1,70),(238,'Slow Cooker',1,150),(239,'Pressure Cooker',1,100),(240,'Induction Cooktop',1,120),(241,'Electric Grill',1,150),(242,'Deep Fryer',1,100),(243,'Oven Mitts',1,10),(244,'Apron',1,15),(245,'Kitchen Towel',1,5),(246,'Dish Rack',1,25),(247,'Trash Can',1,30),(248,'Storage Containers',1,35),(249,'Lunch Box',1,20),(250,'Water Bottle',1,15),(251,'Coffee Mug',1,10),(252,'Dinner Plate',1,15),(253,'Soup Bowl',1,20),(254,'Cutting Board',1,25),(255,'Measuring Spoon',1,8),(256,'Chopping Knife',1,15),(257,'Salad Bowl',1,20),(258,'Pie Dish',1,30),(259,'Cake Server',1,10),(260,'Sifter',1,15),(261,'Corn on the Cob Holders',1,5),(262,'Skewers',1,3),(263,'Basting Brush',1,12),(264,'Pizza Stone',1,30),(265,'Fish Turner',1,10),(266,'Grill Pan',1,60),(267,'Pan Protector',1,15),(268,'Spice Rack',1,40),(269,'Salt Shaker',1,5),(270,'Pepper Mill',1,15),(271,'Kitchen Scale',1,20),(272,'Tea Infuser',1,10),(273,'Tupperware',1,15),(274,'Bento Box',1,25),(275,'Spiralizer',1,20),(276,'Food Storage Bags',1,10),(277,'Ice Cream Scoop',1,10),(278,'Corn Stripper',1,15),(279,'Herb Scissors',1,20),(280,'Citrus Juicer',1,10),(281,'Butter Dish',1,15),(282,'Egg Timer',1,5),(283,'Meat Thermometer',1,25),(284,'Fish Scaler',1,15),(285,'Nutcracker',1,10),(286,'Gravy Boat',1,20),(287,'Condiment Dispenser',1,15),(288,'Funnel',1,5),(289,'Hot Pot',1,100),(290,'Spaghetti Server',1,12),(291,'Meat Grinder',1,200),(292,'Taco Holder',1,10),(293,'Salad Dressing Shaker',1,8),(294,'Chafing Dish',1,80),(295,'Serving Platter',1,30),(296,'Drink Dispenser',1,60),(297,'Snack Bowl',1,10),(298,'Dough Cutter',1,15),(299,'Biscuit Cutter',1,10),(300,'Kitchen Utensil Holder',1,20),(301,'Cutlery Tray',1,15),(302,'Baking Cups',1,5),(303,'Egg Separator',1,7),(304,'Jelly Molds',1,10),(305,'Soda Can Holder',1,5),(306,'Pizza Wheel',1,10),(307,'Oven Thermometer',1,12),(308,'Spoon Rest',1,10),(309,'Waffle Maker',1,60),(310,'Electric Kettle',1,50),(311,'potatoes',1,10);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uom`
--

DROP TABLE IF EXISTS `uom`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `uom` (
  `uom_id` int NOT NULL,
  `uom_name` varchar(45) NOT NULL,
  PRIMARY KEY (`uom_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uom`
--

LOCK TABLES `uom` WRITE;
/*!40000 ALTER TABLE `uom` DISABLE KEYS */;
INSERT INTO `uom` VALUES (1,'each'),(2,'kg'),(3,'liter');
/*!40000 ALTER TABLE `uom` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-19 16:59:10
