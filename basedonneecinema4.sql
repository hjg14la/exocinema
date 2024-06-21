-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           8.0.30 - MySQL Community Server - GPL
-- SE du serveur:                Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Listage de la structure de la base pour cinema
CREATE DATABASE IF NOT EXISTS `cinema` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cinema`;

-- Listage de la structure de table cinema. acteur
CREATE TABLE IF NOT EXISTS `acteur` (
  `id_acteur` int NOT NULL AUTO_INCREMENT,
  `prenom` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `nom` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `sexe` char(1) DEFAULT NULL,
  `date_naissance` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_acteur`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table cinema.acteur : ~0 rows (environ)
DELETE FROM `acteur`;
INSERT INTO `acteur` (`id_acteur`, `prenom`, `nom`, `sexe`, `date_naissance`) VALUES
	(1, 'scarlett', 'johanson', 'f', '0'),
	(2, 'pilov', 'asbaek', 'f', '0'),
	(3, 'takeshi', 'kitano', 'h', '0'),
	(4, 'wes', 'ball', 'h', '0'),
	(5, 'dylan', 'obrien', 'h', '0'),
	(6, 'kaya', 'scodelario', 'f', '0'),
	(7, 'aidan', 'gillen', 'h', '0'),
	(8, 'lino', 'ventura', 'h', '0'),
	(9, 'leo', 'glenn', 'h', '0'),
	(10, 'suzanne', 'flow', 'f', '0'),
	(11, 'toby', 'kebhell', 'h', '0'),
	(12, 'maggie', 'grace', 'f', '0'),
	(13, 'ryan', 'kwanten', 'f', '0'),
	(14, 'lee', 'byunghun', 'h', '0'),
	(15, 'choi', 'myunggil', 'h', '0'),
	(16, 'kim', 'yoonseok', 'h', '0'),
	(17, 'mel', 'gibson', 'h', '0'),
	(18, 'heath', 'ledger', 'f', '0'),
	(19, 'joely', 'richardson', 'h', '0'),
	(20, 'gian', 'mariavolonte', 'h', '0'),
	(21, 'tomas', 'milian', 'h', '0'),
	(22, 'william', 'berger', 'h', '0'),
	(23, 'christian', 'bale', 'h', '0'),
	(24, 'rosamund', 'pike', 'f', '0'),
	(25, 'wes', 'studi', 'h', '0'),
	(26, 'koen', 'debouw', 'h', '0'),
	(27, 'werner', 'desmedt', 'h', '0'),
	(28, 'marcel', 'hensema', 'h', '0'),
	(29, 'vincent', 'perez', 'h', '0'),
	(30, 'geraldine', 'pailhas', 'f', '0'),
	(31, 'mathieu', 'roze', 'h', '0');

-- Listage de la structure de table cinema. film
CREATE TABLE IF NOT EXISTS `film` (
  `id_film` int NOT NULL AUTO_INCREMENT,
  `id_realisateur` int NOT NULL,
  `titre` varchar(50) DEFAULT NULL,
  `duree` double DEFAULT NULL,
  `synopsis` longtext,
  `note` int DEFAULT NULL,
  `affiche` varchar(50) DEFAULT NULL,
  `date_sortie` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_film`),
  KEY `id_realisateur` (`id_realisateur`),
  CONSTRAINT `FK_film_realisateur` FOREIGN KEY (`id_realisateur`) REFERENCES `realisateur` (`id_realisateur`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table cinema.film : ~0 rows (environ)
DELETE FROM `film`;
INSERT INTO `film` (`id_film`, `id_realisateur`, `titre`, `duree`, `synopsis`, `note`, `affiche`, `date_sortie`) VALUES
	(1, 1, 'ghostintheshell', 110, NULL, 1, NULL, '2017'),
	(2, 4, 'lelabyrinthe', 90, NULL, 1, NULL, '2018'),
	(3, 2, 'lesilencieux', 190, NULL, 1, NULL, '1973'),
	(4, 3, 'hurricane', 120, NULL, 1, NULL, '2017'),
	(5, 1, 'thefortress', 120, NULL, 1, NULL, '2016'),
	(6, 2, 'thepatriot', 90, NULL, 1, NULL, '2000'),
	(7, 3, 'ledernierfaceaface', 110, NULL, 1, NULL, '1967'),
	(8, 7, 'hostiles', 150, NULL, 1, NULL, '2017'),
	(9, 8, 'doubleface', 90, NULL, 1, NULL, '2017'),
	(10, 9, 'laneigeetlefeu', 120, NULL, 1, NULL, '1991');

-- Listage de la structure de table cinema. genre_cinematographique
CREATE TABLE IF NOT EXISTS `genre_cinematographique` (
  `id_genre` int NOT NULL AUTO_INCREMENT,
  `nom_genre` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id_genre`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table cinema.genre_cinematographique : ~0 rows (environ)
DELETE FROM `genre_cinematographique`;
INSERT INTO `genre_cinematographique` (`id_genre`, `nom_genre`) VALUES
	(1, 'sciencefiction'),
	(2, 'thriller'),
	(3, 'policier'),
	(5, 'aventures'),
	(7, 'western'),
	(8, 'espionnage'),
	(9, 'comedie'),
	(10, 'drame');

-- Listage de la structure de table cinema. jouer
CREATE TABLE IF NOT EXISTS `jouer` (
  `id_acteur` int DEFAULT NULL,
  `id_film` int DEFAULT NULL,
  KEY `id_acteur` (`id_acteur`,`id_film`) USING BTREE,
  KEY `id_film` (`id_film`,`id_acteur`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table cinema.jouer : ~5 rows (environ)
DELETE FROM `jouer`;
INSERT INTO `jouer` (`id_acteur`, `id_film`) VALUES
	(1, 2),
	(1, 4),
	(1, 6),
	(1, 7),
	(2, 4);

-- Listage de la structure de table cinema. posseder
CREATE TABLE IF NOT EXISTS `posseder` (
  `id_genre` int NOT NULL AUTO_INCREMENT,
  `id_film` int DEFAULT NULL,
  PRIMARY KEY (`id_genre`),
  KEY `id_film` (`id_film`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table cinema.posseder : ~0 rows (environ)
DELETE FROM `posseder`;
INSERT INTO `posseder` (`id_genre`, `id_film`) VALUES
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 4),
	(5, 5),
	(6, 6),
	(7, 7),
	(8, 8),
	(9, 9),
	(10, 10);

-- Listage de la structure de table cinema. realisateur
CREATE TABLE IF NOT EXISTS `realisateur` (
  `id_realisateur` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `prenom` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `sexe` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `date_naissance` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id_realisateur`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table cinema.realisateur : ~0 rows (environ)
DELETE FROM `realisateur`;
INSERT INTO `realisateur` (`id_realisateur`, `nom`, `prenom`, `sexe`, `date_naissance`) VALUES
	(1, 'rupert', 'sanders', 'm', '0'),
	(2, 'wes', 'ball', 'm', '0'),
	(3, 'claude', 'pinoteau', 'm', '0'),
	(4, 'rob', 'cohen', 'm', '0'),
	(5, 'hwang', 'donghyuk', 'm', '0'),
	(6, 'roland', 'emmerich', 'm', '0'),
	(7, 'sergio', 'sollina', 'm', '0'),
	(8, 'scott', 'cooper', 'm', '0'),
	(9, 'jan', 'verheyen', 'm', '0');

-- Listage de la structure de table cinema. role
CREATE TABLE IF NOT EXISTS `role` (
  `id_role` int NOT NULL AUTO_INCREMENT,
  `id_acteur` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id_role`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Listage des données de la table cinema.role : ~40 rows (environ)
DELETE FROM `role`;
INSERT INTO `role` (`id_role`, `id_acteur`) VALUES
	(1, '1'),
	(2, '4'),
	(3, '4'),
	(4, '2'),
	(5, '3'),
	(6, '4'),
	(7, '5'),
	(8, '6'),
	(9, '7'),
	(10, '8'),
	(11, '9'),
	(12, '10'),
	(13, '11'),
	(14, '12'),
	(15, '13'),
	(16, '14'),
	(17, '15'),
	(18, '16'),
	(19, '17'),
	(20, '18'),
	(21, '19'),
	(22, '20'),
	(23, '21'),
	(24, '22'),
	(25, '23'),
	(26, '24'),
	(27, '25'),
	(28, '26'),
	(29, '27'),
	(30, '28'),
	(31, '29'),
	(32, '30'),
	(33, '31'),
	(34, '30'),
	(35, '20'),
	(36, '15'),
	(37, '16'),
	(38, '17'),
	(39, '18'),
	(40, '2');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
