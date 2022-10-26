-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: company
-- ------------------------------------------------------
-- Server version	8.0.30


--
-- Table structure for table `users`
--


CREATE TABLE `users` (
  `UserID` int NOT NULL,
  `User Name` varchar(60) NOT NULL,
  `Email` varchar(60) NOT NULL,
  `Address` varchar(150) NOT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `Product id` int NOT NULL,
  `Name` varchar(60) NOT NULL,
  `Price` float NOT NULL,
  `Quantity at Hand` int NOT NULL,
  PRIMARY KEY (`Product id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


--
-- Table structure for table `deliveries`
--

DROP TABLE IF EXISTS `deliveries`;
CREATE TABLE `deliveries` (
  `Product id` int NOT NULL,
  `Product Name` varchar(100) NOT NULL,
  `Delivery Location` varchar(150) NOT NULL,
  `Receiver Name` varchar(45) NOT NULL,
  `Tracking No` int NOT NULL,
  PRIMARY KEY (`Product id`),
  CONSTRAINT `deliveries_ibfk_1` FOREIGN KEY (`Product id`) REFERENCES `products` (`Product id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;











-- Dump completed
