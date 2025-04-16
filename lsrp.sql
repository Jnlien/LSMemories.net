-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  sam. 07 oct. 2017 à 16:34
-- Version du serveur :  10.1.26-MariaDB
-- Version de PHP :  7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `lsmem`
--

-- --------------------------------------------------------

--
-- Structure de la table `actors`
--

CREATE TABLE `actors` (
  `actorID` int(11) NOT NULL,
  `actorSkin` int(11) NOT NULL,
  `actorBiz` int(11) NOT NULL,
  `actorName` varchar(25) NOT NULL,
  `actorX` float NOT NULL,
  `actorY` float NOT NULL,
  `actorZ` float NOT NULL,
  `actorAngle` float NOT NULL,
  `actorVW` int(11) NOT NULL,
  `actorText` varchar(100) NOT NULL,
  `anim_Lib` varchar(50) NOT NULL,
  `anim_Name` varchar(50) NOT NULL,
  `anim_Speed` float NOT NULL,
  `anim_Loop` int(11) NOT NULL,
  `anim_LockX` int(11) NOT NULL,
  `anim_LockY` int(11) NOT NULL,
  `anim_Freeze` int(11) NOT NULL,
  `anim_Time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `actors`
--

INSERT INTO `actors` (`actorID`, `actorSkin`, `actorBiz`, `actorName`, `actorX`, `actorY`, `actorZ`, `actorAngle`, `actorVW`, `actorText`, `anim_Lib`, `anim_Name`, `anim_Speed`, `anim_Loop`, `anim_LockX`, `anim_LockY`, `anim_Freeze`, `anim_Time`) VALUES
(1, 194, 0, 'Caissière', -30.9136, -30.709, 1003.56, 6.2666, 6001, '/acheter', '', '', 1082340000, 1, 0, 0, 1, 0),
(2, 229, 1, 'Armurerier', 311.901, -167.807, 999.594, 5.3267, 6002, '/acheter', '', '', 1082340000, 1, 0, 0, 1, 0),
(3, 155, 2, 'Caissier', 376.511, -65.5614, 1001.51, 181.855, 6003, '/acheter', '', '', 1082340000, 1, 0, 0, 1, 0),
(4, 194, 3, 'Caissière', 161.413, -80.9457, 1001.8, 173.588, 6004, '/acheter', '', '', 1082340000, 1, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `arrestpoints`
--

CREATE TABLE `arrestpoints` (
  `arrestID` int(11) NOT NULL,
  `arrestX` float NOT NULL,
  `arrestY` float NOT NULL,
  `arrestZ` float NOT NULL,
  `arrestInterior` int(11) NOT NULL,
  `arrestWorld` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `atm`
--

CREATE TABLE `atm` (
  `atmID` int(11) NOT NULL,
  `atmX` float NOT NULL,
  `atmY` float NOT NULL,
  `atmZ` float NOT NULL,
  `atmA` float NOT NULL,
  `atmInterior` int(11) NOT NULL,
  `atmWorld` int(11) NOT NULL,
  `atmArgen` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `backpackitems`
--

CREATE TABLE `backpackitems` (
  `ID` int(12) DEFAULT '0',
  `itemID` int(12) NOT NULL,
  `itemName` varchar(32) CHARACTER SET latin1 DEFAULT NULL,
  `itemModel` int(12) DEFAULT '0',
  `itemQuantity` int(12) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `backpacks`
--

CREATE TABLE `backpacks` (
  `backpackID` int(12) NOT NULL,
  `backpackPlayer` int(12) DEFAULT '0',
  `backpackX` float DEFAULT '0',
  `backpackY` float DEFAULT '0',
  `backpackZ` float DEFAULT '0',
  `backpackInterior` int(12) DEFAULT '0',
  `backpackWorld` int(12) DEFAULT '0',
  `backpackHouse` int(12) DEFAULT '0',
  `backpackVehicle` int(12) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `billboards`
--

CREATE TABLE `billboards` (
  `bbID` int(12) NOT NULL,
  `bbExists` int(12) DEFAULT '0',
  `bbName` varchar(32) CHARACTER SET latin1 DEFAULT NULL,
  `bbOwner` int(12) NOT NULL DEFAULT '0',
  `bbPrice` int(12) NOT NULL DEFAULT '0',
  `bbRange` int(12) DEFAULT '10',
  `bbPosX` float DEFAULT '0',
  `bbPosY` float DEFAULT '0',
  `bbPosZ` float DEFAULT '0',
  `bbMessage` varchar(230) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `blacklist`
--

CREATE TABLE `blacklist` (
  `ID` int(11) NOT NULL,
  `IP` varchar(16) CHARACTER SET latin1 DEFAULT '0.0.0.0',
  `Username` varchar(24) CHARACTER SET latin1 DEFAULT NULL,
  `BannedBy` varchar(24) CHARACTER SET latin1 DEFAULT NULL,
  `Reason` varchar(128) CHARACTER SET latin1 DEFAULT NULL,
  `Date` varchar(36) CHARACTER SET latin1 DEFAULT NULL,
  `ExpireDate` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `businesses`
--

CREATE TABLE `businesses` (
  `bizID` int(12) NOT NULL,
  `bizName` varchar(32) CHARACTER SET latin1 DEFAULT NULL,
  `bizOwner` int(12) DEFAULT '0',
  `bizType` int(12) DEFAULT '0',
  `bizPrice` int(12) DEFAULT '0',
  `bizPosX` float DEFAULT '0',
  `bizPosY` float DEFAULT '0',
  `bizPosZ` float DEFAULT '0',
  `bizPosA` float DEFAULT '0',
  `bizIntX` float DEFAULT '0',
  `bizIntY` float DEFAULT '0',
  `bizIntZ` float DEFAULT '0',
  `bizIntA` float DEFAULT '0',
  `bizCustom` int(11) NOT NULL,
  `bizInterior` int(12) DEFAULT '0',
  `bizExterior` int(12) DEFAULT '0',
  `bizExteriorVW` int(12) DEFAULT '0',
  `bizLocked` int(4) DEFAULT '0',
  `bizVault` int(12) DEFAULT '0',
  `bizProducts` int(12) DEFAULT '0',
  `bizPrice1` int(12) DEFAULT '0',
  `bizPrice2` int(12) DEFAULT '0',
  `bizPrice3` int(12) DEFAULT '0',
  `bizPrice4` int(12) DEFAULT '0',
  `bizPrice5` int(12) DEFAULT '0',
  `bizPrice6` int(12) DEFAULT '0',
  `bizPrice7` int(12) DEFAULT '0',
  `bizPrice8` int(12) DEFAULT '0',
  `bizPrice9` int(12) DEFAULT '0',
  `bizPrice10` int(12) DEFAULT '0',
  `bizSpawnX` float DEFAULT '0',
  `bizSpawnY` float DEFAULT '0',
  `bizSpawnZ` float DEFAULT '0',
  `bizSpawnA` float DEFAULT '0',
  `bizDeliverX` float DEFAULT '0',
  `bizDeliverY` float DEFAULT '0',
  `bizDeliverZ` float DEFAULT '0',
  `bizMessage` varchar(128) CHARACTER SET latin1 DEFAULT NULL,
  `bizPrice11` int(12) DEFAULT '0',
  `bizPrice12` int(12) DEFAULT '0',
  `bizPrice13` int(12) DEFAULT '0',
  `bizPrice14` int(12) DEFAULT '0',
  `bizPrice15` int(12) DEFAULT '0',
  `bizPrice16` int(12) DEFAULT '0',
  `bizPrice17` int(12) DEFAULT '0',
  `bizPrice18` int(12) DEFAULT '0',
  `bizPrice19` int(12) DEFAULT '0',
  `bizPrice20` int(12) DEFAULT '0',
  `bizShipment` int(4) DEFAULT '0',
  `bizEnterPrice` int(12) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `businesses`
--

INSERT INTO `businesses` (`bizID`, `bizName`, `bizOwner`, `bizType`, `bizPrice`, `bizPosX`, `bizPosY`, `bizPosZ`, `bizPosA`, `bizIntX`, `bizIntY`, `bizIntZ`, `bizIntA`, `bizCustom`, `bizInterior`, `bizExterior`, `bizExteriorVW`, `bizLocked`, `bizVault`, `bizProducts`, `bizPrice1`, `bizPrice2`, `bizPrice3`, `bizPrice4`, `bizPrice5`, `bizPrice6`, `bizPrice7`, `bizPrice8`, `bizPrice9`, `bizPrice10`, `bizSpawnX`, `bizSpawnY`, `bizSpawnZ`, `bizSpawnA`, `bizDeliverX`, `bizDeliverY`, `bizDeliverZ`, `bizMessage`, `bizPrice11`, `bizPrice12`, `bizPrice13`, `bizPrice14`, `bizPrice15`, `bizPrice16`, `bizPrice17`, `bizPrice18`, `bizPrice19`, `bizPrice20`, `bizShipment`, `bizEnterPrice`) VALUES
(1, '24/7 | Idlewood', 99999999, 1, 75000, 2001.84, -1761.89, 13.5389, 179.734, -27.3073, -30.874, 1003.56, 0, 0, 4, 0, 0, 0, 644, 85, 75, 125, 15, 100, 3, 2, 10, 100, 20, 10, 2001.84, -1761.89, 13.5389, 179.734, 0, 0, 0, '', 150, 200, 160, 60, 50, 5, 10, 50, 0, 0, 0, 0),
(2, 'Armurerie | Idlewood', 99999999, 2, 100000, 2129.89, -1761.62, 13.5625, 182.675, 316.396, -169.837, 999.601, 0, 0, 6, 0, 0, 0, 1829, 112, 50, 100, 200, 400, 600, 800, 0, 0, 0, 0, 2129.89, -1761.62, 13.5625, 182.675, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 'Pizzeria | Idlewood', 99999999, 4, 100000, 2105.09, -1806.55, 13.5544, 270.891, 363.34, -74.6679, 1001.51, 315, 0, 10, 0, 0, 0, 18, 98, 2, 5, 5, 10, 10, 15, 10, 0, 0, 0, 2105.09, -1806.55, 13.5544, 270.891, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(4, 'BINCO', 99999999, 3, 5000, 2244.39, -1665.55, 15.4764, 164.144, 161.391, -93.1591, 1001.8, 3.1101, 0, 18, 0, 0, 0, 30, 98, 25, 15, 10, 10, 0, 0, 0, 0, 0, 0, 2039.9, -1754.86, 13.3828, 314.051, 0, 0, 0, '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `cabine`
--

CREATE TABLE `cabine` (
  `cabineID` int(11) NOT NULL,
  `cabineX` float NOT NULL,
  `cabineY` float NOT NULL,
  `cabineZ` float NOT NULL,
  `cabineRX` float NOT NULL,
  `cabineInterior` int(11) NOT NULL,
  `cabineWorld` int(11) NOT NULL,
  `cabineNumber` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `camera`
--

CREATE TABLE `camera` (
  `cameraID` int(11) NOT NULL,
  `cameraZone` varchar(25) NOT NULL,
  `cameraLocalisation` varchar(25) NOT NULL,
  `cameraPosX_1` float NOT NULL,
  `cameraPosY_1` float NOT NULL,
  `cameraPosZ_1` float NOT NULL,
  `cameraPosX_2` float NOT NULL,
  `cameraPosY_2` float NOT NULL,
  `cameraPosZ_2` float NOT NULL,
  `cameraRX` float NOT NULL,
  `cameraRY` float NOT NULL,
  `cameraRZ` float NOT NULL,
  `cameraInterior` int(11) NOT NULL,
  `cameraWorld` int(11) NOT NULL,
  `cameraStatus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `cars`
--

CREATE TABLE `cars` (
  `carID` int(12) NOT NULL,
  `carModel` int(12) DEFAULT '0',
  `carOwner` int(12) DEFAULT '0',
  `carFuel` int(11) NOT NULL,
  `carHealth` varchar(30) NOT NULL,
  `carPosX` float DEFAULT '0',
  `carPosY` float DEFAULT '0',
  `carPosZ` float DEFAULT '0',
  `carPosR` float DEFAULT '0',
  `carColor1` int(12) DEFAULT '0',
  `carColor2` int(12) DEFAULT '0',
  `carPaintjob` int(12) DEFAULT '-1',
  `carLocked` int(4) DEFAULT '0',
  `carMod1` int(12) DEFAULT '0',
  `carMod2` int(12) DEFAULT '0',
  `carMod3` int(12) DEFAULT '0',
  `carMod4` int(12) DEFAULT '0',
  `carMod5` int(12) DEFAULT '0',
  `carMod6` int(12) DEFAULT '0',
  `carMod7` int(12) DEFAULT '0',
  `carMod8` int(12) DEFAULT '0',
  `carMod9` int(12) DEFAULT '0',
  `carMod10` int(12) DEFAULT '0',
  `carMod11` int(12) DEFAULT '0',
  `carMod12` int(12) DEFAULT '0',
  `carMod13` int(12) DEFAULT '0',
  `carMod14` int(12) DEFAULT '0',
  `carImpounded` int(12) DEFAULT '0',
  `carWeapon1` int(12) DEFAULT '0',
  `carAmmo1` int(12) DEFAULT '0',
  `carWeapon2` int(12) DEFAULT '0',
  `carAmmo2` int(12) DEFAULT '0',
  `carWeapon3` int(12) DEFAULT '0',
  `carAmmo3` int(12) DEFAULT '0',
  `carWeapon4` int(12) DEFAULT '0',
  `carAmmo4` int(12) DEFAULT '0',
  `carWeapon5` int(12) DEFAULT '0',
  `carAmmo5` int(12) DEFAULT '0',
  `carImpoundPrice` int(12) DEFAULT '0',
  `carFaction` int(12) DEFAULT '0',
  `carJob` int(11) NOT NULL,
  `carLoca` int(11) NOT NULL,
  `carLocaPrice` int(11) NOT NULL,
  `carLocaID` int(11) NOT NULL,
  `carPrice` int(11) NOT NULL,
  `carDouble` int(11) NOT NULL,
  `carSabot` int(11) NOT NULL,
  `carSabPri` int(11) NOT NULL,
  `carParkTimestamp` int(12) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `cars`
--

INSERT INTO `cars` (`carID`, `carModel`, `carOwner`, `carFuel`, `carHealth`, `carPosX`, `carPosY`, `carPosZ`, `carPosR`, `carColor1`, `carColor2`, `carPaintjob`, `carLocked`, `carMod1`, `carMod2`, `carMod3`, `carMod4`, `carMod5`, `carMod6`, `carMod7`, `carMod8`, `carMod9`, `carMod10`, `carMod11`, `carMod12`, `carMod13`, `carMod14`, `carImpounded`, `carWeapon1`, `carAmmo1`, `carWeapon2`, `carAmmo2`, `carWeapon3`, `carAmmo3`, `carWeapon4`, `carAmmo4`, `carWeapon5`, `carAmmo5`, `carImpoundPrice`, `carFaction`, `carJob`, `carLoca`, `carLocaPrice`, `carLocaID`, `carPrice`, `carDouble`, `carSabot`, `carSabPri`, `carParkTimestamp`) VALUES
(1, 462, 0, 100, '1000.000000|0|0|0|0', 1560.48, -2338.41, 13.1465, 90.2635, 5, 5, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 200, 0, 0, -1, 0, 0, 0),
(2, 462, 0, 100, '1000.000000|0|0|0|0', 1560.32, -2334.93, 13.1459, 89.3472, 6, 6, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 200, 0, 0, -1, 0, 0, 0),
(3, 462, 0, 100, '1000.000000|0|0|0|0', 1560.16, -2331.68, 13.1453, 87.0931, 7, 7, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 200, 0, 0, -1, 0, 0, 0),
(4, 462, 0, 99, '1000.000000|0|0|0|0', 1560.1, -2328.49, 13.1458, 89.5811, 8, 8, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 200, 5, 0, -1, 0, 0, 0),
(5, 462, 0, 100, '1000.000000|0|0|0|0', 1559.98, -2325.24, 13.1458, 89.9709, 9, 9, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 200, 0, 0, -1, 0, 0, 0),
(6, 462, 0, 100, '1000.000000|0|0|0|0', 1559.93, -2321.95, 13.1451, 91.2991, 10, 10, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 200, 0, 0, -1, 0, 0, 0),
(7, 462, 0, 100, '1000.000000|0|0|0|0', 1559.82, -2318.82, 13.1457, 90.7529, 12, 12, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 200, 0, 0, -1, 0, 0, 0),
(8, 462, 0, 100, '1000.000000|0|0|0|0', 1559.7, -2315.27, 13.1438, 90.8944, 16, 16, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 200, 0, 0, -1, 0, 0, 0),
(9, 462, 0, 100, '1000.000000|0|0|0|0', 1559.65, -2312.2, 13.1424, 90.9488, 19, 19, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 200, 0, 0, -1, 0, 0, 0),
(10, 462, 0, 100, '1000.000000|0|0|0|0', 1559.61, -2308.77, 13.1425, 91.2308, 35, 35, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 1, 200, 0, 0, -1, 0, 0, 0),
(11, 408, 0, 99, '1000.000000|0|0|0|0', 2460.96, -2116.71, 14.0903, 358.802, 1, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 6, 0, 200, 0, 0, -1, 0, 0, 0),
(12, 408, 0, 100, '1000.000000|0|0|0|0', 2483.93, -2116.76, 14.0915, 2.2246, 1, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 6, 0, 200, 0, 0, -1, 0, 0, 0),
(13, 408, 0, 100, '1000.000000|0|0|0|0', 2508.46, -2116.77, 14.0925, 0.148, 1, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 6, 0, 200, 0, 0, -1, 0, 0, 0),
(14, 456, 0, 100, '1000.000000|0|0|0|0', 1788.53, -2024.76, 13.6571, 180, 2, 2, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 0, 200, 0, 0, -1, 0, 0, 0),
(15, 456, 0, 100, '1000.000000|0|0|0|0', 1795.55, -2024.72, 13.6673, 179.958, 2, 2, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 0, 200, 0, 0, -1, 0, 0, 0),
(16, 456, 0, 99, '1000.000000|0|0|0|0', 1801.86, -2024.68, 13.6912, 179.412, 2, 2, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 0, 200, 0, 0, -1, 0, 0, 0),
(17, 456, 0, 100, '1000.000000|0|0|0|0', 1808.4, -2024.69, 13.7098, 180.014, 2, 2, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 1, 0, 200, 0, 0, -1, 0, 0, 0),
(18, 448, 0, 99, '1000.000000|0|0|0|0', 2121.46, -1785.06, 12.9858, 33.2922, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 5, 0, 200, 0, 0, -1, 0, 0, 0),
(19, 448, 0, 100, '1000.000000|0|0|0|0', 2118.18, -1785.14, 12.9865, 39.1637, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 5, 0, 200, 0, 0, -1, 0, 0, 0),
(20, 448, 0, 100, '1000.000000|0|0|0|0', 2115.27, -1785.25, 12.987, 41.1814, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 5, 0, 200, 0, 0, -1, 0, 0, 0),
(21, 448, 0, 100, '1000.000000|0|0|0|0', 2111.7, -1785.26, 12.9858, 44.7601, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 5, 0, 200, 0, 0, -1, 0, 0, 0),
(22, 411, 1, 95, '1000.000000|0|0|0|0', 2088.1, -1732.87, 13.2779, 1.1497, 86, 37, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 200, 0, 0, -1, 0, 0, 0),
(23, 415, 1, 100, '1000.000000|0|0|0|0', 2076.77, -1730.42, 13.2333, 359.543, 1, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 200, 0, 250000, -1, 0, 0, 0),
(24, 411, 0, 99, '1000.000000|0|0|0|0', -1401.02, -254.631, 1043.33, 349.174, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 200, 0, 0, -1, 0, 0, 0),
(25, 497, 0, 100, '1000.000000|0|0|0|0', 1559.67, -1647.62, 28.563, 255.642, 0, 56, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 200, 0, 0, -1, 0, 0, 0),
(26, 596, 0, 100, '1000.000000|0|0|0|0', 1536.05, -1667.26, 13.0958, 178.447, 0, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1, 0, 200, 0, 0, -1, 0, 0, 0),
(27, 596, 0, 100, '1000.000000|0|0|0|0', 1536.08, -1678.44, 13.0974, 179.784, 0, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, -1, 0, 200, 0, 0, -1, 0, 0, 0),
(28, 463, 1, 61, '1000.000000|0|0|0|0', 2070.85, -1733.57, 13.0879, 226.782, 1, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, -1, 200, 0, 50000, -1, 0, 0, 0),
(29, 407, 0, 100, '1000.000000|0|0|0|0', 1123.99, -1328.32, 13.5936, 0.2482, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, -1, 0, 200, 0, 0, -1, 0, 0, 0),
(30, 407, 0, 99, '1000.000000|0|0|0|0', 1110.62, -1328.99, 13.5351, 3.2454, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, -1, 0, 200, 0, 0, -1, 0, 0, 0),
(31, 416, 0, 100, '1000.000000|0|0|0|0', 1145.84, -1308.15, 13.8108, 89.8695, 1, 3, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, -1, 0, 200, 0, 0, -1, 0, 0, 0),
(32, 416, 0, 100, '1000.000000|0|0|0|0', 1145.67, -1300.4, 13.7968, 89.3815, 1, 1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, -1, 0, 200, 0, 0, -1, 0, 0, 0),
(33, 426, 2, 100, '1000.000000|0|0|0|0', 2076.3, -1750.86, 14.3828, 19.3543, 35, 67, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 200, 0, 0, -1, 0, 0, 0),
(34, 560, 0, 99, '1000.000000|0|0|0|0', 1491.2, -1742.76, 13.2551, 0, 0, 0, -1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 4, -1, 0, 200, 0, 0, -1, 0, 0, 0),
(35, 411, 1, 100, '1000.000000|0|0|0|0', 1484.52, -1736.31, 14.55, 357.622, 85, 104, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 200, 0, 0, -1, 0, 0, 0),
(36, 522, 0, 100, '1000.000000|0|0|0|0', 2031.6, -1750.66, 13.3828, 227.073, 82, 100, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 200, 0, 0, -1, 0, 0, 0),
(37, 522, 0, 100, '1000.000000|0|0|0|0', 1484.22, -1677.8, 14.0468, 180, 115, 125, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 200, 0, 0, -1, 0, 0, 0),
(38, 522, 4, 100, '1000.000000|0|0|0|0', 1647.31, -2326.54, 14.5468, 1.2533, 35, 119, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 200, 0, 0, -1, 0, 0, 0),
(39, 560, 0, 100, '1000.000000|0|0|0|0', 2050.73, -1753.43, 13.3828, 79.1266, 48, 32, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 200, 0, 0, -1, 0, 0, 0),
(40, 560, 6, 100, '1000.000000|0|0|0|0', 1647.56, -2323.96, 14.5468, 127.852, 121, 21, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 200, 0, 0, -1, 0, 0, 0),
(41, 456, 6, 100, '1000.000000|0|0|0|0', 2044.75, -1757.6, 14.5468, 176.899, 110, 97, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 200, 0, 0, -1, 0, 0, 0),
(42, 456, 1, 100, '1000.000000|0|0|0|0', 2031.14, -1752.63, 14.3828, 72.1123, 56, 124, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 200, 0, 0, -1, 0, 0, 0),
(43, 522, 0, 100, '1000.000000|0|0|0|0', -147.421, -1391.61, 2.6953, 356.553, 75, 69, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 200, 0, 0, -1, 0, 0, 0),
(44, 522, 1, 100, '1000.000000|0|0|0|0', 2867.94, -2179.46, 4.4106, 36.6777, 123, 112, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 200, 0, 0, -1, 0, 0, 0),
(45, 522, 3, 100, '1000.000000|0|0|0|0', 2353.43, -2291.45, 14.5468, 100.214, 72, 36, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 200, 0, 0, -1, 0, 0, 0),
(46, 408, 0, 100, '1000.000000|0|0|0|0', 2309.25, -2326.65, 13.3828, 116.819, 96, 116, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 200, 0, 0, -1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `carstorage`
--

CREATE TABLE `carstorage` (
  `ID` int(12) DEFAULT '0',
  `itemID` int(12) NOT NULL,
  `itemName` varchar(32) CHARACTER SET latin1 DEFAULT NULL,
  `itemModel` int(12) DEFAULT '0',
  `itemQuantity` int(12) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `characters`
--

CREATE TABLE `characters` (
  `ID` int(12) NOT NULL,
  `Username` varchar(24) CHARACTER SET latin1 DEFAULT NULL,
  `Password` varchar(128) NOT NULL,
  `Connected` int(11) NOT NULL,
  `RegisterDate` varchar(36) NOT NULL,
  `LoginDate` varchar(36) NOT NULL,
  `LastGPCI` varchar(150) NOT NULL,
  `IP` varchar(16) NOT NULL,
  `Tokens` int(11) NOT NULL,
  `packRename` int(11) NOT NULL,
  `packDonator` int(11) NOT NULL,
  `donatorExpiration` int(11) NOT NULL,
  `Created` int(4) DEFAULT '0',
  `Astuces` int(11) NOT NULL,
  `AstucesChallenges` varchar(100) NOT NULL,
  `Level` int(11) NOT NULL DEFAULT '1',
  `Gender` int(4) DEFAULT '0',
  `Birthdate` varchar(32) CHARACTER SET latin1 DEFAULT '01/01/1970',
  `Origin` varchar(32) CHARACTER SET latin1 DEFAULT 'Non spécifié',
  `Skin` int(12) DEFAULT '26',
  `Glasses` int(12) DEFAULT '0',
  `Hat` int(12) DEFAULT '0',
  `Bandana` int(12) DEFAULT '0',
  `PosX` float DEFAULT '0',
  `PosY` float DEFAULT '0',
  `PosZ` float DEFAULT '0',
  `PosA` float DEFAULT '0',
  `Interior` int(12) DEFAULT '0',
  `World` int(12) DEFAULT '0',
  `GlassesPos` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `HatPos` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `BandanaPos` varchar(100) CHARACTER SET latin1 DEFAULT NULL,
  `Hospital` int(12) DEFAULT '-1',
  `HospitalInt` int(12) DEFAULT '0',
  `Money` int(12) DEFAULT '2500',
  `BankMoney` int(12) DEFAULT '5000',
  `IndiceForce` float NOT NULL,
  `OwnsBillboard` int(12) DEFAULT '-1',
  `Savings` int(12) DEFAULT '0',
  `Admin` int(12) DEFAULT '0',
  `Helper` int(11) NOT NULL,
  `JailTime` int(12) DEFAULT '0',
  `Muted` int(4) DEFAULT '0',
  `CreateDate` int(12) DEFAULT '0',
  `LastLogin` int(12) DEFAULT '0',
  `Tester` int(4) DEFAULT '0',
  `Gun1` int(12) DEFAULT '0',
  `Gun2` int(12) DEFAULT '0',
  `Gun3` int(12) DEFAULT '0',
  `Gun4` int(12) DEFAULT '0',
  `Gun5` int(12) DEFAULT '0',
  `Gun6` int(12) DEFAULT '0',
  `Gun7` int(12) DEFAULT '0',
  `Gun8` int(12) DEFAULT '0',
  `Gun9` int(12) DEFAULT '0',
  `Gun10` int(12) DEFAULT '0',
  `Gun11` int(12) DEFAULT '0',
  `Gun12` int(12) DEFAULT '0',
  `Gun13` int(12) DEFAULT '0',
  `Ammo1` int(12) DEFAULT '0',
  `Ammo2` int(12) DEFAULT '0',
  `Ammo3` int(12) DEFAULT '0',
  `Ammo4` int(12) DEFAULT '0',
  `Ammo5` int(12) DEFAULT '0',
  `Ammo6` int(12) DEFAULT '0',
  `Ammo7` int(12) DEFAULT '0',
  `Ammo8` int(12) DEFAULT '0',
  `Ammo9` int(12) DEFAULT '0',
  `Ammo10` int(12) DEFAULT '0',
  `Ammo11` int(12) DEFAULT '0',
  `Ammo12` int(12) DEFAULT '0',
  `Ammo13` int(12) DEFAULT '0',
  `House` int(12) DEFAULT '-1',
  `Location` int(11) NOT NULL DEFAULT '-1',
  `Annuary` int(11) NOT NULL,
  `RedList` int(11) NOT NULL,
  `Business` int(12) DEFAULT '-1',
  `Phone` int(12) DEFAULT '0',
  `Lottery` int(12) DEFAULT '0',
  `Hunger` int(12) DEFAULT '100',
  `Thirst` int(12) DEFAULT '100',
  `PlayingHours` int(12) DEFAULT '0',
  `Hours` int(11) NOT NULL DEFAULT '0',
  `PlayingHoursMax` int(11) NOT NULL DEFAULT '4',
  `Minutes` int(11) NOT NULL DEFAULT '0',
  `MinutesCount` int(11) NOT NULL DEFAULT '0',
  `ArmorStatus` float DEFAULT '0',
  `Entrance` int(12) DEFAULT '0',
  `Job` int(12) DEFAULT '0',
  `Faction` int(12) DEFAULT '-1',
  `FactionRank` int(12) DEFAULT '0',
  `Prisoned` int(4) DEFAULT '0',
  `Warrants` int(12) DEFAULT '0',
  `Health` float DEFAULT '100',
  `Channel` int(12) DEFAULT '0',
  `Accent` varchar(24) CHARACTER SET latin1 DEFAULT NULL,
  `Bleeding` int(4) DEFAULT '0',
  `Warnings` int(12) DEFAULT '0',
  `Warn1` varchar(32) CHARACTER SET latin1 DEFAULT NULL,
  `Warn2` varchar(32) CHARACTER SET latin1 DEFAULT NULL,
  `MaskID` int(12) DEFAULT '0',
  `FactionMod` int(12) DEFAULT '0',
  `Capacity` int(12) DEFAULT '35',
  `AdminHide` int(4) DEFAULT '0',
  `LotteryB` int(11) NOT NULL DEFAULT '0',
  `SpawnPoint` int(11) NOT NULL DEFAULT '0',
  `LocaID` int(11) NOT NULL,
  `SpawnPointHouse` int(11) NOT NULL DEFAULT '-1',
  `CarD` int(11) NOT NULL DEFAULT '0',
  `PaVen` int(11) NOT NULL DEFAULT '-1',
  `PaVal` int(11) NOT NULL DEFAULT '-1',
  `Arme1` int(11) NOT NULL DEFAULT '0',
  `Arme2` int(11) NOT NULL DEFAULT '0',
  `Arme3` int(11) NOT NULL DEFAULT '0',
  `Amu1` int(11) NOT NULL DEFAULT '0',
  `Amu2` int(11) NOT NULL DEFAULT '0',
  `Amu3` int(11) NOT NULL DEFAULT '0',
  `Gouv` int(11) NOT NULL DEFAULT '0',
  `Wanted` int(11) NOT NULL DEFAULT '0',
  `Bracelet` int(11) NOT NULL,
  `CarDouble` varchar(32) NOT NULL DEFAULT '-1|-1|-1|-1',
  `NombreKick` int(11) NOT NULL,
  `NombreBan` int(11) NOT NULL,
  `NombreJail` int(11) NOT NULL,
  `NombreWarn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `characters`
--

INSERT INTO `characters` (`ID`, `Username`, `Password`, `Connected`, `RegisterDate`, `LoginDate`, `LastGPCI`, `IP`, `Tokens`, `packRename`, `packDonator`, `donatorExpiration`, `Created`, `Astuces`, `AstucesChallenges`, `Level`, `Gender`, `Birthdate`, `Origin`, `Skin`, `Glasses`, `Hat`, `Bandana`, `PosX`, `PosY`, `PosZ`, `PosA`, `Interior`, `World`, `GlassesPos`, `HatPos`, `BandanaPos`, `Hospital`, `HospitalInt`, `Money`, `BankMoney`, `IndiceForce`, `OwnsBillboard`, `Savings`, `Admin`, `Helper`, `JailTime`, `Muted`, `CreateDate`, `LastLogin`, `Tester`, `Gun1`, `Gun2`, `Gun3`, `Gun4`, `Gun5`, `Gun6`, `Gun7`, `Gun8`, `Gun9`, `Gun10`, `Gun11`, `Gun12`, `Gun13`, `Ammo1`, `Ammo2`, `Ammo3`, `Ammo4`, `Ammo5`, `Ammo6`, `Ammo7`, `Ammo8`, `Ammo9`, `Ammo10`, `Ammo11`, `Ammo12`, `Ammo13`, `House`, `Location`, `Annuary`, `RedList`, `Business`, `Phone`, `Lottery`, `Hunger`, `Thirst`, `PlayingHours`, `Hours`, `PlayingHoursMax`, `Minutes`, `MinutesCount`, `ArmorStatus`, `Entrance`, `Job`, `Faction`, `FactionRank`, `Prisoned`, `Warrants`, `Health`, `Channel`, `Accent`, `Bleeding`, `Warnings`, `Warn1`, `Warn2`, `MaskID`, `FactionMod`, `Capacity`, `AdminHide`, `LotteryB`, `SpawnPoint`, `LocaID`, `SpawnPointHouse`, `CarD`, `PaVen`, `PaVal`, `Arme1`, `Arme2`, `Arme3`, `Amu1`, `Amu2`, `Amu3`, `Gouv`, `Wanted`, `Bracelet`, `CarDouble`, `NombreKick`, `NombreBan`, `NombreJail`, `NombreWarn`) VALUES
(1, 'Handika_Eice', '344907E89B981CAF221D05F597EB57A6AF408F15F4DD7895BBD1B96A2938EC24A7DCF23ACB94ECE0B6D7B0640358BC56BDB448194B9305311AFF038A834A079F', 1, '01/10/2017, 19:09', '07/10/2017, 00:10', 'DA95DC0844CD4898C848444498494E4C4ADCD84C', '127.0.0.1', 0, 0, 0, 0, 1, 1, '1|1|1|0|0|1', 11, 1, '05/01/1980', 'Afro-américain', 271, 19012, 0, 18920, 2314.18, -2284.76, 13.5468, 118.254, 0, 0, '0.1000|0.0388|0.0017|89.6753|83.5139|0.0000|1.0000|1.2467|1.0000', '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', -1, 0, 99497853, 32872, 0.1, -1, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, 67, 1, 0, -1, 39301, 0, 100, 100, 20, 0, 22, 2178, 18, 0, 0, 1, 2, 5, 0, 1, 62, 452, NULL, 0, 0, '', '', 90482, 0, 35, 0, 0, 2, 0, -1, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '-1|-1|-1|-1', 0, 0, 0, 0),
(2, 'Roderick_McKenzie', '0E5BC206083173452F63A57C37BF99A664FB4C10E0058CF92546BF89D48457C0C24A32DD58349CD37B418AE2DF417255ECC929ADE8B75C54EA86D10C009CA8FB', 1, '03/10/2017, 16:34', '06/10/2017, 23:04', '4494955E4489ECDD98449C8FF4ACEAEF89CEE44F', '90.89.32.162', 0, 0, 0, 0, 1, 1, '0|1|0|0|0|0', 69, 1, '08/07/1989', 'Américain', 2, 0, 0, 0, 2317.54, -2287.08, 14.1099, 116.768, 0, 0, '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', -1, 0, -9550, 5795, 0, -1, 0, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 0, 100, 100, 2, 0, 138, 69, 9, 0, 0, 0, -1, 5, 0, 0, 203, 0, NULL, 0, 0, 'NULL', 'NULL', 79722, 0, 35, 0, 0, 0, 0, -1, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '-1|-1|-1|-1', 0, 0, 0, 0),
(3, 'Tyler_Resler', 'C690D34B54F33FB6E584C8D21BCBD3239D9CE2E162086E8141E11040D203704A5ABBCA5C064E2E546FECF6356CC6FCA55209AA7ECC13A93373C7130B1DDA2601', 0, '05/10/2017, 20:28', '06/10/2017, 21:21', '859CFC84EF8E89A9DEC8E4980884DC5AA455CD04', '2.13.225.35', 0, 0, 0, 0, 1, 1, '0|0|0|0|0|0', 10, 1, '17/02/1985', 'Américain', 60, 0, 0, 0, 2315.92, -2297.96, 13.5468, 309.875, 0, 0, '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', -1, 0, 1000, 5000, 0, -1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 0, 100, 100, 0, 0, 20, 19, 19, 0, 0, 0, -1, 0, 0, 0, 82, 0, NULL, 0, 0, 'NULL', 'NULL', 46972, 0, 35, 0, 0, 0, 0, -1, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '-1|-1|-1|-1', 0, 0, 0, 0),
(4, 'Lorenzo_Garcia', '9CF4451C384ED8FA27484BB58AA2EA914F69F4839B5952BEBA0A7AA6BC9CA8DEAA5B21D9DCA6BA45BC22C475B79C202918766D7D0C1B28AC878F27E07FAB3279', 0, '05/10/2017, 20:42', '05/10/2017, 23:47', 'ECCD88404948459C9ED88FDCA9D48EE49DCEF8E8', '89.93.107.208', 0, 0, 0, 0, 1, 1, '0|1|1|0|0|1', 2, 1, '22/08/1996', 'Méxicain', 97, 0, 0, 0, 2344.13, -1732.75, 12.9787, 179.355, 0, 0, '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', -1, 0, 44875, 5688, 0, -1, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 73470, 0, 100, 100, 0, 0, 4, 81, 21, 0, 0, 5, -1, 5, 0, 0, 96, 0, NULL, 0, 0, 'NULL', 'NULL', 49604, 0, 35, 0, 0, 0, 0, -1, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '-1|-1|-1|-1', 0, 0, 0, 0),
(5, 'Inocente_Garcia', 'E49EFB487160DF31F1EAA758BEC034C26909011AF605348059AD0F7D170CDE321B6B2A48546EBC580F3AC1E4A679222675A1D52BF5C67792C54213D1B8B85993', 0, '05/10/2017, 20:45', '06/10/2017, 22:36', '8484DAC4DE849DC4E909F5EF0C8AD50908C840C0', '88.161.69.188', 0, 0, 0, 0, 1, 1, '1|1|0|0|0|1', 10, 1, '13/05/1999', 'Méxicain', 154, 0, 0, 0, 1413.99, -1705.41, 13.5394, 65.8376, 0, 0, '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', -1, 0, 501935, 7407, 0, -1, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 0, 100, 100, 6, 0, 20, 237, 57, 0, 0, 1, -1, 0, 0, 0, 121, 0, NULL, 0, 0, 'NULL', 'NULL', 95702, 0, 35, 0, 0, 0, 0, -1, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '-1|-1|-1|-1', 0, 0, 0, 0),
(6, 'Pepper_Modo', '093C8A8A6F554DC300F13AAB2BBA726E5E30376606E41E30BE3D6BD462000BCB12302B086555DE2BB4B92B69FA9229E558F0409748D80547600372EDA434CC54', 0, '05/10/2017, 21:24', '05/10/2017, 21:57', 'C98845ADA09EDE94D9E88CF4D89EE9C9F5D8889D', '88.167.185.131', 0, 0, 0, 0, 1, 1, '0|1|0|0|0|0', 10, 1, '17/02/1985', 'Américain', 271, 0, 0, 0, -1464.22, 344.991, 7.1875, 105.942, 0, 0, '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', '0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000|0.0000', -1, 0, 1985, 5000, 0, -1, 0, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 0, 100, 100, 1, 0, 20, 34, 34, 0, 0, 0, -1, 5, 0, 0, 150, 0, NULL, 0, 0, 'NULL', 'NULL', 88227, 0, 35, 0, 0, 0, 0, -1, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '-1|-1|-1|-1', 0, 0, 0, 0),
(7, 'Handika_Eicep', '344907E89B981CAF221D05F597EB57A6AF408F15F4DD7895BBD1B96A2938EC24A7DCF23ACB94ECE0B6D7B0640358BC56BDB448194B9305311AFF038A834A079F', 1, '05/10/2017, 23:09', '05/10/2017, 23:09', 'DA95DC0844CD4898C848444498494E4C4ADCD84C', '127.0.0.1', 0, 0, 0, 0, 0, 1, '', 1, 1, '05/01/1980', 'Américain', 8, 0, 0, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, -1, 0, 2500, 5000, 0, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -1, -1, 0, 0, -1, 0, 0, 100, 100, 0, 0, 4, 0, 0, 0, 0, 0, -1, 0, 0, 0, 100, 0, NULL, 0, 0, NULL, NULL, 0, 0, 35, 0, 0, 0, 0, -1, 0, -1, -1, 0, 0, 0, 0, 0, 0, 0, 0, 0, '-1|-1|-1|-1', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `contacts`
--

CREATE TABLE `contacts` (
  `ID` int(12) DEFAULT '0',
  `contactID` int(12) NOT NULL,
  `contactName` varchar(32) CHARACTER SET latin1 DEFAULT NULL,
  `contactNumber` int(12) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `crates`
--

CREATE TABLE `crates` (
  `crateID` int(12) NOT NULL,
  `crateType` int(12) DEFAULT '0',
  `crateX` float DEFAULT '0',
  `crateY` float DEFAULT '0',
  `crateZ` float DEFAULT '0',
  `crateA` float DEFAULT '0',
  `crateInterior` int(12) DEFAULT '0',
  `crateWorld` int(12) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `crates`
--

INSERT INTO `crates` (`crateID`, `crateType`, `crateX`, `crateY`, `crateZ`, `crateA`, `crateInterior`, `crateWorld`) VALUES
(1, 1, -1465.78, 340.067, 6.2874, 211.93, 0, 0),
(2, 1, -1464.69, 340.909, 6.1875, 180.62, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `dealers`
--

CREATE TABLE `dealers` (
  `dealerID` int(11) NOT NULL,
  `dealerSkin` int(11) NOT NULL,
  `dealerBiz` int(11) NOT NULL,
  `dealerName` varchar(25) NOT NULL,
  `dealerX` float NOT NULL,
  `dealerY` float NOT NULL,
  `dealerZ` float NOT NULL,
  `dealerAngle` float NOT NULL,
  `dealerVW` int(11) NOT NULL,
  `dealerText` varchar(100) NOT NULL,
  `anim_Lib` varchar(50) NOT NULL,
  `anim_Name` varchar(50) NOT NULL,
  `anim_Speed` float NOT NULL,
  `anim_Loop` int(11) NOT NULL,
  `anim_LockX` int(11) NOT NULL,
  `anim_LockY` int(11) NOT NULL,
  `anim_Freeze` int(11) NOT NULL,
  `anim_Time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `dealers`
--

INSERT INTO `dealers` (`dealerID`, `dealerSkin`, `dealerBiz`, `dealerName`, `dealerX`, `dealerY`, `dealerZ`, `dealerAngle`, `dealerVW`, `dealerText`, `anim_Lib`, `anim_Name`, `anim_Speed`, `anim_Loop`, `anim_LockX`, `anim_LockY`, `anim_Freeze`, `anim_Time`) VALUES
(1, 1, -1, 'null', 2006.99, -1777.63, 17.3569, 182.563, 0, '', '', '', 1082340000, 1, 0, 0, 1, 0),
(2, 1, -1, 'null', 2080.64, -1767.55, 13.5543, 238.432, 15000, '', '', '', 1082340000, 1, 0, 0, 1, 0),
(3, 1, -1, 'null', 2096.36, -1769.08, 13.5609, 73.81, 0, '', '', '', 1082340000, 1, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `dealervehicles`
--

CREATE TABLE `dealervehicles` (
  `ID` int(12) DEFAULT '0',
  `vehID` int(12) NOT NULL,
  `vehModel` int(12) DEFAULT '0',
  `vehPrice` int(12) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `detectors`
--

CREATE TABLE `detectors` (
  `detectorID` int(12) NOT NULL,
  `detectorX` float DEFAULT '0',
  `detectorY` float DEFAULT '0',
  `detectorZ` float DEFAULT '0',
  `detectorAngle` float DEFAULT '0',
  `detectorInterior` int(12) DEFAULT '0',
  `detectorWorld` int(12) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `detectors`
--

INSERT INTO `detectors` (`detectorID`, `detectorX`, `detectorY`, `detectorZ`, `detectorAngle`, `detectorInterior`, `detectorWorld`) VALUES
(1, 1814.83, -1931.11, 13.5449, 173.837, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `dropped`
--

CREATE TABLE `dropped` (
  `ID` int(12) NOT NULL,
  `itemName` varchar(32) CHARACTER SET latin1 DEFAULT NULL,
  `itemModel` int(12) DEFAULT '0',
  `itemX` float DEFAULT '0',
  `itemY` float DEFAULT '0',
  `itemZ` float DEFAULT '0',
  `itemInt` int(12) DEFAULT '0',
  `itemWorld` int(12) DEFAULT '0',
  `itemQuantity` int(12) DEFAULT '0',
  `itemAmmo` int(12) DEFAULT '0',
  `itemWeapon` int(12) DEFAULT '0',
  `itemPlayer` varchar(24) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `dropped`
--

INSERT INTO `dropped` (`ID`, `itemName`, `itemModel`, `itemX`, `itemY`, `itemZ`, `itemInt`, `itemWorld`, `itemQuantity`, `itemAmmo`, `itemWeapon`, `itemPlayer`) VALUES
(4, 'Bombe', 1654, 1964.85, -1735.27, 15.0687, 0, 0, 10, 0, 0, 'Admin'),
(14, 'Redchair', 2121, 2072.4, -1745.21, 12.6493, 0, 0, 1, 0, 0, 'Handika_Eice'),
(15, 'redchair', 2121, 2006.41, -1758.87, 12.639, 0, 0, 1, 0, 0, 'Handika_Eice');

-- --------------------------------------------------------

--
-- Structure de la table `entrances`
--

CREATE TABLE `entrances` (
  `entranceID` int(12) NOT NULL,
  `entranceName` varchar(32) CHARACTER SET latin1 DEFAULT NULL,
  `entranceIcon` int(12) DEFAULT '0',
  `entrancePosX` float DEFAULT '0',
  `entrancePosY` float DEFAULT '0',
  `entrancePosZ` float DEFAULT '0',
  `entrancePosA` float DEFAULT '0',
  `entranceIntX` float DEFAULT '0',
  `entranceIntY` float DEFAULT '0',
  `entranceIntZ` float DEFAULT '0',
  `entranceIntA` float DEFAULT '0',
  `entranceInterior` int(12) DEFAULT '0',
  `entranceExterior` int(12) DEFAULT '0',
  `entranceExteriorVW` int(12) DEFAULT '0',
  `entranceType` int(12) DEFAULT '0',
  `entrancePass` varchar(32) CHARACTER SET latin1 DEFAULT NULL,
  `entranceLocked` int(12) DEFAULT '0',
  `entranceCustom` int(4) DEFAULT '0',
  `entranceWorld` int(12) DEFAULT '0',
  `entranceIconType` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `entrances`
--

INSERT INTO `entrances` (`entranceID`, `entranceName`, `entranceIcon`, `entrancePosX`, `entrancePosY`, `entrancePosZ`, `entrancePosA`, `entranceIntX`, `entranceIntY`, `entranceIntZ`, `entranceIntA`, `entranceInterior`, `entranceExterior`, `entranceExteriorVW`, `entranceType`, `entrancePass`, `entranceLocked`, `entranceCustom`, `entranceWorld`, `entranceIconType`) VALUES
(1, 'debug', 0, 1681.32, 1450.84, 46.598, 138.471, 1681.32, 1450.84, 10046.6, 0, 0, 0, 0, 0, '', 0, 0, 7001, 1318),
(2, 'Gymnase', 0, 2229.66, -1721.57, 13.5641, 315.624, 772.234, -4.95, 1000.73, 178.769, 5, 0, 0, 0, '', 0, 0, 7002, 1318),
(3, 'Bank', 0, 593.497, -1250.34, 18.2322, 204.506, 593.497, -1250.34, 10018.2, 0, 0, 0, 0, 0, '', 0, 0, 7003, 1318);

-- --------------------------------------------------------

--
-- Structure de la table `factions`
--

CREATE TABLE `factions` (
  `factionID` int(12) NOT NULL,
  `factionName` varchar(32) CHARACTER SET latin1 DEFAULT NULL,
  `factionGroupForum` int(11) NOT NULL DEFAULT '-1',
  `factionColor` int(12) DEFAULT '0',
  `factionType` int(12) DEFAULT '0',
  `factionRanks` int(12) DEFAULT '0',
  `factionLockerX` float DEFAULT '0',
  `factionLockerY` float DEFAULT '0',
  `factionLockerZ` float DEFAULT '0',
  `factionLockerInt` int(12) DEFAULT '0',
  `factionLockerWorld` int(12) DEFAULT '0',
  `factionWeapon1` int(12) DEFAULT '0',
  `factionAmmo1` int(12) DEFAULT '0',
  `factionWeapon2` int(12) DEFAULT '0',
  `factionAmmo2` int(12) DEFAULT '0',
  `factionWeapon3` int(12) DEFAULT '0',
  `factionAmmo3` int(12) DEFAULT '0',
  `factionWeapon4` int(12) DEFAULT '0',
  `factionAmmo4` int(12) DEFAULT '0',
  `factionWeapon5` int(12) DEFAULT '0',
  `factionAmmo5` int(12) DEFAULT '0',
  `factionWeapon6` int(12) DEFAULT '0',
  `factionAmmo6` int(12) DEFAULT '0',
  `factionWeapon7` int(12) DEFAULT '0',
  `factionAmmo7` int(12) DEFAULT '0',
  `factionWeapon8` int(12) DEFAULT '0',
  `factionAmmo8` int(12) DEFAULT '0',
  `factionWeapon9` int(12) DEFAULT '0',
  `factionAmmo9` int(12) DEFAULT '0',
  `factionWeapon10` int(12) DEFAULT '0',
  `factionAmmo10` int(12) DEFAULT '0',
  `factionRank1` varchar(32) CHARACTER SET latin1 DEFAULT NULL,
  `factionRank2` varchar(32) CHARACTER SET latin1 DEFAULT NULL,
  `factionRank3` varchar(32) CHARACTER SET latin1 DEFAULT NULL,
  `factionRank4` varchar(32) CHARACTER SET latin1 DEFAULT NULL,
  `factionRank5` varchar(32) CHARACTER SET latin1 DEFAULT NULL,
  `factionRank6` varchar(32) CHARACTER SET latin1 DEFAULT NULL,
  `factionRank7` varchar(32) CHARACTER SET latin1 DEFAULT NULL,
  `factionRank8` varchar(32) CHARACTER SET latin1 DEFAULT NULL,
  `factionRank9` varchar(32) CHARACTER SET latin1 DEFAULT NULL,
  `factionRank10` varchar(32) CHARACTER SET latin1 DEFAULT NULL,
  `factionRank11` varchar(32) CHARACTER SET latin1 DEFAULT NULL,
  `factionRank12` varchar(32) CHARACTER SET latin1 DEFAULT NULL,
  `factionRank13` varchar(32) CHARACTER SET latin1 DEFAULT NULL,
  `factionRank14` varchar(32) CHARACTER SET latin1 DEFAULT NULL,
  `factionRank15` varchar(32) CHARACTER SET latin1 DEFAULT NULL,
  `factionSkin1` int(12) DEFAULT '0',
  `factionSkin2` int(12) DEFAULT '0',
  `factionSkin3` int(12) DEFAULT '0',
  `factionSkin4` int(12) DEFAULT '0',
  `factionSkin5` int(12) DEFAULT '0',
  `factionSkin6` int(12) DEFAULT '0',
  `factionSkin7` int(12) DEFAULT '0',
  `factionSkin8` int(12) DEFAULT '0',
  `SpawnX` float NOT NULL,
  `SpawnY` float NOT NULL,
  `SpawnZ` float NOT NULL,
  `SpawnInterior` int(11) NOT NULL,
  `SpawnVW` int(1) NOT NULL,
  `factionArge` int(11) NOT NULL,
  `factionMembres` int(11) NOT NULL,
  `factionCredit` int(11) NOT NULL,
  `factionUpgrade0` int(11) NOT NULL,
  `factionUpgrade1` int(11) NOT NULL,
  `factionUpgrade2` int(11) NOT NULL,
  `factionUpgrade3` int(11) NOT NULL,
  `factionUpgrade4` int(11) NOT NULL,
  `factionUpgrade5` int(11) NOT NULL,
  `factionUpgrade6` int(11) NOT NULL,
  `factionUpgrade7` int(11) NOT NULL,
  `factionUpgrade8` int(11) NOT NULL,
  `factionUpgrade9` int(11) NOT NULL,
  `factionUpgrade10` int(11) NOT NULL,
  `factionUpgrade11` int(11) NOT NULL,
  `factionUpgrade12` int(11) NOT NULL,
  `factionUpgrade13` int(11) NOT NULL,
  `factionUpgrade14` int(11) NOT NULL,
  `factionUpgrade15` int(11) NOT NULL,
  `factionUpgrade16` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `factions`
--

INSERT INTO `factions` (`factionID`, `factionName`, `factionGroupForum`, `factionColor`, `factionType`, `factionRanks`, `factionLockerX`, `factionLockerY`, `factionLockerZ`, `factionLockerInt`, `factionLockerWorld`, `factionWeapon1`, `factionAmmo1`, `factionWeapon2`, `factionAmmo2`, `factionWeapon3`, `factionAmmo3`, `factionWeapon4`, `factionAmmo4`, `factionWeapon5`, `factionAmmo5`, `factionWeapon6`, `factionAmmo6`, `factionWeapon7`, `factionAmmo7`, `factionWeapon8`, `factionAmmo8`, `factionWeapon9`, `factionAmmo9`, `factionWeapon10`, `factionAmmo10`, `factionRank1`, `factionRank2`, `factionRank3`, `factionRank4`, `factionRank5`, `factionRank6`, `factionRank7`, `factionRank8`, `factionRank9`, `factionRank10`, `factionRank11`, `factionRank12`, `factionRank13`, `factionRank14`, `factionRank15`, `factionSkin1`, `factionSkin2`, `factionSkin3`, `factionSkin4`, `factionSkin5`, `factionSkin6`, `factionSkin7`, `factionSkin8`, `SpawnX`, `SpawnY`, `SpawnZ`, `SpawnInterior`, `SpawnVW`, `factionArge`, `factionMembres`, `factionCredit`, `factionUpgrade0`, `factionUpgrade1`, `factionUpgrade2`, `factionUpgrade3`, `factionUpgrade4`, `factionUpgrade5`, `factionUpgrade6`, `factionUpgrade7`, `factionUpgrade8`, `factionUpgrade9`, `factionUpgrade10`, `factionUpgrade11`, `factionUpgrade12`, `factionUpgrade13`, `factionUpgrade14`, `factionUpgrade15`, `factionUpgrade16`) VALUES
(1, '-', -1, -256, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rank 1', 'Rank 2', 'Rank 3', 'Rank 4', 'Rank 5', 'Rank 6', 'Rank 7', 'Rank 8', 'Rank 9', 'Rank 10', 'Rank 11', 'Rank 12', 'Rank 13', 'Rank 14', 'Rank 15', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(2, 'GANG TEST', -1, -256, 5, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Rank 1', 'Rank 2', 'Rank 3', 'Rank 4', 'Rank 5', 'Rank 6', 'Rank 7', 'Rank 8', 'Rank 9', 'Rank 10', 'Rank 11', 'Rank 12', 'Rank 13', 'Rank 14', 'Rank 15', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `furniture`
--

CREATE TABLE `furniture` (
  `ID` int(12) DEFAULT '0',
  `furnitureID` int(12) NOT NULL,
  `furnitureName` varchar(32) CHARACTER SET latin1 DEFAULT NULL,
  `furnitureModel` int(12) DEFAULT '0',
  `furnitureX` float DEFAULT '0',
  `furnitureY` float DEFAULT '0',
  `furnitureZ` float DEFAULT '0',
  `furnitureRX` float DEFAULT '0',
  `furnitureRY` float DEFAULT '0',
  `furnitureRZ` float DEFAULT '0',
  `furnitureType` int(12) DEFAULT '0',
  `furnitureActive` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `garbage`
--

CREATE TABLE `garbage` (
  `garbageID` int(12) NOT NULL,
  `garbageModel` int(12) DEFAULT '1236',
  `garbageCapacity` int(12) DEFAULT '0',
  `garbageX` float DEFAULT '0',
  `garbageY` float DEFAULT '0',
  `garbageZ` float DEFAULT '0',
  `garbageRX` float DEFAULT '0',
  `garbageRY` float NOT NULL,
  `garbageRZ` float NOT NULL,
  `garbageInterior` int(12) DEFAULT '0',
  `garbageWorld` int(12) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `garbage`
--

INSERT INTO `garbage` (`garbageID`, `garbageModel`, `garbageCapacity`, `garbageX`, `garbageY`, `garbageZ`, `garbageRX`, `garbageRY`, `garbageRZ`, `garbageInterior`, `garbageWorld`) VALUES
(1, 1344, 20, 2037.46, -1740.55, 13.3465, 0, 0, 89.9279, 0, 0),
(2, 1359, 20, 2072.67, -1788.82, 13.1968, 0, 0, 63.6309, 0, 0),
(3, 1359, 20, 2016.45, -1764.82, 13.1736, 0, 0, 7.2305, 0, 0),
(4, 1359, 20, 1981.55, -1746.25, 13.2768, 0, 0, 8.8043, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `gates`
--

CREATE TABLE `gates` (
  `gateID` int(12) NOT NULL,
  `gateHouseID` int(11) NOT NULL,
  `gateModel` int(12) DEFAULT '0',
  `gateSpeed` float DEFAULT '0',
  `gateTime` int(12) DEFAULT '0',
  `gateX` float DEFAULT '0',
  `gateY` float DEFAULT '0',
  `gateZ` float DEFAULT '0',
  `gateRX` float DEFAULT '0',
  `gateRY` float DEFAULT '0',
  `gateRZ` float DEFAULT '0',
  `gateInterior` int(12) DEFAULT '0',
  `gateWorld` int(12) DEFAULT '0',
  `gateMoveX` float DEFAULT '0',
  `gateMoveY` float DEFAULT '0',
  `gateMoveZ` float DEFAULT '0',
  `gateMoveRX` float DEFAULT '0',
  `gateMoveRY` float DEFAULT '0',
  `gateMoveRZ` float DEFAULT '0',
  `gateLinkID` int(12) DEFAULT '0',
  `gateFaction` int(12) DEFAULT '0',
  `gateJob` int(11) NOT NULL,
  `gatePass` varchar(32) CHARACTER SET latin1 DEFAULT NULL,
  `gateRadius` float DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `gates`
--

INSERT INTO `gates` (`gateID`, `gateHouseID`, `gateModel`, `gateSpeed`, `gateTime`, `gateX`, `gateY`, `gateZ`, `gateRX`, `gateRY`, `gateRZ`, `gateInterior`, `gateWorld`, `gateMoveX`, `gateMoveY`, `gateMoveZ`, `gateMoveRX`, `gateMoveRY`, `gateMoveRZ`, `gateLinkID`, `gateFaction`, `gateJob`, `gatePass`, `gateRadius`) VALUES
(1, 0, 1505, 3, 0, 2263.43, -1211.23, 1048.03, 0, 0, 89.9999, 10, 5001, 2262.66, -1210.32, 1049.02, 0, 0, -90, -1, -1, -1, '', 1.7);

-- --------------------------------------------------------

--
-- Structure de la table `gps`
--

CREATE TABLE `gps` (
  `ID` int(12) DEFAULT '0',
  `locationID` int(12) NOT NULL,
  `locationName` varchar(32) CHARACTER SET latin1 DEFAULT NULL,
  `locationX` float DEFAULT '0',
  `locationY` float DEFAULT '0',
  `locationZ` float DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `graffiti`
--

CREATE TABLE `graffiti` (
  `graffitiID` int(12) NOT NULL,
  `graffitiX` float DEFAULT '0',
  `graffitiY` float DEFAULT '0',
  `graffitiZ` float DEFAULT '0',
  `graffitiRX` float DEFAULT '0',
  `graffitiRY` float NOT NULL,
  `graffitiRZ` float NOT NULL,
  `graffitiColor` int(12) DEFAULT '0',
  `graffitiSize` int(11) NOT NULL,
  `graffitiText` varchar(64) CHARACTER SET latin1 DEFAULT NULL,
  `graffitiFont` varchar(64) NOT NULL,
  `graffitiModelID` int(11) NOT NULL,
  `graffitiFaction` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `graffiti`
--

INSERT INTO `graffiti` (`graffitiID`, `graffitiX`, `graffitiY`, `graffitiZ`, `graffitiRX`, `graffitiRY`, `graffitiRZ`, `graffitiColor`, `graffitiSize`, `graffitiText`, `graffitiFont`, `graffitiModelID`, `graffitiFaction`) VALUES
(1, 1987.74, -1742.34, 13.0877, 10.5999, 0, 269.835, -1, 80, 'LSRP v1', 'Levi Brush', -1, 3),
(2, 1991.7, -1737.9, 13.7868, 0, 0, 180.389, -1, 24, 'Aucun', 'Arial', 18667, 3);

-- --------------------------------------------------------

--
-- Structure de la table `gunracks`
--

CREATE TABLE `gunracks` (
  `rackID` int(12) NOT NULL,
  `rackHouse` int(12) DEFAULT '0',
  `rackX` float DEFAULT '0',
  `rackY` float DEFAULT '0',
  `rackZ` float DEFAULT '0',
  `rackA` float DEFAULT '0',
  `rackInterior` int(12) DEFAULT '0',
  `rackWorld` int(12) DEFAULT '0',
  `rackWeapon1` int(12) DEFAULT '0',
  `rackAmmo1` int(12) DEFAULT '0',
  `rackWeapon2` int(12) DEFAULT '0',
  `rackAmmo2` int(12) DEFAULT '0',
  `rackWeapon3` int(12) DEFAULT '0',
  `rackAmmo3` int(12) DEFAULT '0',
  `rackWeapon4` int(12) DEFAULT '0',
  `rackAmmo4` int(12) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `gym`
--

CREATE TABLE `gym` (
  `gymID` int(11) NOT NULL,
  `gymType` int(11) NOT NULL,
  `gymInterior` int(11) NOT NULL,
  `gymWorld` int(11) NOT NULL,
  `gymObjectPos_1_X` float NOT NULL,
  `gymObjectPos_1_Y` float NOT NULL,
  `gymObjectPos_1_Z` float NOT NULL,
  `gymObjectPos_1_RX` float NOT NULL,
  `gymObjectPos_1_RY` float NOT NULL,
  `gymObjectPos_1_RZ` float NOT NULL,
  `gymObjectPos_2_X` float NOT NULL,
  `gymObjectPos_2_Y` float NOT NULL,
  `gymObjectPos_2_Z` float NOT NULL,
  `gymObjectPos_2_RX` float NOT NULL,
  `gymObjectPos_2_RY` float NOT NULL,
  `gymObjectPos_2_RZ` float NOT NULL,
  `gymPlayerPos_X` float NOT NULL,
  `gymPlayerPos_Y` float NOT NULL,
  `gymPlayerPos_Z` float NOT NULL,
  `gymPlayerPos_RX` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `gym`
--

INSERT INTO `gym` (`gymID`, `gymType`, `gymInterior`, `gymWorld`, `gymObjectPos_1_X`, `gymObjectPos_1_Y`, `gymObjectPos_1_Z`, `gymObjectPos_1_RX`, `gymObjectPos_1_RY`, `gymObjectPos_1_RZ`, `gymObjectPos_2_X`, `gymObjectPos_2_Y`, `gymObjectPos_2_Z`, `gymObjectPos_2_RX`, `gymObjectPos_2_RY`, `gymObjectPos_2_RZ`, `gymPlayerPos_X`, `gymPlayerPos_Y`, `gymPlayerPos_Z`, `gymPlayerPos_RX`) VALUES
(1, 1, 0, 0, 1678.91, 1451.15, 48.6015, 232.544, 0, 0, 0, 0, 0, 0, 0, 0, 1678.91, 1451.15, 46.6015, 232.544),
(2, 1, 5, 7002, 772.82, 5.3885, 999.796, 0.6335, 1.1, -91.9999, 0, 0, 0, 0, 0, 0, 773.16, 4.8079, 1000.78, 91.3251),
(3, 2, 5, 7002, 767.894, 9.0805, 999.768, 1.2449, 1.8999, -0.7999, 768.374, 9.7003, 1000.66, 89.445, -87.9, -1.6, 768.294, 8.5488, 1000.71, 359.663),
(4, 3, 5, 7002, 773.256, 13.9724, 999.65, -0.2712, -0.1, -90.4, 0, 0, 0, 0, 0, 0, 772.248, 13.9142, 1000.83, 269.398);

-- --------------------------------------------------------

--
-- Structure de la table `houses`
--

CREATE TABLE `houses` (
  `houseID` int(12) NOT NULL,
  `houseOwner` int(12) DEFAULT '0',
  `housePrice` int(12) DEFAULT '0',
  `houseAddress` varchar(32) CHARACTER SET latin1 DEFAULT NULL,
  `housePosX` float DEFAULT '0',
  `housePosY` float DEFAULT '0',
  `housePosZ` float DEFAULT '0',
  `housePosA` float DEFAULT '0',
  `houseIntX` float DEFAULT '0',
  `houseIntY` float DEFAULT '0',
  `houseIntZ` float DEFAULT '0',
  `houseIntA` float DEFAULT '0',
  `houseInterior` int(12) DEFAULT '0',
  `houseExterior` int(12) DEFAULT '0',
  `houseExteriorVW` int(12) DEFAULT '0',
  `houseLocked` int(4) DEFAULT '0',
  `houseWeapon1` int(12) DEFAULT '0',
  `houseAmmo1` int(12) DEFAULT '0',
  `houseWeapon2` int(12) DEFAULT '0',
  `houseAmmo2` int(12) DEFAULT '0',
  `houseWeapon3` int(12) DEFAULT '0',
  `houseAmmo3` int(12) DEFAULT '0',
  `houseWeapon4` int(12) DEFAULT '0',
  `houseAmmo4` int(12) DEFAULT '0',
  `houseWeapon5` int(12) DEFAULT '0',
  `houseAmmo5` int(12) DEFAULT '0',
  `houseWeapon6` int(12) DEFAULT '0',
  `houseAmmo6` int(12) DEFAULT '0',
  `houseWeapon7` int(12) DEFAULT '0',
  `houseAmmo7` int(12) DEFAULT '0',
  `houseWeapon8` int(12) DEFAULT '0',
  `houseAmmo8` int(12) DEFAULT '0',
  `houseWeapon9` int(12) DEFAULT '0',
  `houseAmmo9` int(12) DEFAULT '0',
  `houseWeapon10` int(12) DEFAULT '0',
  `houseAmmo10` int(12) DEFAULT '0',
  `houseMoney` int(12) DEFAULT '0',
  `houseLocPrice` int(11) NOT NULL DEFAULT '50',
  `houseLocNb` int(11) NOT NULL DEFAULT '0',
  `houseLocStatus` int(2) NOT NULL DEFAULT '1',
  `houseFaction` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `housestorage`
--

CREATE TABLE `housestorage` (
  `ID` int(12) DEFAULT '0',
  `itemID` int(12) NOT NULL,
  `itemName` varchar(32) CHARACTER SET latin1 DEFAULT NULL,
  `itemModel` int(12) DEFAULT '0',
  `itemQuantity` int(12) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `impoundlots`
--

CREATE TABLE `impoundlots` (
  `impoundID` int(12) NOT NULL,
  `impoundLotX` float DEFAULT '0',
  `impoundLotY` float DEFAULT '0',
  `impoundLotZ` float DEFAULT '0',
  `impoundReleaseX` float DEFAULT '0',
  `impoundReleaseY` float DEFAULT '0',
  `impoundReleaseZ` float DEFAULT '0',
  `impoundReleaseInt` int(12) DEFAULT '0',
  `impoundReleaseWorld` int(12) DEFAULT '0',
  `impoundReleaseA` float DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `inventory`
--

CREATE TABLE `inventory` (
  `ID` int(12) DEFAULT '0',
  `invID` int(12) NOT NULL,
  `invItem` varchar(32) CHARACTER SET latin1 DEFAULT NULL,
  `invModel` int(12) DEFAULT '0',
  `invQuantity` int(12) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `inventory`
--

INSERT INTO `inventory` (`ID`, `invID`, `invItem`, `invModel`, `invQuantity`) VALUES
(1, 1, 'Permis d\'arme', 1581, 1),
(1, 12, 'Pied de biche', 18634, 1),
(1, 16, 'Téléphone', 330, 1),
(1, 20, 'Radio', 18868, 1),
(1, 33, 'Caisse à outils', 920, 2),
(1, 35, 'Boombox', 2226, 1),
(1, 36, 'Graines de Marijuana', 1578, 93),
(1, 37, 'Opium', 1578, 9),
(1, 38, 'Steroides', 1578, 9),
(1, 39, 'Marijuana', 1578, 200),
(1, 40, 'Heroine', 1577, 25),
(1, 41, 'GPS', 18875, 1),
(5, 42, 'Marijuana', 1578, 40),
(5, 43, 'Briquet', 19998, 1),
(4, 44, 'Briquet', 19998, 1),
(6, 45, 'Gilet pare balle', 19142, 2),
(6, 46, 'Briquet', 19998, 1),
(1, 47, 'Briquet', 19998, 1),
(4, 48, 'Téléphone', 330, 1),
(5, 49, 'Gilet pare balle', 19142, 4),
(5, 54, 'Permis d\'arme', 1581, 1),
(5, 55, 'Munitions', 2358, 1),
(1, 56, 'Munitions', 2358, 1);

-- --------------------------------------------------------

--
-- Structure de la table `jobs`
--

CREATE TABLE `jobs` (
  `jobID` int(12) NOT NULL,
  `jobPosX` float DEFAULT '0',
  `jobPosY` float DEFAULT '0',
  `jobPosZ` float DEFAULT '0',
  `jobPointX` float DEFAULT '0',
  `jobPointY` float DEFAULT '0',
  `jobPointZ` float DEFAULT '0',
  `jobDeliverX` float DEFAULT '0',
  `jobDeliverY` float DEFAULT '0',
  `jobDeliverZ` float DEFAULT '0',
  `jobInterior` int(12) DEFAULT '0',
  `jobWorld` int(12) DEFAULT '0',
  `jobLock` int(11) NOT NULL,
  `jobType` int(12) DEFAULT '0',
  `jobPointInt` int(12) DEFAULT '0',
  `jobPointWorld` int(12) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `jobs`
--

INSERT INTO `jobs` (`jobID`, `jobPosX`, `jobPosY`, `jobPosZ`, `jobPointX`, `jobPointY`, `jobPointZ`, `jobDeliverX`, `jobDeliverY`, `jobDeliverZ`, `jobInterior`, `jobWorld`, `jobLock`, `jobType`, `jobPointInt`, `jobPointWorld`) VALUES
(1, 1682.36, 1447, 46.6015, 0, 0, 0, 0, 0, 0, 0, 0, 0, 11, 0, 0),
(2, 1751.21, -2056.08, 13.8667, 1769.81, -2048.65, 13.5602, 0, 0, 0, 0, 0, 0, 1, 0, 0),
(3, 2461.29, -2113.69, 26.7077, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 0),
(4, 2464.59, -2116.24, 26.9079, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3, 0, 0),
(5, 2179.15, -2262.44, 14.7734, 2183.92, -2258.12, 13.3866, 2181.8, -2260.01, 13.3846, 0, 0, 0, 4, 0, 0),
(6, 372.918, -65.4543, 1001.51, 2114.7, -1790.44, 13.5545, 0, 0, 0, 10, 6004, 0, 5, 0, 0),
(7, 2444.67, -2120.06, 13.5468, 2179.93, -1980.69, 13.5518, 0, 0, 0, 0, 0, 0, 6, 0, 0),
(8, 2469.24, -2108.33, 26.2877, 0, 0, 0, 0, 0, 0, 0, 0, 0, 7, 0, 0),
(9, 2471.2, -2112.19, 26.5899, 0, 0, 0, 0, 0, 0, 0, 0, 0, 8, 0, 0),
(10, 372.747, -66.641, 1001.52, 0, 0, 0, 0, 0, 0, 10, 6003, 0, 3, 0, 0),
(11, 372.88, -68.3105, 1001.52, 0, 0, 0, 0, 0, 0, 10, 6003, 0, 2, 0, 0),
(12, 378.436, -71.6145, 1001.52, 0, 0, 0, 0, 0, 0, 10, 6003, 0, 4, 0, 0),
(13, 378.211, -74.1756, 1001.51, 0, 0, 0, 0, 0, 0, 10, 6003, 0, 5, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `local`
--

CREATE TABLE `local` (
  `localID` int(12) NOT NULL,
  `localOwner` int(12) DEFAULT '0',
  `localPrice` int(12) DEFAULT '0',
  `localAddress` varchar(32) CHARACTER SET latin1 DEFAULT NULL,
  `localPosX` float DEFAULT '0',
  `localPosY` float DEFAULT '0',
  `localPosZ` float DEFAULT '0',
  `localPosA` float DEFAULT '0',
  `localIntX` float DEFAULT '0',
  `localIntY` float DEFAULT '0',
  `localIntZ` float DEFAULT '0',
  `localIntA` float DEFAULT '0',
  `localInterior` int(12) DEFAULT '0',
  `localExterior` int(12) DEFAULT '0',
  `localExteriorVW` int(12) DEFAULT '0',
  `localLocked` int(4) DEFAULT '0',
  `localWeapon1` int(12) DEFAULT '0',
  `localAmmo1` int(12) DEFAULT '0',
  `localWeapon2` int(12) DEFAULT '0',
  `localAmmo2` int(12) DEFAULT '0',
  `localWeapon3` int(12) DEFAULT '0',
  `localAmmo3` int(12) DEFAULT '0',
  `localWeapon4` int(12) DEFAULT '0',
  `localAmmo4` int(12) DEFAULT '0',
  `localWeapon5` int(12) DEFAULT '0',
  `localAmmo5` int(12) DEFAULT '0',
  `localWeapon6` int(12) DEFAULT '0',
  `localAmmo6` int(12) DEFAULT '0',
  `localWeapon7` int(12) DEFAULT '0',
  `localAmmo7` int(12) DEFAULT '0',
  `localWeapon8` int(12) DEFAULT '0',
  `localAmmo8` int(12) DEFAULT '0',
  `localWeapon9` int(12) DEFAULT '0',
  `localAmmo9` int(12) DEFAULT '0',
  `localWeapon10` int(12) DEFAULT '0',
  `localAmmo10` int(12) DEFAULT '0',
  `localMoney` int(12) DEFAULT '0',
  `localLocPrice` int(11) NOT NULL DEFAULT '50',
  `localLocNb` int(11) NOT NULL DEFAULT '0',
  `localLocStatus` int(2) NOT NULL DEFAULT '1',
  `localFaction` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `logs_shop`
--

CREATE TABLE `logs_shop` (
  `ID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `Description` varchar(500) NOT NULL,
  `Date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `namechanges`
--

CREATE TABLE `namechanges` (
  `ID` int(12) NOT NULL,
  `OldName` varchar(24) CHARACTER SET latin1 DEFAULT NULL,
  `NewName` varchar(24) CHARACTER SET latin1 DEFAULT NULL,
  `Date` varchar(36) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `pickups`
--

CREATE TABLE `pickups` (
  `pickupID` int(11) NOT NULL,
  `pickupX` float NOT NULL,
  `pickupY` float NOT NULL,
  `pickupZ` float NOT NULL,
  `pickupRange` float NOT NULL,
  `pickupText` varchar(500) NOT NULL,
  `pickupIcon` int(11) NOT NULL,
  `pickupInterior` int(11) NOT NULL,
  `pickupWorld` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `plants`
--

CREATE TABLE `plants` (
  `plantID` int(12) NOT NULL,
  `plantType` int(12) DEFAULT '0',
  `plantDrugs` int(12) DEFAULT '0',
  `plantX` float DEFAULT '0',
  `plantY` float DEFAULT '0',
  `plantZ` float DEFAULT '0',
  `plantA` float DEFAULT '0',
  `plantInterior` int(12) DEFAULT '0',
  `plantWorld` int(12) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `plants`
--

INSERT INTO `plants` (`plantID`, `plantType`, `plantDrugs`, `plantX`, `plantY`, `plantZ`, `plantA`, `plantInterior`, `plantWorld`) VALUES
(8, 1, 40, 133.843, -1885.02, 3002.45, 350.334, 4, 6001);

-- --------------------------------------------------------

--
-- Structure de la table `pumps`
--

CREATE TABLE `pumps` (
  `ID` int(12) DEFAULT '0',
  `pumpID` int(12) NOT NULL,
  `pumpPosX` float DEFAULT '0',
  `pumpPosY` float DEFAULT '0',
  `pumpPosZ` float DEFAULT '0',
  `pumpPosA` float DEFAULT '0',
  `pumpFuel` int(12) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `registerquestion`
--

CREATE TABLE `registerquestion` (
  `ID` int(11) NOT NULL,
  `Question` varchar(250) NOT NULL,
  `Answ1` varchar(250) NOT NULL,
  `Answ2` varchar(250) NOT NULL,
  `Answ3` varchar(250) NOT NULL,
  `Correction` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `registerquestion`
--

INSERT INTO `registerquestion` (`ID`, `Question`, `Answ1`, `Answ2`, `Answ3`, `Correction`) VALUES
(1, 'Q1', 'REPONSE 1', 'REPONSE 2', 'REPONSE 3', 1),
(2, 'Q2', 'REPONSE 1', 'REPONSE 2', 'REPONSE 3', 1),
(3, 'Q3', 'REPONSE 1', 'REPONSE 2', 'REPONSE 3', 1),
(4, 'Q4', 'REPONSE 1', 'REPONSE 2', 'REPONSE 3', 1),
(5, 'Q5', 'REPONSE 1', 'REPONSE 2', 'REPONSE 3', 1),
(6, 'Q6', 'REPONSE 1', 'REPONSE 2', 'REPONSE 3', 1),
(7, 'Q7', 'REPONSE 1', 'REPONSE 2', 'REPONSE 3', 1),
(8, 'Q8', 'REPONSE 1', 'REPONSE 2', 'REPONSE 3', 1),
(9, 'Q9', 'REPONSE 1', 'REPONSE 2', 'REPONSE 3', 1),
(10, 'Q10', 'REPONSE 1', 'REPONSE 2', 'REPONSE 3', 1),
(11, 'Q11', 'REPONSE 1', 'REPONSE 2', 'REPONSE 3', 1),
(12, 'Q12', 'REPONSE 1', 'REPONSE 2', 'REPONSE 3', 1),
(13, 'Q13', 'REPONSE 1', 'REPONSE 2', 'REPONSE 3', 1),
(14, 'Q14', 'REPONSE 1', 'REPONSE 2', 'REPONSE 3', 1),
(15, 'Q15', 'REPONSE 1', 'REPONSE 2', 'REPONSE 3', 1),
(16, 'Q16', 'REPONSE 1', 'REPONSE 2', 'REPONSE 3', 1),
(17, 'Q17', 'REPONSE 1', 'REPONSE 2', 'REPONSE 3', 1),
(18, 'Q18', 'REPONSE 1', 'REPONSE 2', 'REPONSE 3', 1),
(19, 'Q19', 'REPONSE 1', 'REPONSE 2', 'REPONSE 3', 1),
(20, 'Q20', 'REPONSE 1', 'REPONSE 2', 'REPONSE 3', 1),
(21, 'Q21', 'REPONSE 1', 'REPONSE 2', 'REPONSE 3', 1),
(22, 'Q22', 'REPONSE 1', 'REPONSE 2', 'REPONSE 3', 1),
(23, 'Q23', 'REPONSE 1', 'REPONSE 2', 'REPONSE 3', 1),
(24, 'Q24', 'REPONSE 1', 'REPONSE 2', 'REPONSE 3', 1),
(25, 'Q25', 'REPONSE 1', 'REPONSE 2', 'REPONSE 3', 1),
(26, 'Q26', 'REPONSE 1', 'REPONSE 2', 'REPONSE 3', 1),
(27, 'Q27', 'REPONSE 1', 'REPONSE 2', 'REPONSE 3', 1),
(28, 'Q28', 'REPONSE 1', 'REPONSE 2', 'REPONSE 3', 1),
(29, 'Q29', 'REPONSE 1', 'REPONSE 2', 'REPONSE 3', 1),
(30, 'Q30', 'REPONSE 1', 'REPONSE 2', 'REPONSE 3', 1),
(31, 'Q31', 'REPONSE 1', 'REPONSE 2', 'REPONSE 3', 1),
(32, 'Q32', 'REPONSE 1', 'REPONSE 2', 'REPONSE 3', 1);

-- --------------------------------------------------------

--
-- Structure de la table `sign`
--

CREATE TABLE `sign` (
  `signID` int(11) NOT NULL,
  `signModel` int(11) NOT NULL,
  `signX` float NOT NULL,
  `signY` float NOT NULL,
  `signZ` float NOT NULL,
  `signRX` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `speedcameras`
--

CREATE TABLE `speedcameras` (
  `speedID` int(12) NOT NULL,
  `speedRange` float DEFAULT '0',
  `speedLimit` float DEFAULT '0',
  `speedX` float DEFAULT '0',
  `speedY` float DEFAULT '0',
  `speedZ` float DEFAULT '0',
  `speedRX` float DEFAULT '0',
  `SpeedRZ` float NOT NULL,
  `SpeedRY` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `teleportations`
--

CREATE TABLE `teleportations` (
  `ID` int(11) NOT NULL,
  `Name` varchar(60) NOT NULL,
  `PosX` float NOT NULL,
  `PosY` float NOT NULL,
  `PosZ` float NOT NULL,
  `Interior` int(11) NOT NULL,
  `VirtualWorld` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `teleportations`
--

INSERT INTO `teleportations` (`ID`, `Name`, `PosX`, `PosY`, `PosZ`, `Interior`, `VirtualWorld`) VALUES
(1, 'Pizzeria | Idlewood', 2099.93, -1759.41, 13.561, 0, 0),
(2, 'Blocc Ruines | Idlewood', 2051.18, -1603.66, 13.547, 0, 0),
(3, 'Gymnase | Ganton', 2224.85, -1724.7, 13.563, 0, 0),
(4, 'Station Essence | Idlewood', 1980.79, -1758.36, 13.547, 0, 0),
(5, 'Gare | Unity Station', 1835.55, -1847.22, 17.078, 0, 0),
(6, 'Blocc El Corona', 1843.41, -2039.61, 13.547, 0, 0),
(7, 'Aéroport | LS', 1637.89, -2312.54, 13.559, 0, 0),
(8, 'Commissariat | Pershing Square', 1521.6, -1680.53, 13.547, 0, 0),
(9, 'Fourrière | LSPD', 1626.05, -1834.03, 13.537, 0, 0),
(10, 'JOB - LIVREUR', 1775.69, -2057.64, 13.592, 0, 0),
(12, 'Point de surveillance LSPD', 1557.9, -1689.53, 2723.11, 0, 0),
(13, 'INT MAJIHOUSE | STEVEN', 139.329, -1892.5, 3001.57, 4, 6001);

-- --------------------------------------------------------

--
-- Structure de la table `tickets`
--

CREATE TABLE `tickets` (
  `ID` int(12) DEFAULT '0',
  `ticketID` int(12) NOT NULL,
  `ticketFee` int(12) DEFAULT '0',
  `ticketBy` varchar(24) CHARACTER SET latin1 DEFAULT NULL,
  `ticketDate` varchar(36) CHARACTER SET latin1 DEFAULT NULL,
  `ticketReason` varchar(32) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `vendors`
--

CREATE TABLE `vendors` (
  `vendorID` int(12) NOT NULL,
  `vendorType` int(12) DEFAULT '0',
  `vendorX` float DEFAULT '0',
  `vendorY` float DEFAULT '0',
  `vendorZ` float DEFAULT '0',
  `vendorRX` float DEFAULT '0',
  `vendorRY` float NOT NULL,
  `vendorRZ` float NOT NULL,
  `vendorInterior` int(12) DEFAULT '0',
  `vendorWorld` int(12) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `vendors`
--

INSERT INTO `vendors` (`vendorID`, `vendorType`, `vendorX`, `vendorY`, `vendorZ`, `vendorRX`, `vendorRY`, `vendorRZ`, `vendorInterior`, `vendorWorld`) VALUES
(1, 4, 2046.34, -1758.45, 13.5468, 0, 0, 103.795, 0, 0),
(2, 3, 2046.91, -1759.57, 13.5468, 0, 0, 193.795, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `warrants`
--

CREATE TABLE `warrants` (
  `ID` int(12) NOT NULL,
  `Suspect` varchar(24) CHARACTER SET latin1 DEFAULT NULL,
  `Username` varchar(24) CHARACTER SET latin1 DEFAULT NULL,
  `Date` varchar(36) CHARACTER SET latin1 DEFAULT NULL,
  `Description` varchar(128) CHARACTER SET latin1 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`actorID`);

--
-- Index pour la table `arrestpoints`
--
ALTER TABLE `arrestpoints`
  ADD PRIMARY KEY (`arrestID`);

--
-- Index pour la table `atm`
--
ALTER TABLE `atm`
  ADD PRIMARY KEY (`atmID`);

--
-- Index pour la table `backpackitems`
--
ALTER TABLE `backpackitems`
  ADD PRIMARY KEY (`itemID`);

--
-- Index pour la table `backpacks`
--
ALTER TABLE `backpacks`
  ADD PRIMARY KEY (`backpackID`);

--
-- Index pour la table `billboards`
--
ALTER TABLE `billboards`
  ADD PRIMARY KEY (`bbID`);

--
-- Index pour la table `blacklist`
--
ALTER TABLE `blacklist`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `businesses`
--
ALTER TABLE `businesses`
  ADD PRIMARY KEY (`bizID`);

--
-- Index pour la table `cabine`
--
ALTER TABLE `cabine`
  ADD PRIMARY KEY (`cabineID`);

--
-- Index pour la table `camera`
--
ALTER TABLE `camera`
  ADD PRIMARY KEY (`cameraID`);

--
-- Index pour la table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`carID`);

--
-- Index pour la table `carstorage`
--
ALTER TABLE `carstorage`
  ADD PRIMARY KEY (`itemID`);

--
-- Index pour la table `characters`
--
ALTER TABLE `characters`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`contactID`);

--
-- Index pour la table `crates`
--
ALTER TABLE `crates`
  ADD PRIMARY KEY (`crateID`);

--
-- Index pour la table `dealers`
--
ALTER TABLE `dealers`
  ADD PRIMARY KEY (`dealerID`);

--
-- Index pour la table `dealervehicles`
--
ALTER TABLE `dealervehicles`
  ADD PRIMARY KEY (`vehID`);

--
-- Index pour la table `detectors`
--
ALTER TABLE `detectors`
  ADD PRIMARY KEY (`detectorID`);

--
-- Index pour la table `dropped`
--
ALTER TABLE `dropped`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `entrances`
--
ALTER TABLE `entrances`
  ADD PRIMARY KEY (`entranceID`);

--
-- Index pour la table `factions`
--
ALTER TABLE `factions`
  ADD PRIMARY KEY (`factionID`);

--
-- Index pour la table `furniture`
--
ALTER TABLE `furniture`
  ADD PRIMARY KEY (`furnitureID`);

--
-- Index pour la table `garbage`
--
ALTER TABLE `garbage`
  ADD PRIMARY KEY (`garbageID`);

--
-- Index pour la table `gates`
--
ALTER TABLE `gates`
  ADD PRIMARY KEY (`gateID`);

--
-- Index pour la table `gps`
--
ALTER TABLE `gps`
  ADD PRIMARY KEY (`locationID`);

--
-- Index pour la table `graffiti`
--
ALTER TABLE `graffiti`
  ADD PRIMARY KEY (`graffitiID`);

--
-- Index pour la table `gunracks`
--
ALTER TABLE `gunracks`
  ADD PRIMARY KEY (`rackID`);

--
-- Index pour la table `gym`
--
ALTER TABLE `gym`
  ADD PRIMARY KEY (`gymID`);

--
-- Index pour la table `houses`
--
ALTER TABLE `houses`
  ADD PRIMARY KEY (`houseID`);

--
-- Index pour la table `housestorage`
--
ALTER TABLE `housestorage`
  ADD PRIMARY KEY (`itemID`);

--
-- Index pour la table `impoundlots`
--
ALTER TABLE `impoundlots`
  ADD PRIMARY KEY (`impoundID`);

--
-- Index pour la table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`invID`);

--
-- Index pour la table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`jobID`);

--
-- Index pour la table `local`
--
ALTER TABLE `local`
  ADD PRIMARY KEY (`localID`);

--
-- Index pour la table `logs_shop`
--
ALTER TABLE `logs_shop`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `namechanges`
--
ALTER TABLE `namechanges`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `pickups`
--
ALTER TABLE `pickups`
  ADD PRIMARY KEY (`pickupID`);

--
-- Index pour la table `plants`
--
ALTER TABLE `plants`
  ADD PRIMARY KEY (`plantID`);

--
-- Index pour la table `pumps`
--
ALTER TABLE `pumps`
  ADD PRIMARY KEY (`pumpID`);

--
-- Index pour la table `registerquestion`
--
ALTER TABLE `registerquestion`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `sign`
--
ALTER TABLE `sign`
  ADD PRIMARY KEY (`signID`);

--
-- Index pour la table `speedcameras`
--
ALTER TABLE `speedcameras`
  ADD PRIMARY KEY (`speedID`);

--
-- Index pour la table `teleportations`
--
ALTER TABLE `teleportations`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`ticketID`);

--
-- Index pour la table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`vendorID`);

--
-- Index pour la table `warrants`
--
ALTER TABLE `warrants`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `actors`
--
ALTER TABLE `actors`
  MODIFY `actorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `arrestpoints`
--
ALTER TABLE `arrestpoints`
  MODIFY `arrestID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `atm`
--
ALTER TABLE `atm`
  MODIFY `atmID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `backpackitems`
--
ALTER TABLE `backpackitems`
  MODIFY `itemID` int(12) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `backpacks`
--
ALTER TABLE `backpacks`
  MODIFY `backpackID` int(12) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `billboards`
--
ALTER TABLE `billboards`
  MODIFY `bbID` int(12) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `blacklist`
--
ALTER TABLE `blacklist`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `businesses`
--
ALTER TABLE `businesses`
  MODIFY `bizID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `cabine`
--
ALTER TABLE `cabine`
  MODIFY `cabineID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `camera`
--
ALTER TABLE `camera`
  MODIFY `cameraID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `cars`
--
ALTER TABLE `cars`
  MODIFY `carID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT pour la table `carstorage`
--
ALTER TABLE `carstorage`
  MODIFY `itemID` int(12) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `characters`
--
ALTER TABLE `characters`
  MODIFY `ID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `contactID` int(12) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `crates`
--
ALTER TABLE `crates`
  MODIFY `crateID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `dealers`
--
ALTER TABLE `dealers`
  MODIFY `dealerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `dealervehicles`
--
ALTER TABLE `dealervehicles`
  MODIFY `vehID` int(12) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `detectors`
--
ALTER TABLE `detectors`
  MODIFY `detectorID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `dropped`
--
ALTER TABLE `dropped`
  MODIFY `ID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT pour la table `entrances`
--
ALTER TABLE `entrances`
  MODIFY `entranceID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `factions`
--
ALTER TABLE `factions`
  MODIFY `factionID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `furniture`
--
ALTER TABLE `furniture`
  MODIFY `furnitureID` int(12) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `garbage`
--
ALTER TABLE `garbage`
  MODIFY `garbageID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `gates`
--
ALTER TABLE `gates`
  MODIFY `gateID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT pour la table `gps`
--
ALTER TABLE `gps`
  MODIFY `locationID` int(12) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `graffiti`
--
ALTER TABLE `graffiti`
  MODIFY `graffitiID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `gunracks`
--
ALTER TABLE `gunracks`
  MODIFY `rackID` int(12) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `gym`
--
ALTER TABLE `gym`
  MODIFY `gymID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `houses`
--
ALTER TABLE `houses`
  MODIFY `houseID` int(12) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `housestorage`
--
ALTER TABLE `housestorage`
  MODIFY `itemID` int(12) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `impoundlots`
--
ALTER TABLE `impoundlots`
  MODIFY `impoundID` int(12) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `invID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT pour la table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `jobID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT pour la table `local`
--
ALTER TABLE `local`
  MODIFY `localID` int(12) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `logs_shop`
--
ALTER TABLE `logs_shop`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `namechanges`
--
ALTER TABLE `namechanges`
  MODIFY `ID` int(12) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `pickups`
--
ALTER TABLE `pickups`
  MODIFY `pickupID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `plants`
--
ALTER TABLE `plants`
  MODIFY `plantID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `pumps`
--
ALTER TABLE `pumps`
  MODIFY `pumpID` int(12) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `registerquestion`
--
ALTER TABLE `registerquestion`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- AUTO_INCREMENT pour la table `sign`
--
ALTER TABLE `sign`
  MODIFY `signID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `speedcameras`
--
ALTER TABLE `speedcameras`
  MODIFY `speedID` int(12) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `teleportations`
--
ALTER TABLE `teleportations`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT pour la table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `ticketID` int(12) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `vendorID` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `warrants`
--
ALTER TABLE `warrants`
  MODIFY `ID` int(12) NOT NULL AUTO_INCREMENT;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
