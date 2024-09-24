-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3307
-- Généré le : mar. 24 sep. 2024 à 11:44
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

--
-- Déchargement des données de la table `marque`
--

INSERT INTO `marque` (`id_marque`, `nom_marque`) VALUES
(1, 'Coca-cola'),
(2, 'Cristalline'),
(3, 'Monster'),
(4, 'PepsiCo');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
