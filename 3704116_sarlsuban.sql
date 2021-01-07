-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Client :  fdb29.awardspace.net
-- Généré le :  Jeu 07 Janvier 2021 à 19:28
-- Version du serveur :  5.7.20-log
-- Version de PHP :  5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `3704116_sarlsuban`
--

-- --------------------------------------------------------

--
-- Structure de la table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(100) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_image` text NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_country` text NOT NULL,
  `admin_job` varchar(255) NOT NULL,
  `admin_about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_contact`, `admin_country`, `admin_job`, `admin_about`) VALUES
(1, 'Abdul Salim', 'salimfr1975@yahoo.fr', '123456', '1.jpg', '0033-6-99822496', 'France', 'ceo', 'Web Developer	'),
(2, 'Abdul Wahab Saheen', 'saheen@yahoo.fr', '123456', 'saheen.jpg', '0699822496', 'France', 'ceo', 'D'),
(3, 'zishan', 'zishan@yahoo.fr', '123456', 'zishan.jpg', '0699822496', 'France', 'CEO', 'Md										\r\n									'),
(5, 'parveen', 'parveen@yahoo.fr', '123456', 'parveen.jpg', '0699822496', 'France', 'CEO', 'MD									\r\n									'),
(6, 'admin', 'admin@yahoo.fr', '123456', '1.jpg', '0699822496', 'France', 'Director', 'MD');

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Vegetables'),
(2, 'Fruits'),
(3, 'Bakery'),
(4, 'Dairy'),
(5, 'Drinks'),
(6, 'Non-Veg'),
(7, 'Confectionery'),
(11, 'Stationery'),
(12, 'Electronics');

-- --------------------------------------------------------

--
-- Structure de la table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(100) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_country` text NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`, `customer_ip`) VALUES
(4, 'ABDUL SALIM ABDUL WAHAB', 'abc@yahoo.fr', '123456', 'France', 'Corbeil Essonnes', '0699822496', '8 rue Henri Matisse', 'drawing6.jpg', '::1');

-- --------------------------------------------------------

--
-- Structure de la table `customer_order`
--

CREATE TABLE `customer_order` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `product_id` int(100) NOT NULL,
  `due_amount` int(100) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `size` text NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `customer_order`
--

INSERT INTO `customer_order` (`order_id`, `customer_id`, `product_id`, `due_amount`, `invoice_no`, `qty`, `size`, `order_date`, `order_status`) VALUES
(70, 3, 0, 100, 729146385, 4, 'Large', '2020-12-24 06:10:43', 'Complete'),
(71, 3, 0, 125, 1753341646, 5, 'Extra Large', '2020-12-24 06:17:33', 'Complete'),
(72, 3, 27, 25, 2025162374, 1, 'Select a size', '2020-12-27 17:10:14', 'Complete'),
(73, 4, 27, 6, 1490393655, 2, 'Small', '2020-12-27 16:47:23', 'Complete');

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `c_id` int(100) NOT NULL,
  `s_id` int(10) NOT NULL,
  `product_name` text NOT NULL,
  `product_price` text NOT NULL,
  `product_desc` text NOT NULL,
  `product_detail` text NOT NULL,
  `product_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `products`
--

INSERT INTO `products` (`product_id`, `c_id`, `s_id`, `product_name`, `product_price`, `product_desc`, `product_detail`, `product_image`) VALUES
(1, 1, 1, 'Apple', '1,90', 'Kgs', 'p', 'a1.jpg'),
(2, 2, 2, 'Banana', '0,99', 'Kgs', 'n', 'a2.jpg'),
(3, 1, 3, 'Beans', '1,00', 'Kgs', 'o', '3.jpg'),
(4, 3, 1, 'Bread', '1,29', 'Pkt', 'p', '4.jpg'),
(5, 1, 2, 'brinjal', '2.10', 'Kgs', 'n', 'a5.jpg'),
(6, 1, 1, 'brocoli', '2,50', 'kgs', 'p', 'a6.jpg'),
(7, 1, 1, 'Carrot', '1,99', 'Kgs', 'n', 'a7.jpg'),
(8, 4, 2, 'Cheese', '1,49', 'Pkt', 'p', 'a8.jpg'),
(9, 5, 1, 'Coco Cola', '1,29', 'bottle', 'p', 'a9.jpg'),
(10, 1, 2, 'Corn', '2,39', 'kgs', 'n', 'a10.jpg'),
(11, 1, 3, 'Cucumber', '1,09', 'kgs', 'p', 'a11.jpg'),
(12, 4, 3, 'Egg', '2,39', 'pkt', 'p', 'a12.jpg'),
(13, 6, 1, 'Fish', '12,99', 'kgs', 'p', 'a13.jpg'),
(14, 1, 2, 'Garlic', '4,99', 'kgs', 'n', 'a14.jpg'),
(15, 1, 3, 'Ginger', '3,99', 'kgs', 'p', 'a15.jpg'),
(16, 1, 1, 'Lemon', '1,79', 'pkt', 'p', 'a16.jpg'),
(17, 2, 2, 'Mango', '3,39', 'kgs', 'p', 'a17.jpg'),
(18, 5, 2, 'Mirinda', '1,19', 'bottle', 'n', 'a18.jpg'),
(19, 6, 1, 'Mutton', '16,69', 'kgs', 'p', 'a19.jpg'),
(20, 1, 3, 'Onion', '2,50', 'kgs', 'n', 'a20.jpg'),
(21, 2, 3, 'Orange', '1,99', 'kgs', 'n', 'a21.jpg'),
(22, 1, 1, 'Potato', '2,50', 'kgs', 'p', 'a22.jpg'),
(23, 7, 1, 'Sugar', '1,05', 'pkt', 'n', 'a24.jpg'),
(24, 1, 2, 'Tomato', '0,99', 'kgs', 'p', 'a23.jpg'),
(25, 7, 2, 'Biscuits', '2,79', 'Pkt.', '2', 'a25.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `product_category`
--

CREATE TABLE `product_category` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `product_category`
--

INSERT INTO `product_category` (`p_cat_id`, `p_cat_title`, `p_cat_desc`) VALUES
(8, 'Bags', ''),
(9, 'Clothes', '');

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
-- Contenu de la table `slider`
--

INSERT INTO `slider` (`id`, `slider_name`, `slider_image`) VALUES
(1, 'slider 1', 'sl1.jpg'),
(2, 'slider 2', 'sl2.jpg'),
(3, 'slider 3', 'drinks.jpg'),
(4, 'slider 4 ', 'gg.jpg');

-- --------------------------------------------------------

--
-- Structure de la table `status`
--

CREATE TABLE `status` (
  `id` int(10) NOT NULL,
  `title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Contenu de la table `status`
--

INSERT INTO `status` (`id`, `title`) VALUES
(1, 'Promotion'),
(2, 'New Arrivals'),
(3, 'Old Stock');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Index pour la table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Index pour la table `customer_order`
--
ALTER TABLE `customer_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Index pour la table `product_category`
--
ALTER TABLE `product_category`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Index pour la table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `customer_order`
--
ALTER TABLE `customer_order`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;
--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
--
-- AUTO_INCREMENT pour la table `product_category`
--
ALTER TABLE `product_category`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `status`
--
ALTER TABLE `status`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
