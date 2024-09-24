-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3307
-- Généré le : lun. 23 sep. 2024 à 13:04
-- Version du serveur : 10.10.2-MariaDB
-- Version de PHP : 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `tifosi`
--

-- --------------------------------------------------------

--
-- Structure de la table `achete`
--

DROP TABLE IF EXISTS `achete`;
CREATE TABLE IF NOT EXISTS `achete` (
  `jour` date NOT NULL DEFAULT current_timestamp(),
  `id_client` int(11) NOT NULL,
  `id_focaccia` int(11) NOT NULL,
  KEY `id_client` (`id_client`),
  KEY `id_focaccia` (`id_focaccia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `boisson`
--

DROP TABLE IF EXISTS `boisson`;
CREATE TABLE IF NOT EXISTS `boisson` (
  `nom_boisson` varchar(45) NOT NULL,
  `id_boisson` int(11) NOT NULL AUTO_INCREMENT,
  `id_marque` int(11) NOT NULL,
  PRIMARY KEY (`id_boisson`),
  KEY `id_marque` (`id_marque`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Déchargement des données de la table `boisson`
--

INSERT INTO `boisson` (`nom_boisson`, `id_boisson`, `id_marque`) VALUES
('Coca-cola zéro', 1, 1),
('Coca-cola original', 2, 1),
('Fanta citron', 3, 1),
('Fanta orange', 4, 1),
('Capri-sun', 5, 1),
('Pepsi', 6, 4),
('Pepsi max zéro', 7, 4),
('Lipton zéro citron', 8, 4),
('Lipton Peach', 9, 4),
('Monster energy ultra gold', 10, 3),
('Monster energy ultra blue', 11, 3),
('Eau de source', 12, 2);

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `id_client` int(11) NOT NULL AUTO_INCREMENT,
  `nom_client` varchar(45) NOT NULL,
  `age` int(11) NOT NULL,
  `cp_client` int(11) NOT NULL,
  PRIMARY KEY (`id_client`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `comprend`
--

DROP TABLE IF EXISTS `comprend`;
CREATE TABLE IF NOT EXISTS `comprend` (
  `id_focaccia` int(11) NOT NULL,
  `id_ingredient` int(11) NOT NULL,
  KEY `id_focaccia` (`id_focaccia`),
  KEY `id_ingredient` (`id_ingredient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Déchargement des données de la table `comprend`
--

INSERT INTO `comprend` (`id_focaccia`, `id_ingredient`) VALUES
(1, 5),
(1, 25),
(1, 9),
(1, 13),
(1, 1),
(1, 3),
(1, 7),
(1, 18),
(1, 20),
(1, 16),
(2, 5),
(2, 11),
(2, 9),
(2, 1),
(2, 7),
(2, 18),
(2, 20),
(2, 16),
(3, 5),
(3, 22),
(3, 9),
(3, 1),
(3, 7),
(3, 18),
(3, 20),
(4, 6),
(4, 10),
(4, 9),
(4, 7),
(4, 18),
(4, 20),
(4, 15),
(5, 5),
(5, 25),
(5, 9),
(5, 12),
(5, 7),
(5, 18),
(5, 20),
(5, 16),
(5, 17),
(6, 5),
(6, 25),
(6, 9),
(6, 4),
(6, 2),
(6, 19),
(6, 18),
(6, 20),
(6, 16),
(7, 5),
(7, 25),
(7, 9),
(7, 4),
(7, 21),
(7, 18),
(7, 20),
(7, 16),
(8, 6),
(8, 8),
(8, 9),
(8, 21),
(8, 13),
(8, 1),
(8, 3),
(8, 7),
(8, 18),
(8, 20),
(8, 16),
(8, 14);

-- --------------------------------------------------------

--
-- Structure de la table `contient`
--

DROP TABLE IF EXISTS `contient`;
CREATE TABLE IF NOT EXISTS `contient` (
  `id_menu` int(11) NOT NULL,
  `id_boisson` int(11) NOT NULL,
  KEY `id_menu` (`id_menu`),
  KEY `id_boisson` (`id_boisson`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `focaccia`
--

DROP TABLE IF EXISTS `focaccia`;
CREATE TABLE IF NOT EXISTS `focaccia` (
  `nom_focaccia` varchar(45) NOT NULL,
  `prix_focaccia` float NOT NULL,
  `id_focaccia` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_focaccia`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Déchargement des données de la table `focaccia`
--

INSERT INTO `focaccia` (`nom_focaccia`, `prix_focaccia`, `id_focaccia`) VALUES
('Mozaccia', 9.8, 1),
('Gorgonzollaccia', 10.8, 2),
('Raclaccia', 8.9, 3),
('Emmentalaccia', 9.8, 4),
('Tradizione', 8.9, 5),
('Hawaienne', 11.2, 6),
('Américaine', 10.8, 7),
('Paysanne', 12.8, 8);

-- --------------------------------------------------------

--
-- Structure de la table `ingredient`
--

DROP TABLE IF EXISTS `ingredient`;
CREATE TABLE IF NOT EXISTS `ingredient` (
  `nom_ingredient` varchar(45) NOT NULL,
  `id_ingredient` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_ingredient`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Déchargement des données de la table `ingredient`
--

INSERT INTO `ingredient` (`nom_ingredient`, `id_ingredient`) VALUES
('Ail', 1),
('Ananas', 2),
('Artichaut', 3),
('Bacon', 4),
('Base tomate', 5),
('Base crème', 6),
('Champignon', 7),
('Chèvre', 8),
('Cresson', 9),
('Emmental', 10),
('Gorgonzola', 11),
('Jambon cuit', 12),
('Jambon fumé', 13),
('Oeuf', 14),
('Oignon', 15),
('Olive noire', 16),
('Olive verte', 17),
('Parmesan', 18),
('Piment', 19),
('Poivre', 20),
('Pomme de terre', 21),
('Raclette', 22),
('Salami', 23),
('Tomate cerise', 24),
('Mozarella', 25);

-- --------------------------------------------------------

--
-- Structure de la table `marque`
--

DROP TABLE IF EXISTS `marque`;
CREATE TABLE IF NOT EXISTS `marque` (
  `id_marque` int(11) NOT NULL AUTO_INCREMENT,
  `nom_marque` varchar(45) NOT NULL,
  PRIMARY KEY (`id_marque`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Déchargement des données de la table `marque`
--

INSERT INTO `marque` (`id_marque`, `nom_marque`) VALUES
(1, 'Coca-cola'),
(2, 'Cristalline'),
(3, 'Monster'),
(4, 'PepsiCo');

-- --------------------------------------------------------

--
-- Structure de la table `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE IF NOT EXISTS `menu` (
  `nom_menu` varchar(45) NOT NULL,
  `prix_menu` float NOT NULL,
  `id_boisson` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL AUTO_INCREMENT,
  `id_focaccia` int(11) NOT NULL,
  PRIMARY KEY (`id_menu`),
  KEY `id_boisson` (`id_boisson`),
  KEY `id_focaccia` (`id_focaccia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `paye`
--

DROP TABLE IF EXISTS `paye`;
CREATE TABLE IF NOT EXISTS `paye` (
  `jour` date NOT NULL DEFAULT current_timestamp(),
  `id_client` int(11) NOT NULL AUTO_INCREMENT,
  `id_menu` int(11) NOT NULL,
  KEY `id_client` (`id_client`),
  KEY `id_menu` (`id_menu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `achete`
--
ALTER TABLE `achete`
  ADD CONSTRAINT `achete_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`),
  ADD CONSTRAINT `achete_ibfk_2` FOREIGN KEY (`id_focaccia`) REFERENCES `focaccia` (`id_focaccia`);

--
-- Contraintes pour la table `boisson`
--
ALTER TABLE `boisson`
  ADD CONSTRAINT `boisson_ibfk_1` FOREIGN KEY (`id_marque`) REFERENCES `marque` (`id_marque`);

--
-- Contraintes pour la table `comprend`
--
ALTER TABLE `comprend`
  ADD CONSTRAINT `comprend_ibfk_1` FOREIGN KEY (`id_focaccia`) REFERENCES `focaccia` (`id_focaccia`),
  ADD CONSTRAINT `comprend_ibfk_2` FOREIGN KEY (`id_ingredient`) REFERENCES `ingredient` (`id_ingredient`);

--
-- Contraintes pour la table `contient`
--
ALTER TABLE `contient`
  ADD CONSTRAINT `contient_ibfk_1` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`),
  ADD CONSTRAINT `contient_ibfk_2` FOREIGN KEY (`id_boisson`) REFERENCES `boisson` (`id_boisson`);

--
-- Contraintes pour la table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`id_focaccia`) REFERENCES `focaccia` (`id_focaccia`),
  ADD CONSTRAINT `menu_ibfk_2` FOREIGN KEY (`id_boisson`) REFERENCES `boisson` (`id_boisson`);

--
-- Contraintes pour la table `paye`
--
ALTER TABLE `paye`
  ADD CONSTRAINT `paye_ibfk_1` FOREIGN KEY (`id_client`) REFERENCES `client` (`id_client`),
  ADD CONSTRAINT `paye_ibfk_2` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
