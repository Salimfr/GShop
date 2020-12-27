-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : Dim 27 déc. 2020 à 11:12
-- Version du serveur :  10.4.14-MariaDB
-- Version de PHP : 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `sarlsuban`
--

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `product_name` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_desc` text NOT NULL,
  `Product_detail` text NOT NULL,
  `product_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_price`, `product_desc`, `Product_detail`, `product_image`) VALUES
(1, 'Apple', 2, 'Kgs', 'p', 'apple1.jpg'),
(2, 'Banana', 1, 'Kgs', 'n', 'banana1.jpg'),
(3, 'Beans', 1, 'Kgs', 'p', 'beans1.jpg'),
(4, 'Bread', 3, 'Pkt', 'p', 'bread1.jpg'),
(5, 'brinjal', 3, 'Kgs', 'n', 'brinjal1.jpg'),
(6, 'brocoli', 4, 'kgs', 'p', 'brocoli1.jpg'),
(7, 'Carrot', 5, 'Kgs', 'n', 'carrot1.jpg'),
(8, 'Cheese', 4, 'Pkt', 'p', 'cheese1.jpg'),
(9, 'Coco Cola', 3, 'bottle', 'p', 'cococola1.jpg'),
(10, 'Corn', 6, 'can', 'n', 'corn1.jpg'),
(11, 'Cucumber', 1, 'kgs', 'p', 'cucumber1.jpg'),
(12, 'Egg', 4, 'pkt', 'p', 'egg1.jpg'),
(13, 'Fish', 15, 'kgs', 'p', 'fish1.jpg'),
(14, 'Garlic', 8, 'kgs', 'n', 'garlic1.jpg'),
(15, 'Ginger', 6, 'kgs', 'p', 'ginger1.jpg'),
(16, 'Lemon', 2, 'pkt', 'p', 'lemon1.jpg'),
(17, 'Mango', 5, 'kgs', 'p', 'mango1.jpg'),
(18, 'Mirinda', 2, 'bottle', 'n', 'mirinda1.jpg'),
(19, 'Mutton', 15, 'kgs', 'p', 'mutton1.jpg'),
(20, 'Onion', 3, 'kgs', 'n', 'onion1.jpg'),
(21, 'Orange', 2, 'kgs', 'n', 'orange1.jpg'),
(22, 'Potato', 3, 'kgs', 'p', 'potato1.jpg'),
(23, 'Sugar', 1, 'pkt', 'n', 'sugar1.jpg'),
(24, 'Tomato', 2, 'kgs', 'p', 'tomato1.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `slider`
--

CREATE TABLE `slider` (
  `id` int(11) NOT NULL,
  `slider_name` text NOT NULL,
  `slider_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `slider`
--

INSERT INTO `slider` (`id`, `slider_name`, `slider_image`) VALUES
(1, 'slider 1', 'sl1.jpg'),
(2, 'slider 2', 'sl2.jpg'),
(3, 'slider 3', 'sl3.jpg'),
(4, 'slider 4 ', 'sl4.jpg');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Index pour la table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT pour la table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
