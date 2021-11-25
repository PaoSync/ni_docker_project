-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 25, 2021 at 09:20 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ni_db`
--
CREATE DATABASE IF NOT EXISTS `ni_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ni_db`;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `sku` varchar(250) NOT NULL,
  `name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELATIONSHIPS FOR TABLE `products`:
--

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`sku`, `name`) VALUES
('battery-4', 'Battery 4'),
('guitar-rig-5', 'Guitar Rig 5'),
('komplete-12', 'Komplete 12'),
('komplete-audio-2', 'Komplete Audio 2'),
('komplete-kontrol-m32', 'Komplete Kontrol M32'),
('komplete-kontrol-s49-black', 'Komplete Kontrol S49 Black'),
('komplete-kontrol-s61', 'Komplete Kontrol S61'),
('kontakt-6', 'Kontakt 6'),
('lone-forest', 'Lone Forest'),
('maschine', 'Maschine'),
('maschine-jam', 'Maschine JAM'),
('massive', 'Massive'),
('reaktor-6', 'Reaktor 6'),
('traktor-kontrol-s4', 'Traktor Kontrol S4'),
('traktor-kontrol-s8', 'Traktor Kontrol S8'),
('traktor-kontrol-z2', 'Traktor Kontrol Z2'),
('traktor-pro-3', 'Traktor PRO 3'),
('una-corda', 'Una Corda');

-- --------------------------------------------------------

--
-- Table structure for table `purchased`
--

CREATE TABLE `purchased` (
  `user_id` int(200) NOT NULL,
  `product_sku` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELATIONSHIPS FOR TABLE `purchased`:
--

--
-- Dumping data for table `purchased`
--

INSERT INTO `purchased` (`user_id`, `product_sku`) VALUES
(1, 'battery-4'),
(1, 'kontakt-6'),
(1, 'una-corda'),
(2, 'battery-4'),
(2, 'komplete-kontrol-m32'),
(2, 'kontakt-6'),
(3, 'komplete-audio-2'),
(3, 'massive'),
(3, 'reaktor-6'),
(4, 'komplete-audio-2'),
(4, 'massive'),
(4, 'reaktor-6'),
(5, 'komplete-12'),
(5, 'komplete-audio-2'),
(5, 'komplete-kontrol-s49-black'),
(6, 'traktor-kontrol-s4'),
(6, 'traktor-kontrol-s8'),
(6, 'traktor-pro-3'),
(7, 'guitar-rig-5'),
(7, 'komplete-kontrol-m32'),
(7, 'kontakt-6'),
(8, 'battery-4'),
(8, 'komplete-kontrol-m32'),
(8, 'kontakt-6'),
(9, 'traktor-kontrol-s4'),
(9, 'traktor-kontrol-z2'),
(9, 'traktor-pro-3'),
(10, 'guitar-rig-5'),
(10, 'kontakt-6'),
(10, 'una-corda'),
(11, 'komplete-12'),
(11, 'komplete-audio-2'),
(11, 'komplete-kontrol-s49-black'),
(12, 'lone-forest'),
(12, 'maschine'),
(12, 'maschine-jam'),
(13, 'traktor-kontrol-s4'),
(13, 'traktor-kontrol-s8'),
(13, 'traktor-pro-3'),
(14, 'komplete-audio-2'),
(14, 'massive'),
(14, 'reaktor-6'),
(15, 'komplete-12'),
(15, 'komplete-audio-2'),
(15, 'komplete-kontrol-s49-black'),
(16, 'traktor-kontrol-s4'),
(16, 'traktor-kontrol-z2'),
(16, 'traktor-pro-3'),
(17, 'komplete-audio-2'),
(17, 'massive'),
(17, 'reaktor-6'),
(18, 'komplete-audio-2'),
(18, 'massive'),
(18, 'reaktor-6'),
(19, 'traktor-kontrol-s4'),
(19, 'traktor-kontrol-s8'),
(19, 'traktor-pro-3'),
(20, 'komplete-audio-2'),
(20, 'massive'),
(20, 'reaktor-6'),
(21, 'komplete-audio-2'),
(21, 'massive'),
(21, 'reaktor-6'),
(22, 'komplete-12'),
(22, 'komplete-audio-2'),
(22, 'komplete-kontrol-s61'),
(23, 'lone-forest'),
(23, 'maschine'),
(23, 'maschine-jam'),
(24, 'komplete-audio-2'),
(24, 'massive'),
(24, 'reaktor-6'),
(25, 'komplete-12'),
(25, 'komplete-kontrol-s49-black'),
(25, 'komplete-kontrol-s61'),
(26, 'traktor-kontrol-s4'),
(26, 'traktor-kontrol-z2'),
(26, 'traktor-pro-3'),
(27, 'komplete-12'),
(27, 'komplete-audio-2'),
(27, 'komplete-kontrol-s49-black'),
(28, 'komplete-kontrol-m32'),
(28, 'kontakt-6'),
(28, 'una-corda'),
(29, 'traktor-kontrol-s8'),
(29, 'traktor-kontrol-z2'),
(29, 'traktor-pro-3'),
(30, 'komplete-12'),
(30, 'komplete-kontrol-s49-black'),
(30, 'komplete-kontrol-s61'),
(31, 'komplete-audio-2'),
(31, 'massive'),
(31, 'reaktor-6'),
(32, 'komplete-audio-2'),
(32, 'massive'),
(32, 'reaktor-6'),
(33, 'guitar-rig-5'),
(33, 'kontakt-6'),
(33, 'una-corda'),
(34, 'battery-4'),
(34, 'guitar-rig-5'),
(34, 'kontakt-6'),
(35, 'traktor-kontrol-s4'),
(35, 'traktor-kontrol-z2'),
(35, 'traktor-pro-3'),
(36, 'lone-forest'),
(36, 'maschine'),
(36, 'maschine-jam'),
(37, 'komplete-audio-2'),
(37, 'massive'),
(37, 'reaktor-6'),
(38, 'komplete-kontrol-m32'),
(38, 'kontakt-6'),
(38, 'una-corda'),
(39, 'maschine'),
(39, 'maschine-jam'),
(39, 'massive'),
(40, 'traktor-kontrol-s4'),
(40, 'traktor-kontrol-s8'),
(40, 'traktor-pro-3'),
(41, 'lone-forest'),
(41, 'maschine'),
(41, 'maschine-jam'),
(42, 'lone-forest'),
(42, 'maschine'),
(42, 'maschine-jam'),
(43, 'traktor-kontrol-s4'),
(43, 'traktor-kontrol-s8'),
(43, 'traktor-pro-3'),
(44, 'komplete-audio-2'),
(44, 'massive'),
(44, 'reaktor-6'),
(45, 'maschine'),
(45, 'maschine-jam'),
(45, 'massive'),
(46, 'lone-forest'),
(46, 'maschine'),
(46, 'maschine-jam'),
(47, 'lone-forest'),
(47, 'maschine'),
(47, 'massive'),
(48, 'guitar-rig-5'),
(48, 'komplete-kontrol-m32'),
(48, 'kontakt-6'),
(49, 'lone-forest'),
(49, 'maschine'),
(49, 'maschine-jam'),
(50, 'komplete-12'),
(50, 'komplete-kontrol-s49-black'),
(50, 'komplete-kontrol-s61'),
(51, 'lone-forest'),
(51, 'maschine'),
(51, 'maschine-jam'),
(52, 'komplete-kontrol-m32'),
(52, 'kontakt-6'),
(52, 'una-corda'),
(53, 'lone-forest'),
(53, 'maschine'),
(53, 'massive'),
(54, 'traktor-kontrol-s4'),
(54, 'traktor-kontrol-s8'),
(54, 'traktor-pro-3'),
(55, 'komplete-audio-2'),
(55, 'massive'),
(55, 'reaktor-6'),
(56, 'komplete-12'),
(56, 'komplete-audio-2'),
(56, 'komplete-kontrol-s61'),
(57, 'traktor-kontrol-s4'),
(57, 'traktor-kontrol-s8'),
(57, 'traktor-pro-3'),
(58, 'guitar-rig-5'),
(58, 'kontakt-6'),
(58, 'una-corda'),
(59, 'lone-forest'),
(59, 'maschine'),
(59, 'massive'),
(60, 'maschine'),
(60, 'maschine-jam'),
(60, 'massive'),
(61, 'komplete-12'),
(61, 'komplete-audio-2'),
(61, 'komplete-kontrol-s49-black'),
(62, 'traktor-kontrol-s8'),
(62, 'traktor-kontrol-z2'),
(62, 'traktor-pro-3'),
(63, 'maschine'),
(63, 'maschine-jam'),
(63, 'massive'),
(64, 'traktor-kontrol-s8'),
(64, 'traktor-kontrol-z2'),
(64, 'traktor-pro-3'),
(65, 'traktor-kontrol-s8'),
(65, 'traktor-kontrol-z2'),
(65, 'traktor-pro-3'),
(66, 'komplete-kontrol-m32'),
(66, 'kontakt-6'),
(66, 'una-corda'),
(67, 'traktor-kontrol-s8'),
(67, 'traktor-kontrol-z2'),
(67, 'traktor-pro-3'),
(68, 'battery-4'),
(68, 'komplete-kontrol-m32'),
(68, 'kontakt-6'),
(69, 'komplete-12'),
(69, 'komplete-audio-2'),
(69, 'komplete-kontrol-s49-black'),
(70, 'komplete-audio-2'),
(70, 'massive'),
(70, 'reaktor-6'),
(71, 'traktor-kontrol-s8'),
(71, 'traktor-kontrol-z2'),
(71, 'traktor-pro-3'),
(72, 'battery-4'),
(72, 'guitar-rig-5'),
(72, 'kontakt-6'),
(73, 'lone-forest'),
(73, 'maschine'),
(73, 'massive'),
(74, 'komplete-audio-2'),
(74, 'massive'),
(74, 'reaktor-6'),
(75, 'battery-4'),
(75, 'kontakt-6'),
(75, 'una-corda'),
(76, 'maschine'),
(76, 'maschine-jam'),
(76, 'massive'),
(77, 'komplete-kontrol-m32'),
(77, 'kontakt-6'),
(77, 'una-corda'),
(78, 'komplete-audio-2'),
(78, 'massive'),
(78, 'reaktor-6'),
(79, 'komplete-12'),
(79, 'komplete-audio-2'),
(79, 'komplete-kontrol-s61'),
(80, 'guitar-rig-5'),
(80, 'komplete-kontrol-m32'),
(80, 'kontakt-6'),
(81, 'komplete-audio-2'),
(81, 'massive'),
(81, 'reaktor-6'),
(82, 'komplete-12'),
(82, 'komplete-audio-2'),
(82, 'komplete-kontrol-s49-black'),
(83, 'traktor-kontrol-s4'),
(83, 'traktor-kontrol-z2'),
(83, 'traktor-pro-3'),
(84, 'lone-forest'),
(84, 'maschine'),
(84, 'massive'),
(85, 'traktor-kontrol-s4'),
(85, 'traktor-kontrol-z2'),
(85, 'traktor-pro-3'),
(86, 'guitar-rig-5'),
(86, 'kontakt-6'),
(86, 'una-corda'),
(87, 'komplete-12'),
(87, 'komplete-audio-2'),
(87, 'komplete-kontrol-s49-black'),
(88, 'lone-forest'),
(88, 'maschine'),
(88, 'maschine-jam'),
(89, 'battery-4'),
(89, 'kontakt-6'),
(89, 'una-corda'),
(90, 'lone-forest'),
(90, 'maschine'),
(90, 'maschine-jam'),
(91, 'traktor-kontrol-s8'),
(91, 'traktor-kontrol-z2'),
(91, 'traktor-pro-3'),
(92, 'lone-forest'),
(92, 'maschine'),
(92, 'massive'),
(93, 'guitar-rig-5'),
(93, 'kontakt-6'),
(93, 'una-corda'),
(94, 'lone-forest'),
(94, 'maschine'),
(94, 'massive'),
(95, 'komplete-kontrol-m32'),
(95, 'kontakt-6'),
(95, 'una-corda'),
(96, 'lone-forest'),
(96, 'maschine'),
(96, 'maschine-jam'),
(97, 'komplete-audio-2'),
(97, 'massive'),
(97, 'reaktor-6'),
(98, 'komplete-audio-2'),
(98, 'massive'),
(98, 'reaktor-6'),
(99, 'lone-forest'),
(99, 'maschine'),
(99, 'maschine-jam'),
(100, 'traktor-kontrol-s8'),
(100, 'traktor-kontrol-z2'),
(100, 'traktor-pro-3'),
(102, 'maschine'),
(103, 'traktor-pro-3'),
(104, 'komplete-12'),
(105, 'kontakt-6'),
(106, 'reaktor-6');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(200) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- RELATIONSHIPS FOR TABLE `users`:
--

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'Weston Ratke', 'mac94@moen.com', 'secret'),
(2, 'Dr. Alberto Boyle I', 'clark32@yahoo.com', 'secret'),
(3, 'Candelario Kassulke', 'roselyn62@gmail.com', 'secret'),
(4, 'Abner Mueller', 'kabbott@yahoo.com', 'secret'),
(5, 'Mrs. Odie Miller Jr.', 'boyer.kallie@hotmail.com', 'secret'),
(6, 'Prof. Santa Reichert', 'aparker@dicki.net', 'secret'),
(7, 'Julio Will', 'brooklyn.stracke@yahoo.com', 'secret'),
(8, 'Mr. Vinnie Ziemann', 'antonietta.witting@conroy.net', 'secret'),
(9, 'Alexa Ledner', 'pasquale.cruickshank@yahoo.com', 'secret'),
(10, 'Mrs. Janet Rolfson Sr.', 'wrice@yahoo.com', 'secret'),
(11, 'Mrs. Meghan Mueller', 'ozella26@waelchi.com', 'secret'),
(12, 'Dr. August Auer V', 'reggie.gerhold@schiller.com', 'secret'),
(13, 'Dr. Lelia Hansen II', 'gudrun.gerhold@yahoo.com', 'secret'),
(14, 'Ila Collins', 'imogene.steuber@yahoo.com', 'secret'),
(15, 'Ms. Ashtyn Fritsch Sr.', 'derrick35@gmail.com', 'secret'),
(16, 'Ford Kovacek III', 'luis.rohan@ondricka.com', 'secret'),
(17, 'Miss Kenyatta Legros IV', 'skylar15@hotmail.com', 'secret'),
(18, 'Eleanora DuBuque', 'kautzer.alexis@gorczany.com', 'secret'),
(19, 'Avery Boyle', 'bheidenreich@brakus.com', 'secret'),
(20, 'Carlo Lueilwitz', 'zackary.parker@turner.biz', 'secret'),
(21, 'Mr. Marcus Schneider', 'llewellyn13@torphy.org', 'secret'),
(22, 'Janae Hoppe', 'grimes.claudia@dietrich.biz', 'secret'),
(23, 'Lucy Labadie', 'nasir.strosin@kub.com', 'secret'),
(24, 'Bill Beier', 'dkeeling@gmail.com', 'secret'),
(25, 'Prof. Brandy Ritchie', 'predovic.lonie@hotmail.com', 'secret'),
(26, 'Ms. Tiffany Kuhlman MD', 'cormier.georgianna@hotmail.com', 'secret'),
(27, 'Dr. Anna Stokes Jr.', 'wleuschke@gmail.com', 'secret'),
(28, 'Araceli Lind', 'fahey.dana@krajcik.com', 'secret'),
(29, 'Prof. Damien Runolfsdottir DDS', 'roman67@yahoo.com', 'secret'),
(30, 'Mafalda Von', 'alfredo.lindgren@windler.com', 'secret'),
(31, 'Dr. Albert Bruen Sr.', 'adolphus19@stanton.biz', 'secret'),
(32, 'Prof. Favian Runolfsson DVM', 'cedrick.becker@marks.org', 'secret'),
(33, 'Gino Ledner', 'purdy.gaylord@adams.com', 'secret'),
(34, 'Miss Britney Walker', 'lorna65@kuhic.com', 'secret'),
(35, 'Gerardo Toy', 'aufderhar.kasandra@hotmail.com', 'secret'),
(36, 'Mrs. Leonora Prosacco', 'sallie.orn@hotmail.com', 'secret'),
(37, 'Alysson Herzog PhD', 'chelsey.kiehn@gislason.com', 'secret'),
(38, 'Dr. Wilfred Leuschke', 'gdietrich@ledner.com', 'secret'),
(39, 'Carleton Friesen', 'rhoda86@gmail.com', 'secret'),
(40, 'Jordy Lehner', 'joana.botsford@hotmail.com', 'secret'),
(41, 'Carole Price', 'hans.dibbert@yahoo.com', 'secret'),
(42, 'Ms. Albina Zulauf III', 'bertram95@bernhard.org', 'secret'),
(43, 'Dr. Leilani Hudson III', 'kuhic.claudine@yost.com', 'secret'),
(44, 'Andre Hessel', 'ellsworth.kovacek@weber.biz', 'secret'),
(45, 'Alexandrea Farrell', 'ebert.dortha@hotmail.com', 'secret'),
(46, 'Maurine Bartell', 'okeefe.joy@gmail.com', 'secret'),
(47, 'Laney Cummerata', 'jacinthe.gleason@herman.com', 'secret'),
(48, 'Jamarcus Weissnat', 'marion30@rodriguez.com', 'secret'),
(49, 'Chadd Grady', 'dell88@jones.com', 'secret'),
(50, 'Ambrose Kunze', 'kgutkowski@hotmail.com', 'secret'),
(51, 'Parker Goldner', 'turner.rosie@berge.com', 'secret'),
(52, 'Jerad Murray I', 'farrell.gaylord@yahoo.com', 'secret'),
(53, 'Mrs. Ethelyn Terry Jr.', 'theresia92@hotmail.com', 'secret'),
(54, 'August Kemmer', 'molly.walker@streich.com', 'secret'),
(55, 'Manuel Lakin', 'destini90@bergnaum.info', 'secret'),
(56, 'Iva Botsford', 'ljerde@gmail.com', 'secret'),
(57, 'Aryanna Stracke', 'jschaefer@hotmail.com', 'secret'),
(58, 'Bartholome Mann', 'jevon.kessler@hotmail.com', 'secret'),
(59, 'Autumn Breitenberg', 'blanche.rosenbaum@jacobs.com', 'secret'),
(60, 'Kevon Metz', 'runte.sabrina@bednar.net', 'secret'),
(61, 'Rosario Breitenberg', 'rashawn64@carroll.org', 'secret'),
(62, 'Betsy Bartoletti', 'juvenal53@schowalter.net', 'secret'),
(63, 'Garrison Dickinson', 'eichmann.darion@yahoo.com', 'secret'),
(64, 'Isidro Satterfield', 'marisol03@lueilwitz.com', 'secret'),
(65, 'Jaylin Larkin Sr.', 'gottlieb.jaron@yahoo.com', 'secret'),
(66, 'Ellsworth Marquardt', 'kathryn.mann@yahoo.com', 'secret'),
(67, 'Jalon Bauch', 'vlockman@von.com', 'secret'),
(68, 'Dr. Jeffry Conn Jr.', 'blaise37@gmail.com', 'secret'),
(69, 'Dr. Clay Kuhic', 'helena45@yahoo.com', 'secret'),
(70, 'Michael Swift IV', 'joelle.corkery@doyle.com', 'secret'),
(71, 'Mr. Lorenza Mohr', 'frederick72@krajcik.com', 'secret'),
(72, 'Dr. Arnold Bruen MD', 'kirk30@hoeger.com', 'secret'),
(73, 'Arturo Skiles V', 'wilkinson.bernard@schimmel.org', 'secret'),
(74, 'Amira Renner Sr.', 'denesik.guiseppe@rau.com', 'secret'),
(75, 'Amanda O\'Hara', 'zwitting@goodwin.org', 'secret'),
(76, 'Phyllis Mitchell', 'sbeatty@yahoo.com', 'secret'),
(77, 'Alejandra Fadel', 'armand.howell@yahoo.com', 'secret'),
(78, 'Prof. Damian Wilkinson MD', 'destany.brakus@runolfsson.com', 'secret'),
(79, 'Alexandrea Simonis', 'alek55@shanahan.com', 'secret'),
(80, 'Maximillia Buckridge V', 'swaniawski.elna@moen.net', 'secret'),
(81, 'Mr. Javier Miller', 'tobin.mueller@yahoo.com', 'secret'),
(82, 'Kianna Goodwin', 'maureen84@hotmail.com', 'secret'),
(83, 'Cyril Murphy MD', 'luther.crona@hotmail.com', 'secret'),
(84, 'Briana Schiller', 'gonzalo.rau@hotmail.com', 'secret'),
(85, 'Rhett Howe I', 'ona.oreilly@yahoo.com', 'secret'),
(86, 'Mrs. Edwina Satterfield', 'pvolkman@brakus.com', 'secret'),
(87, 'Janiya Price', 'wyman.reese@gmail.com', 'secret'),
(88, 'Corene Osinski', 'robel.alaina@stanton.org', 'secret'),
(89, 'Blake Koch', 'yschinner@yahoo.com', 'secret'),
(90, 'Mrs. Domenica Stamm IV', 'dsawayn@ward.com', 'secret'),
(91, 'Dr. Velda Wyman', 'kshlerin.alexys@hotmail.com', 'secret'),
(92, 'Dr. Wiley Schmeler I', 'cartwright.jarrett@gmail.com', 'secret'),
(93, 'Dr. Katheryn Bayer I', 'mrau@medhurst.com', 'secret'),
(94, 'Tevin Feest', 'bkoss@gmail.com', 'secret'),
(95, 'Zachariah Marks', 'swaniawski.rowland@dare.org', 'secret'),
(96, 'Brando Ledner Jr.', 'chadd.bruen@hotmail.com', 'secret'),
(97, 'Abigail Stroman', 'mae60@casper.com', 'secret'),
(98, 'Karen Mraz PhD', 'rita84@christiansen.com', 'secret'),
(99, 'Mr. Osbaldo Hayes', 'beahan.domingo@waters.org', 'secret'),
(100, 'Marta Satterfield', 'kathryn.kuvalis@jacobs.biz', 'secret'),
(101, 'New', 'new@gmail.com', 'secret'),
(102, 'Maschine', 'maschine@gmail.com', 'secret'),
(103, 'Traktor', 'traktor@gmail.com', 'secret'),
(104, 'Komplete', 'komplete@gmail.com', 'secret'),
(105, 'Kontakt', 'kontakt@gmail.com', 'secret'),
(106, 'Reaktor', 'reaktor@gmail.com', 'secret');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`sku`);

--
-- Indexes for table `purchased`
--
ALTER TABLE `purchased`
  ADD PRIMARY KEY (`user_id`,`product_sku`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
