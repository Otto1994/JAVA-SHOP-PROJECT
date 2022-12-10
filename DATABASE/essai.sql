-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 10 déc. 2022 à 15:42
-- Version du serveur :  10.4.17-MariaDB
-- Version de PHP : 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `essai`
--

-- --------------------------------------------------------

--
-- Structure de la table `admintb`
--

CREATE TABLE `admintb` (
  `idAdmin` int(11) NOT NULL,
  `NameAdmin` varchar(50) NOT NULL,
  `AdminMdp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `admintb`
--

INSERT INTO `admintb` (`idAdmin`, `NameAdmin`, `AdminMdp`) VALUES
(1, 'ADMIN', '123456');

-- --------------------------------------------------------

--
-- Structure de la table `brand`
--

CREATE TABLE `brand` (
  `idbrand` int(11) NOT NULL,
  `namebrand` varchar(50) NOT NULL,
  `statutsbrand` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `brand`
--

INSERT INTO `brand` (`idbrand`, `namebrand`, `statutsbrand`) VALUES
(2, 'samsung', 'Active');

-- --------------------------------------------------------

--
-- Structure de la table `caissiertb`
--

CREATE TABLE `caissiertb` (
  `CaissierId` int(11) NOT NULL,
  `CaissierName` varchar(50) NOT NULL,
  `CaissierMdp` varchar(50) NOT NULL,
  `CaissierGender` varchar(20) NOT NULL,
  `STATUTSCaissier` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `caissiertb`
--

INSERT INTO `caissiertb` (`CaissierId`, `CaissierName`, `CaissierMdp`, `CaissierGender`, `STATUTSCaissier`) VALUES
(1, 'ZAKI', '123456', 'Homme', 'Active'),
(3, 'YAS', '123456', 'Femme', 'Active');

-- --------------------------------------------------------

--
-- Structure de la table `cattb`
--

CREATE TABLE `cattb` (
  `idcat` int(11) NOT NULL,
  `namecat` varchar(30) NOT NULL,
  `statutscat` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `cattb`
--

INSERT INTO `cattb` (`idcat`, `namecat`, `statutscat`) VALUES
(4, 'Jeff', 'Desactive'),
(5, 'jus', 'Active');

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

CREATE TABLE `product` (
  `idp` int(11) NOT NULL,
  `nameP` varchar(50) NOT NULL,
  `descP` varchar(100) NOT NULL,
  `CatP` varchar(50) NOT NULL,
  `brandP` varchar(50) NOT NULL,
  `prixgrandP` double NOT NULL,
  `prixdetaiP` double NOT NULL,
  `qte` int(50) NOT NULL,
  `barecd` int(50) NOT NULL,
  `statutsP` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`idp`, `nameP`, `descP`, `CatP`, `brandP`, `prixgrandP`, `prixdetaiP`, `qte`, `barecd`, `statutsP`) VALUES
(2, 'Gateau', 'desc', 'Jeff', 'samsung', 140, 230, 675, 10, 'Active'),
(3, 'Bonbon', 'very', 'Jeff', 'samsung', 150, 800, 419, 5, 'Active');

-- --------------------------------------------------------

--
-- Structure de la table `vente`
--

CREATE TABLE `vente` (
  `idvente` int(11) NOT NULL,
  `date` varchar(255) NOT NULL,
  `grandtt` double NOT NULL,
  `pay` double NOT NULL,
  `serf` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `vente`
--

INSERT INTO `vente` (`idvente`, `date`, `grandtt`, `pay`, `serf`) VALUES
(25, '2022/06/20', 20000, 25000, 5000),
(26, '2022/07/15', 16140, 15000, -1140),
(27, '2022/07/15', 15450, 19000, 3550),
(28, '2022/07/15', 44800, 55555, 10755),
(29, '2022/07/15', 5950, 6000, 50),
(30, '2022/07/15', 44000, 50000, 6000),
(31, '2022/07/15', 41600, 50000, 8400),
(32, '2022/07/15', 6300, 7000, 700),
(33, '2022/10/20', 4460, 5000, 540),
(34, '2022/10/20', 460, 500, 40),
(35, '2022/12/10', 15350, 6000, -9350);

-- --------------------------------------------------------

--
-- Structure de la table `vente_prd`
--

CREATE TABLE `vente_prd` (
  `idvp` int(11) NOT NULL,
  `prduct_id` int(11) NOT NULL,
  `vente_id` int(11) NOT NULL,
  `prix_vente` double NOT NULL,
  `qte` int(11) NOT NULL,
  `tt` int(11) NOT NULL,
  `Produit` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `vente_prd`
--

INSERT INTO `vente_prd` (`idvp`, `prduct_id`, `vente_id`, `prix_vente`, `qte`, `tt`, `Produit`) VALUES
(14, 5, 25, 800, 25, 20000, 'zaki'),
(15, 5, 26, 800, 15, 12000, 'Bonbon'),
(16, 10, 26, 230, 18, 4140, 'Gateau'),
(17, 5, 27, 800, 15, 12000, 'Bonbon'),
(18, 10, 27, 230, 15, 3450, 'Gateau'),
(19, 5, 28, 800, 56, 44800, 'Bonbon'),
(20, 5, 29, 800, 6, 4800, 'Bonbon'),
(21, 10, 29, 230, 5, 1150, 'Gateau'),
(22, 5, 30, 800, 55, 44000, 'Bonbon'),
(23, 5, 31, 800, 52, 41600, 'Bonbon'),
(24, 5, 32, 800, 5, 4000, 'Bonbon'),
(25, 10, 32, 230, 10, 2300, 'Gateau'),
(26, 5, 33, 800, 5, 4000, 'Bonbon'),
(27, 10, 33, 230, 2, 460, 'Gateau'),
(28, 10, 34, 230, 2, 460, 'Gateau'),
(29, 5, 35, 800, 12, 9600, 'Bonbon'),
(30, 10, 35, 230, 25, 5750, 'Gateau');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admintb`
--
ALTER TABLE `admintb`
  ADD PRIMARY KEY (`idAdmin`);

--
-- Index pour la table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`idbrand`);

--
-- Index pour la table `caissiertb`
--
ALTER TABLE `caissiertb`
  ADD PRIMARY KEY (`CaissierId`);

--
-- Index pour la table `cattb`
--
ALTER TABLE `cattb`
  ADD PRIMARY KEY (`idcat`);

--
-- Index pour la table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`idp`);

--
-- Index pour la table `vente`
--
ALTER TABLE `vente`
  ADD PRIMARY KEY (`idvente`);

--
-- Index pour la table `vente_prd`
--
ALTER TABLE `vente_prd`
  ADD PRIMARY KEY (`idvp`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admintb`
--
ALTER TABLE `admintb`
  MODIFY `idAdmin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `brand`
--
ALTER TABLE `brand`
  MODIFY `idbrand` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `caissiertb`
--
ALTER TABLE `caissiertb`
  MODIFY `CaissierId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `cattb`
--
ALTER TABLE `cattb`
  MODIFY `idcat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `product`
--
ALTER TABLE `product`
  MODIFY `idp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `vente`
--
ALTER TABLE `vente`
  MODIFY `idvente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT pour la table `vente_prd`
--
ALTER TABLE `vente_prd`
  MODIFY `idvp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
