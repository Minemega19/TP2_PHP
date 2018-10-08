-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost:3306
-- Généré le :  Lun 24 Septembre 2018 à 18:43
-- Version du serveur :  5.7.23-0ubuntu0.18.04.1
-- Version de PHP :  7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `client`
--

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `NO_ARTICLE` varchar(50) NOT NULL DEFAULT '',
  `LIB_ARTICLE` varchar(50) DEFAULT NULL,
  `QTE_DISPO` float DEFAULT NULL,
  `PRIX_ART` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `article`
--

INSERT INTO `article` (`NO_ARTICLE`, `LIB_ARTICLE`, `QTE_DISPO`, `PRIX_ART`) VALUES
('001001', 'Table en bois - 4 pieds', 3, 996.8),
('001002', 'Ensemble bureau (Secretaire)', 19, 19268.85),
('001005', 'Armoire fer (4 portes)', 5, 2240),
('001007', 'Table en bois - pied central', 90, 200),
('001008', 'Support écran (pivotant)', 10, 1000),
('001009', 'Support imprimante', 20, 1500),
('001010', 'Table informatique (bois)', 2, 3955),
('001011', 'Armoire bois (2 portes)', 6, 2000),
('001012', 'Armoire bois (4 portes)', 8, 4500),
('001013', 'Armoire fer (2 portes)', 10, 1500),
('001014', 'Etagere simple', 100, 253),
('001031', 'Chaise (Directeur) pivotante', 200, 746.75),
('001032', 'Ensemble informatique', 2, 8000),
('001033', 'Ensemble Directeur', 3, 7500),
('001034', 'Ensemble Secretaire', 4, 6000),
('001035', 'Chaise (secretaire)', 10, 300);

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `NO_CLIENT` int(11) NOT NULL,
  `NOM_CLIENT` varchar(50) DEFAULT NULL,
  `PRENOM_CLIENT` varchar(50) DEFAULT NULL,
  `MAIL_CLIENT` varchar(50) DEFAULT NULL,
  `INSCRIT_CLIENT` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `client`
--

INSERT INTO `client` (`NO_CLIENT`, `NOM_CLIENT`, `PRENOM_CLIENT`, `MAIL_CLIENT`, `INSCRIT_CLIENT`) VALUES
(1, 'Durand', 'Robert', 'bob@whoper.unilim.fr', '1'),
(2, 'Martin', 'Louis', 'martin@caramail.fr', '0'),
(3, 'Dumas', 'Annie', 'Annie@yahoo.fr', '0'),
(4, 'Sapin', 'No', 'Sapin@wanadoo.fr', '1'),
(5, 'Dubois', 'Caroline', 'Caro@free.fr', '0'),
(6, 'Netscape', 'Navigator', 'nn@toto.fr', '1');

-- --------------------------------------------------------

--
-- Structure de la table `client2`
--

CREATE TABLE `client2` (
  `NO_CLIENT` int(11) NOT NULL DEFAULT '0',
  `NOM_CLIENT` varchar(50) DEFAULT NULL,
  `PRENOM_CLIENT` varchar(50) DEFAULT NULL,
  `MAIL_CLIENT` varchar(50) DEFAULT NULL,
  `INSCRIT_CLIENT` char(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `client2`
--

INSERT INTO `client2` (`NO_CLIENT`, `NOM_CLIENT`, `PRENOM_CLIENT`, `MAIL_CLIENT`, `INSCRIT_CLIENT`) VALUES
(1, 'Durand', 'Robert', 'bob@whoper.unilim.fr', '1'),
(2, 'Martin', 'Louis', 'martin@caramail.fr', '0'),
(3, 'Dumas', 'Annie', 'Annie@yahoo.fr', '0'),
(4, 'Sapin', 'No', 'Sapin@wanadoo.fr', '1'),
(5, 'Dubois', 'Caroline', 'Caro@free.fr', '0'),
(6, 'Netscape', 'Navigator', 'nn@toto.fr', '1');

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `NO_COMMANDE` varchar(50) NOT NULL DEFAULT '',
  `NO_CLIENT` int(11) NOT NULL DEFAULT '0',
  `DATE_CDE` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `commande`
--

INSERT INTO `commande` (`NO_COMMANDE`, `NO_CLIENT`, `DATE_CDE`) VALUES
('DUR206', 1, '2008-12-12 00:00:00'),
('DUR212', 1, '2008-12-12 00:00:00'),
('MAR207', 2, '2008-12-12 00:00:00'),
('MAR210', 2, '2008-12-12 00:00:00'),
('MAR215', 2, '2008-12-12 00:00:00'),
('DUM209', 3, '2008-12-12 00:00:00'),
('DUM211', 3, '2008-12-12 00:00:00'),
('DUM213', 3, '2008-12-12 00:00:00'),
('DUM214', 3, '2008-12-12 00:00:00'),
('DUM216', 3, '2008-12-13 00:00:00');

-- --------------------------------------------------------

--
-- Structure de la table `detail_cde`
--

CREATE TABLE `detail_cde` (
  `NO_COMMANDE` varchar(50) NOT NULL DEFAULT '',
  `NO_ARTICLE` varchar(50) NOT NULL DEFAULT '',
  `QTE_CDEE` float DEFAULT NULL,
  `QTE_LIVREE` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `detail_cde`
--

INSERT INTO `detail_cde` (`NO_COMMANDE`, `NO_ARTICLE`, `QTE_CDEE`, `QTE_LIVREE`) VALUES
('DUM209', '001009', 8, 7),
('DUM209', '001011', 6, 5),
('DUM211', '001012', 8, 6),
('DUM211', '001013', 45, 44),
('DUM213', '001014', 20, 3),
('DUM213', '001032', 3, 0),
('DUM213', '001034', 20, 5),
('DUM214', '001034', 20, 3),
('DUM214', '001035', 47, 14),
('DUM216', '001002', 20, 15),
('DUM216', '001005', 60, 50),
('DUM216', '001031', 10, 9),
('DUR206', '001001', 2, 0),
('DUR206', '001007', 25, 0),
('DUR206', '001031', 25, 0),
('DUR212', '001009', 20, 19),
('DUR212', '001010', 2, 0),
('MAR207', '001001', 2, 0),
('MAR207', '001002', 1, 0),
('MAR207', '001007', 10, 0),
('MAR207', '001008', 3, 0),
('MAR210', '001001', 1, 0),
('MAR215', '001011', 5, 5);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`NO_ARTICLE`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`NO_CLIENT`);

--
-- Index pour la table `client2`
--
ALTER TABLE `client2` ADD FULLTEXT KEY `fulli` (`NOM_CLIENT`,`PRENOM_CLIENT`,`MAIL_CLIENT`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`NO_COMMANDE`,`NO_CLIENT`,`DATE_CDE`),
  ADD KEY `NO_CLIENT` (`NO_CLIENT`);

--
-- Index pour la table `detail_cde`
--
ALTER TABLE `detail_cde`
  ADD PRIMARY KEY (`NO_COMMANDE`,`NO_ARTICLE`),
  ADD KEY `NO_ARTICLE` (`NO_ARTICLE`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `NO_CLIENT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `commande`
--
ALTER TABLE `commande`
  ADD CONSTRAINT `0_72` FOREIGN KEY (`NO_CLIENT`) REFERENCES `client` (`NO_CLIENT`);

--
-- Contraintes pour la table `detail_cde`
--
ALTER TABLE `detail_cde`
  ADD CONSTRAINT `detail_cde_ibfk_1` FOREIGN KEY (`NO_COMMANDE`) REFERENCES `commande` (`NO_COMMANDE`) ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_cde_ibfk_2` FOREIGN KEY (`NO_ARTICLE`) REFERENCES `article` (`NO_ARTICLE`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;